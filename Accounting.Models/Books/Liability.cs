using Accounting.Models.Base;
using Accounting.Models.Enums;

namespace Accounting.Models.Books
{
    public class Liability : BookAccount
    {
        public override AccountTypeEnum Account => AccountTypeEnum.Equity;
    }
}
