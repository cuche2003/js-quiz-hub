using System.ComponentModel.DataAnnotations;

namespace JSQuizTest.Models
{
    public class Question
    {
        public int Id { get; set; }

        [Required]
        public string Description { get; set; } = null!;

        [Required]
        public int QuizId { get; set; }
        public Quiz Quiz { get; set; } = null!;

        public ICollection<Choice> Choices { get; } = null!;
    }
}
