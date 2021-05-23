using Accounting.MockData.Transactions;
using Accounting.Models.Accounts;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using NSubstitute;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace Accounting.MockData.MockMongoDb
{
    public static class MockRepositories
    {

        public static ICrudRepositoryFactory AssetsMinusLiabilitiesEqualEquity()
        {
            var companyId = Guid.Parse("bf1714ef-5dbc-4af7-806a-0ef037d8b44b");

            ICrudRepositoryFactory result = Substitute.For<ICrudRepositoryFactory>();
            ICrudRepository<Credit> creditsRepo = Substitute.For<ICrudRepository<Credit>>();
            ICrudRepository<Debit> debitsRepo = Substitute.For<ICrudRepository<Debit>>();
            ICrudRepository<Asset> assetsRepo = Substitute.For<ICrudRepository<Asset>>();
            ICrudRepository<Liability> liabilitiesRepo = Substitute.For<ICrudRepository<Liability>>();
            ICrudRepository<Equity> equityRepo = Substitute.For<ICrudRepository<Equity>>();

            var cashId = Guid.Parse("87489e46-0097-4bb4-999b-1c13e17876f7");
            var accountsReceivableId = Guid.Parse("19c95d22-a96c-4f97-98b7-1fb431d3655a");
            var inventoryId = Guid.Parse("771e34eb-e0c1-46e9-9465-2b37d327e6b5");
            var accountsPayableId = Guid.Parse("6e54e071-eccc-47d5-bca8-e5364a82d690");
            var longTermLiabilitiesId = Guid.Parse("ae5aa6b7-2aa0-409a-ba1d-8c433e22f5d0");
            var equitySharesId = Guid.Parse("c56518b6-20e3-406a-955e-ee5906bc3fff");
            var wagesPayableId = Guid.Parse("9ce817b3-ec7b-4d30-b597-912921344f2c");
            var dividensPaidId = Guid.Parse("574bb2df-4319-4c93-a810-253cac6579ec");
            var revenuId = Guid.Parse("95ae3380-92b4-4e95-bbba-f73b1b8c6da3");
            var costOfGoodsSoldId = Guid.Parse("b7319793-edbd-4c92-89e5-5a0de468adc7");
            var rentExpensesId = Guid.Parse("db434b56-192e-40d7-997a-1fa541b9e9be");
            var wagesId = Guid.Parse("796c3971-6a34-4a95-ac6d-80536c2a5b05");
            var interestExpenseId = Guid.Parse("7ec58fec-d656-4021-a7ec-621b267f7632");
            
            var assetAccounts = new List<Asset>()
            {
                new Asset(){
                    ID = cashId,
                    Name = "Cash",
                    CompanyID = companyId
                },
                new Asset(){
                    ID = accountsReceivableId,
                    Name = "Accounts Receivable",
                    CompanyID = companyId
                },
                new Asset(){
                    ID = Guid.Parse(""),
                    Name = "Inventory",
                    CompanyID = companyId
                }
            };
            var liabilityAccounts = new List<Liability>()
            {
                new Liability(){
                    ID = accountsPayableId,
                    Name = "Accounts Payable",
                    CompanyID = companyId
                },
                new Liability(){
                    ID = longTermLiabilitiesId,
                    Name = "Long Term Liability",
                    CompanyID = companyId
                },
                new Liability(){
                    ID = wagesPayableId,
                    Name = "Wages Payable",
                    CompanyID = companyId
                }
            };
            var equityAccounts = new List<Equity>()
            {
                new Equity()
                {
                   ID = equitySharesId,
                   Name = "Equity Shares",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = dividensPaidId,
                   Name = "Dividends Paid",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = revenuId,
                   Name = "Revenue",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = costOfGoodsSoldId,
                   Name = "Cost of Goods Sold",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = rentExpensesId,
                   Name = "Rent Expenses",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = wagesId,
                   Name = "Wages",
                   CompanyID = companyId
                },
                new Equity()
                {
                   ID = interestExpenseId,
                   Name = "Interest Expenses",
                   CompanyID = companyId
                }
            };

            assetsRepo
                .Read(Arg.Any<Expression<Func<Asset, bool>>>())
                .Returns(assetAccounts);
            liabilitiesRepo
                .Read(Arg.Any<Expression<Func<Liability, bool>>>())
                .Returns(liabilityAccounts);
            equityRepo
                .Read(Arg.Any<Expression<Func<Equity, bool>>>())
                .Returns(equityAccounts);

            debitsRepo
                .Read(x => x.ID == cashId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    cashId,
                    32800
                    ));
            debitsRepo
                .Read(x => x.ID == accountsReceivableId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    accountsReceivableId,
                    100000
                    ));
            debitsRepo
                .Read(x => x.ID == accountsReceivableId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    accountsReceivableId,
                    39800
                    ));
            debitsRepo
                .Read(x => x.ID == dividensPaidId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    dividensPaidId,
                    1000
                    ));
            debitsRepo
                .Read(x => x.ID == costOfGoodsSoldId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    costOfGoodsSoldId,
                    10200
                    ));
            debitsRepo
                .Read(x => x.ID == rentExpensesId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    rentExpensesId,
                    1000
                    ));
            debitsRepo
                .Read(x => x.ID == wagesId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    wagesId,
                    800
                    ));
            debitsRepo
                .Read(x => x.ID == interestExpenseId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    interestExpenseId,
                    500
                    ));

            creditsRepo
                .Read(x => x.ID == accountsPayableId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    accountsPayableId,
                    49000
                    ));
            creditsRepo
                .Read(x => x.ID == longTermLiabilitiesId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    longTermLiabilitiesId,
                    99500
                    ));
            creditsRepo
                .Read(x => x.ID == equitySharesId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    equitySharesId,
                    10000
                    ));
            creditsRepo
                .Read(x => x.ID == wagesPayableId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    wagesPayableId,
                    1000
                    ));
            creditsRepo
                .Read(x => x.ID == revenuId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    revenuId,
                    27500
                    ));

            result.Get<Credit>()
                .Returns(creditsRepo);
            result.Get<Debit>()
                .Returns(debitsRepo);
            result.Get<Asset>()
                .Returns(assetsRepo);
            result.Get<Liability>()
                .Returns(liabilitiesRepo);
            result.Get<Equity>()
                .Returns(equityRepo);
            return result;
        }
    }
}
