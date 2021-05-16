﻿using Accounting.BLL.Books;
using Accounting.BLL.Companies;
using Accounting.BLL.Interface.Books;
using Accounting.BLL.Interface.Companies;
using Accounting.BLL.Interface.Transactions;
using Accounting.BLL.Transactions;
using Microsoft.Extensions.DependencyInjection;

namespace Accounting.Web.ServiceRegistrations
{
    public static class ServiceRegistration
    {
        public static void RegisterServices(this IServiceCollection services)
        {
            services.AddTransient<ICompanyManagementService, CompanyManagementService>();
            services.AddTransient<ITransactionService, TransactionService>();
            services.AddTransient<IBooksService, BooksService>();
        }
    }
}
