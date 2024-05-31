using JSQuizTest.Data;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Identity;
using System.Security.Claims;

namespace JSQuizTest.Services
{
    public class ApplicationUserClaimsTransformation(UserManager<ApplicationUser> userManager) : IClaimsTransformation
    {
        private readonly UserManager<ApplicationUser> userManager = userManager;

        public Task<ClaimsPrincipal> TransformAsync(ClaimsPrincipal principal)
        {
            if (principal.Identity is not ClaimsIdentity identity)
            {
                return Task.FromResult(principal);
            }

            if (!principal.HasClaim(c => c.Type == ClaimTypes.Role))
            {
                identity.AddClaim(new Claim(
                    ClaimTypes.Role, principal.Identity.Name == "admin@admin.com" ? "Admin" : "User")
                );
            }

            return Task.FromResult(new ClaimsPrincipal(identity));
        }
    }
}
