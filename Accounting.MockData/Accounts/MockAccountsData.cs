using Accounting.MockData.Companies;
using Accounting.MockData.Transactions;
using Accounting.Models.Accounts;
using Accounting.Models.Transactions;
using System;
using System.Collections.Generic;

namespace Accounting.MockData.Accounts
{
    public static class MockAccountsData
    {
        public static Guid CashId = Guid.Parse("87489e46-0097-4bb4-999b-1c13e17876f7");
        public static Guid AccountsReceivableId = Guid.Parse("19c95d22-a96c-4f97-98b7-1fb431d3655a");
        public static Guid InventoryId = Guid.Parse("771e34eb-e0c1-46e9-9465-2b37d327e6b5");
        public static Guid AccountsPayableId = Guid.Parse("6e54e071-eccc-47d5-bca8-e5364a82d690");
        public static Guid LongTermLiabilitiesId = Guid.Parse("ae5aa6b7-2aa0-409a-ba1d-8c433e22f5d0");
        public static Guid EquitySharesId = Guid.Parse("c56518b6-20e3-406a-955e-ee5906bc3fff");
        public static Guid WagesPayableId = Guid.Parse("9ce817b3-ec7b-4d30-b597-912921344f2c");
        public static Guid DividensPaidId = Guid.Parse("574bb2df-4319-4c93-a810-253cac6579ec");
        public static Guid RevenuId = Guid.Parse("95ae3380-92b4-4e95-bbba-f73b1b8c6da3");
        public static Guid CostOfGoodsSoldId = Guid.Parse("b7319793-edbd-4c92-89e5-5a0de468adc7");
        public static Guid RentExpensesId = Guid.Parse("db434b56-192e-40d7-997a-1fa541b9e9be");
        public static Guid WagesId = Guid.Parse("796c3971-6a34-4a95-ac6d-80536c2a5b05");
        public static Guid InterestExpenseId = Guid.Parse("7ec58fec-d656-4021-a7ec-621b267f7632");

        public static class BalancedAccountsScenario
        {
            public static DateTime CreateDate = DateTime.Parse("1/1/2021");

            public static (IEnumerable<Asset>, IEnumerable<Liability>, IEnumerable<Equity>) Accounts()
                => (Assets(), Liabilities(), Equities());

            public static IEnumerable<Asset> Assets() => new List<Asset>()
            {
                new Asset(){
                    ID = CashId,
                    Name = "Cash",
                    CompanyID = MockCompanyData.CompanyAID,
                    Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.CashId,
                        CreateDate,
                        32800
                        )
                },
                new Asset(){
                    ID = AccountsReceivableId,
                    Name = "Accounts Receivable",
                    CompanyID = MockCompanyData.CompanyAID,
                    Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.AccountsReceivableId,
                        CreateDate,
                        100000
                        )
                },
                new Asset(){
                    ID = InventoryId,
                    Name = "Inventory",
                    CompanyID = MockCompanyData.CompanyAID,
                    Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.InventoryId,
                        CreateDate,
                        39800
                        )
                }
            };

            public static IEnumerable<Liability> Liabilities() => new List<Liability>()
            {
                new Liability(){
                    ID = AccountsPayableId,
                    Name = "Accounts Payable",
                    CompanyID = MockCompanyData.CompanyAID,
                    Credits = MockTransactionData.TransactionsForAccount<Credit>(
                        MockAccountsData.AccountsPayableId,
                        CreateDate,
                        49000
                        )
                },
                new Liability(){
                    ID = LongTermLiabilitiesId,
                    Name = "Long Term Liability",
                    CompanyID = MockCompanyData.CompanyAID,
                    Credits = MockTransactionData.TransactionsForAccount<Credit>(
                        MockAccountsData.LongTermLiabilitiesId,
                        CreateDate,
                        99500
                        )
                },
                new Liability(){
                    ID = WagesPayableId,
                    Name = "Wages Payable",
                    CompanyID = MockCompanyData.CompanyAID,
                    Credits = MockTransactionData.TransactionsForAccount<Credit>(
                        MockAccountsData.WagesPayableId,
                        CreateDate,
                        1000
                        )
                }
            };

            public static IEnumerable<Equity> Equities() => new List<Equity>()
            {
                new Equity()
                {
                    ID = EquitySharesId,
                    Name = "Equity Shares",
                    CompanyID = MockCompanyData.CompanyAID,
                    Credits = MockTransactionData.TransactionsForAccount<Credit>(
                        MockAccountsData.AccountsPayableId,
                        CreateDate,
                        10000
                        )
                },
                new Equity()
                {
                   ID = DividensPaidId,
                   Name = "Dividends Paid",
                   CompanyID = MockCompanyData.CompanyAID,
                   Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.DividensPaidId,
                        CreateDate,
                        1000
                        )
                },
                new Equity()
                {
                   ID = RevenuId,
                   Name = "Revenue",
                   CompanyID = MockCompanyData.CompanyAID,
                   Credits = MockTransactionData.TransactionsForAccount<Credit>(
                        MockAccountsData.AccountsPayableId,
                        CreateDate,
                        27500
                        )
                },
                new Equity()
                {
                   ID = CostOfGoodsSoldId,
                   Name = "Cost of Goods Sold",
                   CompanyID = MockCompanyData.CompanyAID,
                   Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.CostOfGoodsSoldId,
                        CreateDate,
                        10200
                        )
                },
                new Equity()
                {
                   ID = RentExpensesId,
                   Name = "Rent Expenses",
                   CompanyID = MockCompanyData.CompanyAID,
                   Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.RentExpensesId,
                        CreateDate,
                        1000
                        )
                },
                new Equity()
                {
                   ID = WagesId,
                   Name = "Wages",
                   CompanyID = MockCompanyData.CompanyAID,
                   Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.WagesId,
                        CreateDate,
                        1700
                        )
                },
                new Equity()
                {
                   ID = InterestExpenseId,
                   Name = "Interest Expenses",
                   CompanyID = MockCompanyData.CompanyAID,
                   Debits = MockTransactionData.TransactionsForAccount<Debit>(
                        MockAccountsData.InterestExpenseId,
                        CreateDate,
                        500
                        )
                }
            };

        }
    }
}