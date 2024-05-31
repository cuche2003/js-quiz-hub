using System.ComponentModel.DataAnnotations;

namespace JSQuizTest.Models
{
    public class AttemptChoice
    {
        public int Id { get; set; }

        [Required]
        public int AttemptId { get; set; }
        public Attempt Attempt { get; set; } = null!;

        public int? ChoiceId { get; set; }
        public Choice? Choice { get; set; } = null;
    }
}
