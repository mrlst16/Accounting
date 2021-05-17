using CommonCore.Repo.Entities;
using System;

namespace Accounting.Models.Transactions
{
    public abstract class TransactionBase : EntityBase
    {
        public Guid AccountID { get; set; }
        public decimal Amount { get; set; }
        public string Description { get; set; }
    }
}
