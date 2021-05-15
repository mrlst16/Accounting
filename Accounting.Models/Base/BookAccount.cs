using Accounting.Models.Enums;
using Accounting.Models.Transactions;
using System.Collections.Generic;

namespace Accounting.Models.Base
{
    public abstract class BookAccount : AccountBase
    {
        public abstract AccountTypeEnum Account { get; }
        public decimal Balance { get; set; }
        public List<Credit> Credits { get; set; }
        public List<Debit> Debits { get; set; }
    }
}
