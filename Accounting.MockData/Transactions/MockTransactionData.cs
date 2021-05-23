using Accounting.Models.Transactions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accounting.MockData.Transactions
{
    public static class MockTransactionData
    {

        /// <summary>
        /// Creates a new list of transactions, eith credit or debit
        /// Will use a new guid every time for credit id
        /// No Description is provided
        /// </summary>
        /// <param name="account">The account numbers/param>
        /// <param name="amounts">Amounts to create credits for</param>
        /// <returns></returns>
        public static List<T> TransactionsForAccount<T>(Guid account, params decimal[] amounts)
            where T : TransactionBase, new()
        {
            List<T> result = new List<T>();
            foreach (var amt in amounts)
            {
                var tx = new T()
                {
                    AccountID = account,
                    ID = Guid.NewGuid(),
                    Amount = amt
                };
            }
            return result;
        }
    }
}
