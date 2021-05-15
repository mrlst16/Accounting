using Accounting.Models.Base;
using Accounting.Models.Books;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Books
{
    public interface IBooksService
    {
        Task PostAsset(Asset asset);
        Task PostLiability(Liability liability);
        Task PostEquity(Equity equity);
    }
}
