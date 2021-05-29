using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Liability : AccountBase
    {
        public override AccountTypeEnum AccountType => AccountTypeEnum.Equity;
        public override TransactionTypeEnum TransactionType { get; set; } = TransactionTypeEnum.Credit;
    }
}
