using Accounting.Models.Accounts;
using System.Collections.Generic;

namespace Accounting.Models.Reports
{
    public class TrialBalance : ReportBase
    {
        public IEnumerable<Asset> Assets { get; set; }
        public IEnumerable<Liability> Liabilities { get; set; }
        public IEnumerable<Equity> Equities { get; set; }
        public decimal AssetsBalance { get; set; }
        public decimal LiabilitiesBalance { get; set; }
        public decimal EquitiesBalance { get; set; }
        public bool IsBalanced { get; set; }
        public decimal Difference { get; set; }
    }
}