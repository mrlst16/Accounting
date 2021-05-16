using Accounting.Models.Companies;
using FluentValidation;

namespace Accounting.Web.Validators
{
    public class CompanyValidator : AbstractValidator<Company>
    {
        public CompanyValidator()
        {
            RuleFor(x => x.Description)
                .NotNull()
                .NotEmpty()
                .WithMessage("Description must be populated");
        }
    }
}
