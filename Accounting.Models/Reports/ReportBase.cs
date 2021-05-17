using CommonCore.Repo.Entities;
using System;

namespace Accounting.Models.Reports
{
    public abstract class ReportBase : EntityBase
    {
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }
}
