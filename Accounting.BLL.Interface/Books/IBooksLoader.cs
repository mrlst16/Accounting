using Accounting.Models.Base;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Books
{
    public interface IBooksLoader
    {
        Task PostAsset(Asset asset);
        Task PostLiability(Liability liability);
        Task PostEquity(Equity equity);
    }
}
