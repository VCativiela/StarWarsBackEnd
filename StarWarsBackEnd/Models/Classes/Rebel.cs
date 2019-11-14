using StarWarsBackEnd.Models.Interfaces;

namespace StarWarsBackEnd.Models.Classes
{
    public class Rebel: IRebel
    {
        public string Name { get; set; }
        public string Planet { get; set; }
        public string DateTime { get; set; }
    }
}
