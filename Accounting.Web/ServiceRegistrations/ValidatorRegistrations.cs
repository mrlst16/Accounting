using Accounting.Models.Companies;
using Accounting.Web.Validators;
using FluentValidation;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Accounting.Web.ServiceRegistrations
{
    public static class ValidatorRegistrations
    {
        public static void RegisterValidatorFactory(this IServiceCollection services)
        {
            services.AddTransient<IValidatorFactory, ValidatorFactory>();
        }
    }

    public interface IValidatorFactory
    {
        void ValidateAndThrow<T>(T request, int version = 1);
    }

    public class ValidatorFactory : IValidatorFactory
    {
        public void ValidateAndThrow<T>(T request, int version = 1)
        {
            var validator = GetValidator<T>();
            if (validator == null)
                throw new Exception($"No validator registered for type {typeof(T)}");
            validator.ValidateAndThrow<T>(request);
        }

        private static IValidator<T> GetValidator<T>(int version = 1)
        {
            switch ((typeof(T), version))
            {
                case (Type t, int v) when t == typeof(Company) && v == 1:
                    return (IValidator<T>)new CompanyValidator();
                default:
                    throw new Exception($"No validator registered for type {typeof(T)}");
            }
        }
    }
}
