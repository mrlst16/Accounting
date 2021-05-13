using CommonCore.Models.Geography;
using CommonCore.Repo.Entities;

namespace Accounting.Models.Companies
{
    public class Company : EntityBase
    {
        public string Name { get; set; }
        public string Description { get; set; }
        public Address Address { get; set; }
    }
}
