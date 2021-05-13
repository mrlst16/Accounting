using System;

namespace Accounting.Models.Transactions
{
    public class TransactionBase
    {
        public Guid CompanyId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Amount { get; set; }
    }
}
