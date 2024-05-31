using JSQuizTest.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace JSQuizTest.Data
{
    public class ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : IdentityDbContext<ApplicationUser>(options)
    {
        public DbSet<Question> Question { get; set; } = default!;
        public DbSet<Choice> Choice { get; set; } = default!;

        public DbSet<Quiz> Quiz { get; set; } = default!;
        public DbSet<Attempt> Attempt { get; set; } = default!;
        public DbSet<AttemptChoice> AttemptChoice { get; set; } = default!;

        private void CreateAdmin(ModelBuilder builder)
        {
            // any unique string id
            const string ADMIN_ID = "a18be9c0-aa65-4af8-bd17-00bd9344e575";
            const string ROLE_ID = "ad376a8f-9eab-4bb9-9fca-30b01540f445";

            builder.Entity<IdentityRole>().HasData(new IdentityRole
            {
                Id = ROLE_ID,
                Name = "admin@admin.com",
                NormalizedName = "ADMIN@ADMIN.COM"
            });

            var hasher = new PasswordHasher<ApplicationUser>();
            builder.Entity<ApplicationUser>().HasData(new ApplicationUser
            {
                Id = ADMIN_ID,
                UserName = "admin@admin.com",
                NormalizedUserName = "ADMIN@ADMIN.COM",
                Email = "admin@admin.com",
                NormalizedEmail = "admin@admin.com",
                EmailConfirmed = true,
                PasswordHash = hasher.HashPassword(null, "Admin123#"),
                SecurityStamp = Guid.NewGuid().ToString("D")
            });

            builder.Entity<IdentityUserRole<string>>().HasData(new IdentityUserRole<string>
            {
                RoleId = ROLE_ID,
                UserId = ADMIN_ID
            });
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            CreateAdmin(modelBuilder);

            modelBuilder.Entity<Attempt>()
                .Property(b => b.Created)
                .HasDefaultValueSql("getdate()");

            modelBuilder.Entity<AttemptChoice>()
                .HasOne(e => e.Choice)
                .WithMany()
                .HasForeignKey(e => e.ChoiceId)
                .OnDelete(DeleteBehavior.Restrict);
        }
    }
}
