using Accounting.Models.Base;
using Accounting.Models.Enums;

namespace Accounting.Models.Books
{
    public class Equity : BookAccount
    {
        public override AccountTypeEnum Account => AccountTypeEnum.Liability;
    }
}
