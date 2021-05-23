using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using NSubstitute;
using CommonCore.Interfaces.Repository;
using Accounting.Models.Transactions;
using Accounting.BLL.Transactions;
using Accounting.Models.Accounts;
using MockReportContextData = Accounting.MockData.Reporting.MockReportContextData;
using Accounting.MockData.MockMongoDb;
using Accounting.BLL.Reporting;

namespace Accounting.BLL.Tests.Reporting
{
    public class ReportsLoaderTests
    {
        public ReportsLoaderTests()
        {
        }

        [Fact]
        public async Task TrialBalance_AssetsAndLiabilitiesGreaterThanEquity_NotBalanced()
        {
            var crudRepositoryFactory = MockRepositories.AssetsMinusLiabilitiesEqualEquity();
            var loader = new ReportsLoader(crudRepositoryFactory);
            loader.Tri
        }
    }
}
