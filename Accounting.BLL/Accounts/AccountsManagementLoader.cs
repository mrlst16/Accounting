using Accounting.BLL.Interface.Accounts;
using Accounting.Models.Accounts;
using CommonCore.Interfaces.Repository;
using System.Threading.Tasks;

namespace Accounting.BLL.Accounts
{
    public class AccountsManagementLoader : IAccountsManagementLoader
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;

        public AccountsManagementLoader(
            ICrudRepositoryFactory crudRepositoryFactory
            )
        {
            _crudRepositoryFactory = crudRepositoryFactory;
        }

        public async Task PostAsset(Asset asset)
           => await _crudRepositoryFactory.Get<Asset>()
                .Create(asset);

        public async Task PostEquity(Equity equity)
            => await _crudRepositoryFactory.Get<Equity>()
                .Create(equity);

        public async Task PostLiability(Liability liability)
            => await _crudRepositoryFactory.Get<Liability>()
                .Create(liability);
    }
}
