using Accounting.BLL.Interface.Reporting;
using Accounting.Models.DTO;
using Accounting.Models.Reports;
using System.Linq;
using System.Threading.Tasks;

namespace Accounting.BLL.Reporting
{
    public class FundamentalFinancialReportsService : IFundamentalFinancialReportsService
    {
        private readonly IReportsLoader _reportsLoader;

        public FundamentalFinancialReportsService(
            IReportsLoader reportsLoader
            )
        {
            _reportsLoader = reportsLoader;
        }

        public async Task<TrialBalance> GetTrailBalance(GetReportRequest request)
        {
            var result = new TrialBalance();
            var (assets, liabilities, equities) = await _reportsLoader.GetAccounts(request);

            result.Assets = assets;
            result.Liabilities = liabilities;
            result.Equities = equities;

            result.AssetsBalance = result.Assets.Sum(x => x.Balance);
            result.LiabilitiesBalance = result.Liabilities.Sum(x => x.Balance);
            result.EquitiesBalance = result.Equities.Sum(x => x.Balance);
            result.Difference = result.AssetsBalance - result.LiabilitiesBalance - result.EquitiesBalance;
            result.IsBalanced = result.AssetsBalance - result.LiabilitiesBalance == result.EquitiesBalance;
            return result;
        }
    }
}
