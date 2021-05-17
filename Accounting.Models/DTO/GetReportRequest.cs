using System;

namespace Accounting.Models.DTO
{
    public class GetReportRequest
    {
        public Guid CompanyID { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }
}
