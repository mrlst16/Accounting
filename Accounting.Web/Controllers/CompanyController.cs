using Accounting.BLL.Interface.Companies;
using Accounting.Models.Companies;
using Accounting.Web.ServiceRegistrations;
using CommonCore.Models.Responses;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Accounting.Web.Controllers
{
    [Route("api")]
    public class CompanyController : Controller
    {
        private readonly ICompanyManagementService _service;
        private IValidatorFactory _validatorFactory;
        public CompanyController(
            IValidatorFactory validatorFactory,
            ICompanyManagementService service
            )
        {
            _validatorFactory = validatorFactory;
            _service = service;
        }

        [HttpPost("CreateCompany")]
        public async Task<IActionResult> Create(
            [FromBody] Company request
            )
        {
            _validatorFactory.ValidateAndThrow<Company>(request);

            var (success, result) = await _service.Create(request);
            var response = new ApiResponse<Company>()
            {
                Data = success ? result : null,
                SuccessMessage = "Succesfully Created Company",
                FailureMessage = "Failed to Create Comapny"
            };
            return new OkObjectResult(response);
        }
    }
}
