using Accounting.BLL.Interface.Transactions;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using System.Threading.Tasks;

namespace Accounting.BLL.Transactions
{
    public class TransactionLoader : ITransactionLoader
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;

        public TransactionLoader(
            ICrudRepositoryFactory crudRepositoryFactory
            )
        {
            _crudRepositoryFactory = crudRepositoryFactory;
        }

        public async Task RecordCredit(Credit credit)
            => await _crudRepositoryFactory.Get<Credit>()
                .Create(credit);

        public async Task RecordDebit(Debit debit)
            => await _crudRepositoryFactory.Get<Debit>()
                .Create(debit);
    }
}
