using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace JSQuizTest.Migrations
{
    /// <inheritdoc />
    public partial class FixDeleteAttempt : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Attempt_Quiz_QuizId",
                table: "Attempt");

            migrationBuilder.DropForeignKey(
                name: "FK_AttemptChoice_Attempt_AttemptId",
                table: "AttemptChoice");

            migrationBuilder.AlterColumn<int>(
                name: "ChoiceId",
                table: "AttemptChoice",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18be9c0-aa65-4af8-bd17-00bd9344e575",
                columns: new[] { "ConcurrencyStamp", "PasswordHash", "SecurityStamp" },
                values: new object[] { "51f61265-e44a-45fa-a4f0-d9dca22fdde1", "AQAAAAIAAYagAAAAEHzVjGqjrHqoLuzRsZ9MD+xe6FekeMIuM/FvZGM/hF8LIa6ci0orwGM7glwIH/XK+g==", "1b5cd14c-a858-4c40-90ce-c500c2634e92" });

            migrationBuilder.AddForeignKey(
                name: "FK_Attempt_Quiz_QuizId",
                table: "Attempt",
                column: "QuizId",
                principalTable: "Quiz",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_AttemptChoice_Attempt_AttemptId",
                table: "AttemptChoice",
                column: "AttemptId",
                principalTable: "Attempt",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Attempt_Quiz_QuizId",
                table: "Attempt");

            migrationBuilder.DropForeignKey(
                name: "FK_AttemptChoice_Attempt_AttemptId",
                table: "AttemptChoice");

            migrationBuilder.AlterColumn<int>(
                name: "ChoiceId",
                table: "AttemptChoice",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.UpdateData(
                table: "AspNetUsers",
                keyColumn: "Id",
                keyValue: "a18be9c0-aa65-4af8-bd17-00bd9344e575",
                columns: new[] { "ConcurrencyStamp", "PasswordHash", "SecurityStamp" },
                values: new object[] { "5bc1ecf7-502f-48d2-a2a7-e5d8589d6dbc", "AQAAAAIAAYagAAAAENL86zRBwptqz10/WYdmQHaPeILHaIoeZUDhJMR3WI3XolWmHJliFeSFt7koulEOfg==", "12c04abf-89ff-42df-a494-8553235b345a" });

            migrationBuilder.AddForeignKey(
                name: "FK_Attempt_Quiz_QuizId",
                table: "Attempt",
                column: "QuizId",
                principalTable: "Quiz",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_AttemptChoice_Attempt_AttemptId",
                table: "AttemptChoice",
                column: "AttemptId",
                principalTable: "Attempt",
                principalColumn: "Id",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
