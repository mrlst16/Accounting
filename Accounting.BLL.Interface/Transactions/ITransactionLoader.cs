using Accounting.Models.Transactions;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Transactions
{
    public interface ITransactionLoader
    {
        Task RecordDebit(Debit debit);
        Task RecordDebits(IEnumerable<Debit> debits);
        Task RecordCredit(Credit credit);
        Task RecordCredits(IEnumerable<Credit> credits);
    }
}
