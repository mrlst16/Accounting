using CommonCore.Repo.Entities;
using System;

namespace Accounting.Models.Base
{
    public abstract class BookAccount : EntityBase
    {
        public Guid CompanyId { get; set; }
        public string Name { get; set; }
        public string Description { get; set; }
        public decimal Balance { get; set; }
    }
}
