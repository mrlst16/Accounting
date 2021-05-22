using Accounting.Models.Transactions;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Transactions
{
    public interface ITransactionService
    {
        Task RecordDebit(Debit debit);
        Task RecordCredit(Credit credit);
        Task RecordTransactionsCsv(string csv);
    }
}
