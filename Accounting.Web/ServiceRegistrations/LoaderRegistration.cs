using Accounting.BLL.Books;
using Accounting.BLL.Interface.Books;
using Accounting.BLL.Interface.Transactions;
using Accounting.BLL.Transactions;
using Microsoft.Extensions.DependencyInjection;

namespace Accounting.Web.ServiceRegistrations
{
    public static class LoaderRegistration
    {
        public static void RegisterLoaders(IServiceCollection services)
        {
            services.AddTransient<ITransactionLoader, TransactionLoader>();
            services.AddTransient<IBooksLoader, BooksLoader>();
        }
    }
}
