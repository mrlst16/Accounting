<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using NSubstitute;
using CommonCore.Interfaces.Repository;
using Accounting.Models.Transactions;
using Accounting.BLL.Transactions;
=======
﻿using Accounting.BLL.Transactions;
using Accounting.Models.Transactions;
using CommonCore.Interfaces.Repository;
using NSubstitute;
>>>>>>> 5809026 ([ReportTrialBalance] Unit Tests)

namespace Accounting.BLL.Tests.Transactions
{
    public class TransactionLoaderTests
    {
        private readonly ICrudRepositoryFactory _crudRepositoryFactory;
        private readonly ICrudRepository<Credit> _creditsRepo;
        private readonly ICrudRepository<Debit> _debitsRepo;

        private readonly TransactionLoader _loder;

        public TransactionLoaderTests()
        {
            _crudRepositoryFactory = Substitute.For<ICrudRepositoryFactory>();
        }
    }
}
