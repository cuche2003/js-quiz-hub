using JSQuizTest.Data;
using JSQuizTest.Models;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

namespace JSQuizTest.Services
{
    public class AttemptAuthorizationHandler(ApplicationDbContext dbContext)
        : AuthorizationHandler<AttemptAuthorizationRequirement>
    {
        protected override Task HandleRequirementAsync(AuthorizationHandlerContext context, AttemptAuthorizationRequirement requirement)
        {
            if (context.Resource is DefaultHttpContext ctx)
            {
                if (context.User.HasClaim(ClaimTypes.Role, "Admin"))
                {
                    context.Succeed(requirement);
                    return Task.CompletedTask;
                }

                var id = ctx.Request.Query["id"].ToString();

                var success = int.TryParse(id, out var attemptId);

                if (!success)
                {
                    return Task.CompletedTask;
                }

                Attempt? attempt = dbContext.Attempt.FirstOrDefault(a => a.Id == attemptId);

                if (attempt == null)
                {
                    return Task.CompletedTask;
                }

                var userEmail = attempt.UserId;

                if (context.User.HasClaim(ClaimTypes.Email, userEmail))
                {
                    context.Succeed(requirement);
                }
            }
            else
            {
                context.Succeed(requirement);
            }

            return Task.CompletedTask;
        }
    }
}