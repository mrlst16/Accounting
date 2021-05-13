using Accounting.Models.Transactions;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Transactions
{
    public interface ITransactionLoader
    {
        Task RecordDebit(Debit debit);
        Task RecordCredit(Credit credit);
    }
}
