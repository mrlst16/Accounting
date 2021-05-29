using Accounting.MockData.Accounts;
using Accounting.MockData.Transactions;
using Accounting.Models.Accounts;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using NSubstitute;
using System;
using System.Collections.Generic;
using System.Linq.Expressions;

namespace Accounting.MockData.MockMongoDb
{
    public static class MockRepositories
    {

        public static ICrudRepositoryFactory AssetsMinusLiabilitiesEqualEquity()
        {
            var companyId = Guid.Parse("bf1714ef-5dbc-4af7-806a-0ef037d8b44b");
            DateTime date = DateTime.Parse("1/1/2021");

            ICrudRepositoryFactory result = Substitute.For<ICrudRepositoryFactory>();
            ICrudRepository<Credit> creditsRepo = Substitute.For<ICrudRepository<Credit>>();
            ICrudRepository<Debit> debitsRepo = Substitute.For<ICrudRepository<Debit>>();
            ICrudRepository<Asset> assetsRepo = Substitute.For<ICrudRepository<Asset>>();
            ICrudRepository<Liability> liabilitiesRepo = Substitute.For<ICrudRepository<Liability>>();
            ICrudRepository<Equity> equityRepo = Substitute.For<ICrudRepository<Equity>>();

            assetsRepo
                .Read(Arg.Any<Expression<Func<Asset, bool>>>())
                .Returns(MockAccountsData.BalancedAccountsScenario.Assets());
            liabilitiesRepo
                .Read(Arg.Any<Expression<Func<Liability, bool>>>())
                .Returns(MockAccountsData.BalancedAccountsScenario.Liabilities());
            equityRepo
                .Read(Arg.Any<Expression<Func<Equity, bool>>>())
                .Returns(MockAccountsData.BalancedAccountsScenario.Equities());

            debitsRepo
                .Read(x => x.ID == MockAccountsData.CashId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.CashId,
                    date,
                    32800
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.AccountsReceivableId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.AccountsReceivableId,
                    date,
                    100000
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.InventoryId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.InventoryId,
                    date,
                    39800
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.DividensPaidId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.DividensPaidId,
                    date,
                    1000
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.CostOfGoodsSoldId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.CostOfGoodsSoldId,
                    date,
                    10200
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.RentExpensesId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.RentExpensesId,
                    date,
                    1000
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.WagesId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.WagesId,
                    date,
                    800
                    ));
            debitsRepo
                .Read(x => x.ID == MockAccountsData.InterestExpenseId)
                .Returns(MockTransactionData.TransactionsForAccount<Debit>(
                    MockAccountsData.InterestExpenseId,
                    date,
                    500
                    ));

            creditsRepo
                .Read(x => x.ID == MockAccountsData.AccountsPayableId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    MockAccountsData.AccountsPayableId,
                    date,
                    49000
                    ));
            creditsRepo
                .Read(x => x.ID == MockAccountsData.LongTermLiabilitiesId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    MockAccountsData.LongTermLiabilitiesId,
                    date,
                    99500
                    ));
            creditsRepo
                .Read(x => x.ID == MockAccountsData.EquitySharesId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    MockAccountsData.EquitySharesId,
                    date,
                    10000
                    ));
            creditsRepo
                .Read(x => x.ID == MockAccountsData.WagesPayableId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    MockAccountsData.WagesPayableId,
                    date,
                    1000
                    ));
            creditsRepo
                .Read(x => x.ID == MockAccountsData.RevenuId)
                .Returns(MockTransactionData.TransactionsForAccount<Credit>(
                    MockAccountsData.RevenuId,
                    date,
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
