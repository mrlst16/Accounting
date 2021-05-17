using Accounting.Models.Enums;

namespace Accounting.Models.Accounts
{
    public class Equity : AccountBase
    {
        public override AccountTypeEnum Account => AccountTypeEnum.Liability;

        public override decimal Balance { get => throw new System.NotImplementedException(); set => throw new System.NotImplementedException(); }
    }
}
