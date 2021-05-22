using Accounting.BLL.Interface.Reporting;
using Accounting.Models.Accounts;
using Accounting.Models.DTO;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Accounting.BLL.Reporting
{
    public class ReportsLoader : IReportsLoader
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;

        public ReportsLoader(
            ICrudRepositoryFactory crudRepositoryFactory
            )
        {
            _crudRepositoryFactory = crudRepositoryFactory;
        }

        public async Task<(IEnumerable<Asset>, IEnumerable<Liability>, IEnumerable<Equity>)> GetAccounts(GetReportRequest request)
        {
            var creditsRepository = _crudRepositoryFactory.Get<Credit>();
            var debitsRepository = _crudRepositoryFactory.Get<Debit>();
            var getAssetsTask = GetAccountsWithDebitsAndCredits<Asset>(request, creditsRepository, debitsRepository);
            var getLiabilitiesTask = GetAccountsWithDebitsAndCredits<Liability>(request, creditsRepository, debitsRepository);
            var getEquitiesTask = GetAccountsWithDebitsAndCredits<Equity>(request, creditsRepository, debitsRepository);

            return (getAssetsTask.Result, getLiabilitiesTask.Result, getEquitiesTask.Result);
        }

        public async Task<IEnumerable<Asset>> GetAssets(GetReportRequest request)
        {
            IEnumerable<Asset> result = await _crudRepositoryFactory
                .Get<Asset>()
                .Read(x => x.CompanyID == x.ID);
            var creditsRepository = _crudRepositoryFactory.Get<Credit>();
            var debitsRepository = _crudRepositoryFactory.Get<Debit>();
            return await GetAccountsWithDebitsAndCredits<Asset>(request, creditsRepository, debitsRepository);
        }

        public async Task<IEnumerable<Liability>> GetLiabilities(GetReportRequest request)
        {
            IEnumerable<Liability> result = await _crudRepositoryFactory
                .Get<Liability>()
                .Read(x => x.CompanyID == x.ID);

            var creditsRepository = _crudRepositoryFactory.Get<Credit>();
            var debitsRepository = _crudRepositoryFactory.Get<Debit>();
            return await GetAccountsWithDebitsAndCredits<Liability>(request, creditsRepository, debitsRepository);
        }

        public async Task<IEnumerable<Equity>> GetEquities(GetReportRequest request)
        {
            IEnumerable<Equity> result = await _crudRepositoryFactory
                .Get<Equity>()
                .Read(x => x.CompanyID == x.ID);

            var creditsRepository = _crudRepositoryFactory.Get<Credit>();
            var debitsRepository = _crudRepositoryFactory.Get<Debit>();
            return await GetAccountsWithDebitsAndCredits<Equity>(request, creditsRepository, debitsRepository);
        }

        private async Task<IEnumerable<T>> GetAccountsWithDebitsAndCredits<T>(
            GetReportRequest request,
            ICrudRepository<Credit> creditsRepository,
            ICrudRepository<Debit> debitsReporsitory)
            where T : AccountBase
        {
            IEnumerable<T> result = await _crudRepositoryFactory
                .Get<T>()
                .Read(x => x.CompanyID == x.ID);
            var accountNumbers = result.Select(x => x.ID);

            Parallel.ForEach(result, async (x) =>
            {
                x.Credits = await creditsRepository.Read(y => PullTransaction<Credit>(y, accountNumbers, request.StartDate, request.EndDate));
                x.Debits = await debitsReporsitory.Read(y => PullTransaction<Debit>(y, accountNumbers, request.StartDate, request.EndDate));
            });
            return result;
        }

        private bool PullTransaction<T>(T t, IEnumerable<Guid> accountIds, DateTime start, DateTime end)
            where T : TransactionBase
            => accountIds.Contains(t.AccountID)
                && t.CreateDate >= start && t.CreateDate <= end;
    }
}