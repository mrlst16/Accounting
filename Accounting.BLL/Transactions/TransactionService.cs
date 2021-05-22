using Accounting.BLL.Interface.Transactions;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Utilities;
using CsvHelper;
using CsvHelper.Configuration;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Threading.Tasks;

namespace Accounting.BLL.Transactions
{
    public class TransactionService : ITransactionService
    {
        private readonly ITransactionLoader _loader;
        private readonly IMapper<TransactionCsvRecord, TransactionBase> _csvTransactionMapper;

        public TransactionService(
            ITransactionLoader loader,
            IMapper<TransactionCsvRecord, TransactionBase> csvTransactionMapper
            )
        {
            _loader = loader;
            _csvTransactionMapper = csvTransactionMapper;
        }

        public async Task RecordCredit(Credit credit)
            => await _loader.RecordCredit(credit);

        public async Task RecordDebit(Debit debit)
            => await _loader.RecordDebit(debit);

        public async Task RecordTransactionsCsv(string csv)
        {
            var config = new CsvConfiguration(CultureInfo.InvariantCulture)
            {
                HasHeaderRecord = true
            };
            using (var textReader = new StringReader(csv))
            using (CsvReader csvReader = new CsvReader(textReader, config))
            {
                csvReader.Context.RegisterClassMap<TransactionClassMap>();
                var records = csvReader.GetRecords<TransactionCsvRecord>();
                var debits = new List<Debit>();
                var credits = new List<Credit>();

                Parallel.For(0, records.Count(), async (i) =>
                {
                    var transaction = await _csvTransactionMapper.Map(records.ElementAt(i));
                    switch (transaction)
                    {
                        case Debit d:
                            debits.Add(d);
                            break;
                        case Credit c:
                            credits.Add(c);
                            break;
                    }
                });

                await _loader.RecordDebits(debits);
                await _loader.RecordCredits(credits);
            }
        }
    }

    public class TransactionClassMap : ClassMap<TransactionCsvRecord>
    {
        public TransactionClassMap()
        {
            Map(x => x.Debit).Name("Debit");
            Map(x => x.Credit).Name("Credit");
            Map(x => x.Date).Name("Date");
            Map(x => x.AccountNumber).Name("AccountNumber");
        }
    }
}