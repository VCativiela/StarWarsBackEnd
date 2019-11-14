using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using System;

namespace StarWarsBackEnd.Models.Factories
{
    public static class RebelFactory
    {
        public static Rebel CreateInstance(string name, string planet)
        {
            if (string.IsNullOrEmpty(name) || string.IsNullOrWhiteSpace(name))
            {
                throw new ModelException("Name null"); 
            }

            if (string.IsNullOrEmpty(planet) || string.IsNullOrWhiteSpace(planet))
            {
                throw new ModelException("Planet null");
            }

            return new Rebel()
            {
                Name = name,
                Planet = planet,
                DateTime = DateTime.Now.ToString()
            };
        }
    }
}
