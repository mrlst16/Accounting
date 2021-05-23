using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Asset : AccountBase
    {
        public override AccountTypeEnum AccountType => AccountTypeEnum.Asset;

        public override decimal Balance { get => throw new System.NotImplementedException(); set => throw new System.NotImplementedException(); }
    }
}
