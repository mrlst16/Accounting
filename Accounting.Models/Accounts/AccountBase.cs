using Accounting.Models.Enums;
using Accounting.Models.Transactions;
using CommonCore.Repo.Entities;
using System;
using System.Collections.Generic;

namespace Accounting.Models.Accounts
{
    public abstract class AccountBase : EntityBase
    {
        public Guid CompanyID { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public abstract AccountTypeEnum AccountType { get; }
        public abstract decimal Balance { get; set; }
        public IEnumerable<Credit> Credits { get; set; }
        public IEnumerable<Debit> Debits { get; set; }
    }
}
