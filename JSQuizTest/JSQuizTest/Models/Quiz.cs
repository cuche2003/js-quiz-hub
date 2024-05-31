using System.ComponentModel.DataAnnotations;

namespace JSQuizTest.Models
{
    public class Quiz
    {
        public int Id { get; set; }

        [Required]
        public string Title { get; set; } = null!;

        [Required]
        public string Description { get; set; } = null!;

        public ICollection<Question> Questions { get; } = null!;

        public ICollection<Attempt> Attempts { get; } = null!;
    }
}
