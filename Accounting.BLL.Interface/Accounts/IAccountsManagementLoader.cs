using Accounting.Models.Accounts;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Accounts
{
    public interface IAccountsManagementLoader
    {
        Task PostAsset(Asset asset);
        Task PostLiability(Liability liability);
        Task PostEquity(Equity equity);
    }
}
