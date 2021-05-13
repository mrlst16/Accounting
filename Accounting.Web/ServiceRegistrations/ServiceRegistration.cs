using Accounting.BLL.Books;
using Accounting.BLL.Interface.Books;
using Accounting.BLL.Interface.Transactions;
using Accounting.BLL.Transactions;
using Microsoft.Extensions.DependencyInjection;

namespace Accounting.Web.ServiceRegistrations
{
    public static class ServiceRegistration
    {
        public static void RegisterServices(IServiceCollection services)
        {
            services.AddTransient<ITransactionService, TransactionService>();
            services.AddTransient<IBooksService, BooksService>();
        }
    }
}
