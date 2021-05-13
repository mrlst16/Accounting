using Accounting.Interface.Companies;
using Accounting.Models.Companies;
using System;
using System.Threading.Tasks;

namespace Accounting.BLL.Companies
{
    public class CompanyManagementService : ICompanyManagementService
    {
        private readonly ICompanyManagementLoader _loader;
        public CompanyManagementService(
            ICompanyManagementLoader loader
            )
        {
            _loader = loader;
        }

        public async Task<(bool, Company)> Create(Company company)
            => await _loader.Create(company);

        public async Task<bool> Delete(Guid id)
            => await _loader.Delete(id);
        public async Task<Company> Get(Guid id)
            => await _loader.Get(id);

        public async Task<(bool, Company)> Update(Company company)
            => await _loader.Update(company);
    }
}
