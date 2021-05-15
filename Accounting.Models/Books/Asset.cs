using Accounting.Models.Base;
using Accounting.Models.Enums;

namespace Accounting.Models.Books
{
    public class Asset : BookAccount
    {
        public override AccountTypeEnum Account => AccountTypeEnum.Asset;
    }
}
