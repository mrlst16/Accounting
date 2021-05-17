using Accounting.BLL.Interface.Accounts;
using Accounting.Models.Accounts;
using System.Threading.Tasks;

namespace Accounting.BLL.Accounts
{
    public class AccountsManagementService : IAccountsManagementService
    {
        private readonly IAccountsManagementLoader _loader;

        public AccountsManagementService(
            IAccountsManagementLoader loader
            )
        {
            _loader = loader;
        }

        public async Task PostAsset(Asset asset)
            => await _loader.PostAsset(asset);

        public async Task PostEquity(Equity equity)
            => await _loader.PostEquity(equity);

        public async Task PostLiability(Liability liability)
            => await _loader.PostLiability(liability);
    }
}
