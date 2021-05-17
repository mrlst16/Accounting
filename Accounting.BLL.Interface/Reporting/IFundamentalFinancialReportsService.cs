using Accounting.Models.DTO;
using Accounting.Models.Reports;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Reporting
{
    public interface IFundamentalFinancialReportsService
    {
        Task<TrialBalance> GetTrailBalance(GetReportRequest request);
    }
}
