using Accounting.Models.Base;
using CommonCore.Repo.Entities;
using System;
using System.Collections.Generic;

namespace Accounting.Models.Reports
{
    public class ReportGrouping : EntityBase
    {
        public Guid ReportID { get; set; }
        public int Order { get; set; }
        public List<AccountBase> Accounts { get; set; } = new List<AccountBase>();

    }
}
