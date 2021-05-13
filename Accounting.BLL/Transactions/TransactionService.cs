using Accounting.BLL.Interface.Transactions;
using Accounting.Models.Transactions;
using System.Threading.Tasks;

namespace Accounting.BLL.Transactions
{
    public class TransactionService : ITransactionService
    {
        private readonly ITransactionLoader _loader;

        public TransactionService(
            ITransactionLoader loader
            )
        {
            _loader = loader;
        }

        public async Task RecordCredit(Credit credit)
            => await _loader.RecordCredit(credit);

        public async Task RecordDebit(Debit debit)
            => await _loader.RecordDebit(debit);
    }
}