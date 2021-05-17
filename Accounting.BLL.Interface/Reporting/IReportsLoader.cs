using Accounting.Models.Accounts;
using Accounting.Models.DTO;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Reporting
{
    public interface IReportsLoader
    {
        Task<(IEnumerable<Asset>, IEnumerable<Liability>, IEnumerable<Equity>)> GetAccounts(GetReportRequest request);
        Task<IEnumerable<Asset>> GetAssets(GetReportRequest request);
        Task<IEnumerable<Liability>> GetLiabilities(GetReportRequest request);
        Task<IEnumerable<Equity>> GetEquities(GetReportRequest request);
    }
}
