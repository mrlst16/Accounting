using Accounting.BLL.Interface.Reporting;
using Accounting.Models.Accounts;
using Accounting.Models.DTO;
using CommonCore.Interfaces.Repository;
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
            var getAssetsTask = GetAssets(request);
            var getLiabilitiesTask = GetLiabilities(request);
            var getEquitiesTask = GetEquities(request);

            return (getAssetsTask.Result, getLiabilitiesTask.Result, getEquitiesTask.Result);
        }

        public async Task<IEnumerable<Asset>> GetAssets(GetReportRequest request)
        {
            IEnumerable<Asset> result = await _crudRepositoryFactory
                .Get<Asset>()
                .Read(x => x.CompanyID == x.ID);
            Parallel.ForEach(result, (x) =>
            {
                x.Credits = x.Credits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
                x.Debits = x.Debits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
            });
            return result;
        }

        public async Task<IEnumerable<Liability>> GetLiabilities(GetReportRequest request)
        {
            IEnumerable<Liability> result = await _crudRepositoryFactory
                .Get<Liability>()
                .Read(x => x.CompanyID == x.ID);
            Parallel.ForEach(result, (x) =>
            {
                x.Credits = x.Credits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
                x.Debits = x.Debits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
            });
            return result;
        }

        public async Task<IEnumerable<Equity>> GetEquities(GetReportRequest request)
        {
            IEnumerable<Equity> result = await _crudRepositoryFactory
                .Get<Equity>()
                .Read(x => x.CompanyID == x.ID);
            Parallel.ForEach(result, (x) =>
            {
                x.Credits = x.Credits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
                x.Debits = x.Debits.Where(y => y.CreateDate >= request.StartDate && y.CreateDate <= request.EndDate);
            });
            return result;
        }
    }
}