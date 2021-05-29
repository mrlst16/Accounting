using Accounting.MockData.Companies;
using Accounting.Models.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Accounting.MockData
{
    public static partial class MockRequests
    {
        public static class GetReportReqests
        {
            public static GetReportRequest CompanyAAllDates()
                => new GetReportRequest()
                {
                    CompanyID = MockCompanyData.CompanyAID,
                    StartDate = DateTime.MinValue,
                    EndDate = DateTime.MaxValue
                };
        }
    }
}
