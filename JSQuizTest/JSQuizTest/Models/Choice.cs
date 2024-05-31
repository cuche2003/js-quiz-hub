using System.ComponentModel.DataAnnotations;

namespace JSQuizTest.Models
{
    public class Choice
    {
        public int Id { get; set; }

        [Required]
        public int QuestionId { get; set; }
        public Question Question { get; set; } = null!;

        [Required]
        public string Description { get; set; } = null!;

        [Required]
        public bool IsCorrect { get; set; }
    }
}
