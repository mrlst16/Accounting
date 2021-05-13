using Accounting.Interface.Companies;
using Accounting.Models.Companies;
using CommonCore.Models.Responses;
using Microsoft.AspNetCore.Mvc;
using System.Threading.Tasks;

namespace Accounting.Web.Controllers
{
    [Route("api")]
    public class CompanyController : Controller
    {
        private readonly ICompanyManagementService _service;

        public CompanyController(
            ICompanyManagementService service
            )
        {
            _service = service;
        }

        [HttpPost("CreateCompany")]
        public async Task<IActionResult> Create(
            [FromBody] Company request
            )
        {
            var result = await _service.Create(request);
            var response = new ApiResponse<Company>() { };
            return new OkObjectResult(response);
        }
    }
}
