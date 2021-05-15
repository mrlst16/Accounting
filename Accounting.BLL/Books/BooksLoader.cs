using Accounting.BLL.Interface.Books;
using Accounting.Models.Base;
using Accounting.Models.Books;
using CommonCore.Interfaces.Repository;
using System.Threading.Tasks;

namespace Accounting.BLL.Books
{
    public class BooksLoader : IBooksLoader
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;

        public BooksLoader(
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
