using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Liability : AccountBase
    {
        public override AccountTypeEnum AccountType => AccountTypeEnum.Equity;

        public override decimal Balance { get => throw new System.NotImplementedException(); set => throw new System.NotImplementedException(); }
    }
}
