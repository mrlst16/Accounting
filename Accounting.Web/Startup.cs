using Accounting.Web.Middleware;
using Accounting.Web.ServiceRegistrations;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System.Net;

namespace Accounting.Web
{
    public class Startup
    {
        private ILogger<Startup> _logger;

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            //Implement all of this later
            services.RegisterServices();
            services.RegisterLoaders();
            services.RegisterContexts(Configuration);
            services.RegisterValidatorFactory();
            //services.RegisterLoggers();
            //services.AddTransient<IAuthorizationHandler, JWTAuthorizationHandler>();

            services.AddTransient<IConfiguration>(x => Configuration);

            //services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
            //.AddJwtBearer(options =>
            //{
            //    options.MapInboundClaims = true;
            //    var issuer = Configuration.GetValue<string>("Jwt:Issuer");
            //    var key = Configuration.GetValue<string>("Jwt:Key");

            //    options.TokenValidationParameters = new TokenValidationParameters
            //    {
            //        ValidateAudience = false,
            //        ValidateIssuer = true,
            //        ValidIssuer = issuer,
            //        ValidateIssuerSigningKey = true,
            //        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(key)),
            //        ValidateLifetime = true,
            //        NameClaimType = ClaimTypes.Name,
            //        TokenReader = (token, parameters) =>
            //        {
            //            var result = new JwtSecurityToken();
            //            JwtSecurityTokenHandler handler = new JwtSecurityTokenHandler();
            //            result = handler.ReadJwtToken(token);
            //            return result;
            //        }
            //    };
            //});
            //services.AddAuthorization(x =>
            //{
            //    x.AddPolicy(JwtBearerDefaults.AuthenticationScheme, y =>
            //    {
            //        y.AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme);
            //        y.AddRequirements(new JWTAuthorizationRequirement());
            //    });
            //});
            services.AddControllers();
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, ILogger<Startup> logger)
        {
            _logger = logger;

            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }
            app.UseHttpsRedirection();

            app.UseRouting();

            app.UseAuthentication();
            app.UseAuthorization();
            app.UseMiddleware<ErrorHandlingMiddleware>();

            app.Use(async (context, next) =>
            {
                await next();

                if (context.Response.StatusCode == (int)HttpStatusCode.NotFound)
                {
                    _logger.LogInformation($"404 :{context.Request.Host}/{context.Request.Path}");
                }

                if (context.Response.StatusCode == (int)HttpStatusCode.Unauthorized)
                {
                    _logger.LogInformation($"403 :{context.Request.Host}/{context.Request.Path}");
                }
            });

            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllers();
            });
        }
    }
}
