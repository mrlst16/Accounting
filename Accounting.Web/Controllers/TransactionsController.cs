using Accounting.BLL.Interface.Transactions;
using Accounting.Models.Transactions;
using Accounting.Web.ServiceRegistrations;
using CommonCore.Models.Responses;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Accounting.Web.Controllers
{
    [Route("api")]
    public class TransactionsController : Controller
    {
        private readonly IValidatorFactory _validatorFactory;
        private readonly ITransactionService _transactionService;

        public TransactionsController(
            IValidatorFactory validatorFactory,
            ITransactionService transactionService
            )
        {
            _validatorFactory = validatorFactory;
            _transactionService = transactionService;
        }

        [HttpPost("PostTransactions")]
        public async Task<IActionResult> PostTransactionsCsv(
            [FromBody] string csv
            )
        {
            _validatorFactory.ValidateAndThrow<string>(csv, 1);

            //If the service call fails, we will throw a 500 
            //So no need to give a failure message since it's a void call
            await _transactionService.RecordTransactionsCsv(csv);
            var response = new ApiResponse<bool>()
            {
                Data = true,
                SuccessMessage = "Succesfully posted transaction"
            };
            return new OkObjectResult(response);
        }

        [HttpPost("PostDebit")]
        public async Task<IActionResult> PostDebit(
           [FromBody] Debit debit
           )
        {
            _validatorFactory.ValidateAndThrow<Debit>(debit, 1);

            //If the service call fails, we will throw a 500 
            //So no need to give a failure message since it's a void call
            await _transactionService.RecordDebit(debit);
            var response = new ApiResponse<bool>()
            {
                Data = true,
                SuccessMessage = "Succesfully posted debit"
            };
            return new OkObjectResult(response);
        }

        [HttpPost("PostCredit")]
        public async Task<IActionResult> PostCredit(
           [FromBody] Credit credit
           )
        {
            _validatorFactory.ValidateAndThrow<Credit>(credit, 1);

            //If the service call fails, we will throw a 500 
            //So no need to give a failure message since it's a void call
            await _transactionService.RecordCredit(credit);
            var response = new ApiResponse<bool>()
            {
                Data = true,
                SuccessMessage = "Succesfully posted debit"
            };
            return new OkObjectResult(response);
        }
    }
}
