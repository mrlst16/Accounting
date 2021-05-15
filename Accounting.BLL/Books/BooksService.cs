using Accounting.BLL.Interface.Books;
using Accounting.Models.Base;
using Accounting.Models.Books;
using System.Threading.Tasks;

namespace Accounting.BLL.Books
{
    public class BooksService : IBooksService
    {
        private readonly IBooksLoader _loader;

        public BooksService(
            IBooksLoader loader
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
