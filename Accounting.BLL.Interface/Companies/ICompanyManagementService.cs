using Accounting.Models.Companies;
using System;
using System.Threading.Tasks;

namespace Accounting.BLL.Interface.Companies
{
    public interface ICompanyManagementService
    {
        Task<(bool, Company)> Create(Company company);
        Task<Company> Get(Guid id);
        Task<(bool, Company)> Update(Company company);
        Task<bool> Delete(Guid id);
    }
}
