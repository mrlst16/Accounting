using Accounting.Models.Transactions;
using System;
using System.Collections.Generic;

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
        /// <returns>createDate</returns>
        public static List<T> TransactionsForAccount<T>(Guid account, DateTime createDate, params decimal[] amounts)
            where T : TransactionBase, new()
        {
            List<T> result = new List<T>();
            foreach (var amt in amounts)
            {
                var tx = new T()
                {
                    AccountID = account,
                    ID = Guid.NewGuid(),
                    Amount = amt,
                    CreateDate = createDate
                };
                result.Add(tx);
            }
            return result;
        }

        public static List<T> TransactionsForAccount<T>(
            Guid account,
            DateTime start,
            DateTime end,
            TimeSpan increment,
            decimal amount
            )
            where T : TransactionBase, new()
        {
            List<T> result = new List<T>();
            var date = start;
            while (date <= end)
            {
                var tx = new T()
                {
                    AccountID = account,
                    ID = Guid.NewGuid(),
                    Amount = amount,
                    CreateDate = date
                };
                result.Add(tx);
                date += increment;
            }
            return result;
        }
    }
}
