using Accounting.BLL.Books;
using Accounting.BLL.Companies;
using Accounting.BLL.Interface.Books;
using Accounting.BLL.Interface.Companies;
using Accounting.BLL.Interface.Transactions;
using Accounting.BLL.Transactions;
using Microsoft.Extensions.DependencyInjection;

namespace Accounting.Web.ServiceRegistrations
{
    public static class LoaderRegistration
    {
        public static void RegisterLoaders(this IServiceCollection services)
        {
            services.AddTransient<ICompanyManagementLoader, CompanyManagementLoader>();
            services.AddTransient<ITransactionLoader, TransactionLoader>();
            services.AddTransient<IBooksLoader, BooksLoader>();
        }
    }
}
