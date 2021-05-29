using Accounting.BLL.Transactions;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using NSubstitute;

namespace Accounting.BLL.Tests.Transactions
{
    public class TransactionLoaderTests
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;
        private readonly ICrudRepository<Credit> _creditsRepo;
        private readonly ICrudRepository<Debit> _debitsRepo;

        private readonly TransactionLoader _loder;

        public TransactionLoaderTests()
        {
            _crudRepositoryFactory = Substitute.For<ICrudRepositoryFactory>();
        }
    }
}
