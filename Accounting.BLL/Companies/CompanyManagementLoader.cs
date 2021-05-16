using Accounting.BLL.Interface.Companies;
using Accounting.Models.Companies;
using CommonCore.Interfaces.Repository;
using System;
using System.Threading.Tasks;

namespace Accounting.BLL.Companies
{
    public class CompanyManagementLoader : ICompanyManagementLoader
    {
        public readonly ICrudRepositoryFactory _repo;

        public async Task<bool> Delete(Guid id)
         => await _repo.Get<Company>()
                .Delete(x => x.ID == id);

        public Task<(bool, Company)> Update(Company company)
            => _repo
                .Get<Company>()
                .Update(company, x => x.ID == company.ID);

        public async Task<(bool, Company)> Create(Company company)
        {
            try
            {
                var repo = _repo.Get<Company>();
                await repo.Create(company);
                return (true, company);
            }
            catch
            {
                return (false, null);
            }
        }

        public async Task<Company> Get(Guid id)
            => await _repo.Get<Company>()
                .First(x => x.ID == id);
    }
}
