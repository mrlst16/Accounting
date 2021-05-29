using Accounting.BLL.Interface.Reporting;
using Accounting.BLL.Reporting;
using Accounting.MockData;
using Accounting.MockData.Accounts;
using NSubstitute;
using System.Threading.Tasks;
using Xunit;

namespace Accounting.BLL.Tests.Reporting
{
    public class FundamentalFinancialReportsServiceTests
    {
        private readonly FundamentalFinancialReportsService _service;
        private readonly IReportsLoader _reportsLoader;

        public FundamentalFinancialReportsServiceTests()
        {
            _reportsLoader = Substitute.For<IReportsLoader>();
            _service = new FundamentalFinancialReportsService(
                    _reportsLoader
                );
        }

        [Fact]
        public async Task TrialBalance_Balanced()
        {
            var request = MockRequests.GetReportReqests.CompanyAAllDates();
            _reportsLoader
                .GetAccounts(request)
                .Returns(MockAccountsData.BalancedAccountsScenario.Accounts());
            var actual = await _service.GetTrailBalance(request);
            Assert.NotNull(actual);
            Assert.True(actual.IsBalanced);
        }
    }
}
