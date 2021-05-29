using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Equity : AccountBase
    {
        public override AccountTypeEnum AccountType => AccountTypeEnum.Liability;
        public override TransactionTypeEnum TransactionType { get; set; } = TransactionTypeEnum.Credit;
    }
}
