using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Asset : AccountBase
    {
        public override AccountTypeEnum AccountType => AccountTypeEnum.Asset;
        public override TransactionTypeEnum TransactionType { get; set; } = TransactionTypeEnum.Debit;
    }
}
