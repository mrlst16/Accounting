using Accounting.Models.Companies;
using System;

namespace Accounting.MockData.Companies
{
    public static class MockCompanyData
    {
        public static Guid CompanyAID = Guid.Parse("bf1714ef-5dbc-4af7-806a-0ef037d8b44b");
        public static Company CompanyA()
            => new Company()
            {
                ID = CompanyAID
            };
    }
}
