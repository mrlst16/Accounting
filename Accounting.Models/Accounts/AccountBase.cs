using Accounting.Models.Enums;
using Accounting.Models.Transactions;
using CommonCore.Repo.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Accounting.Models.Accounts
{
    public abstract class AccountBase : EntityBase
    {
        public Guid CompanyID { get; set; }
        public Guid? ParentAccountID { get; set; } = null;
        public string Name { get; set; }
        public string Description { get; set; }
        public abstract AccountTypeEnum AccountType { get; }
        public IEnumerable<Credit> Credits { get; set; }
        public IEnumerable<Debit> Debits { get; set; }
        public virtual TransactionTypeEnum TransactionType { get; set; }

        public decimal Balance
        {
            get => (TransactionType == TransactionTypeEnum.Debit)
                ? (Debits?.Sum(x => x.Amount) ?? 0m) - (Credits?.Sum(x => x.Amount) ?? 0m)
                : (Credits?.Sum(x => x.Amount) ?? 0m) - (Debits?.Sum(x => x.Amount) ?? 0m);
        }
    }
}
