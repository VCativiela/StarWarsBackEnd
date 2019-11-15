using Microsoft.VisualStudio.TestTools.UnitTesting;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Factories;

namespace StarWarsBackEnd.Test.Models.UnitTesting
{
    [TestClass]
    public class ValuesControllerTest
    {
        [TestMethod]
        public void CreateInstance_ValidData_ReturnsValidRebel()
        {
            //Arrange
            var validName = "Pedro";
            var validPlanet = "Marte";

            //Act
            var rebel = RebelFactory.CreateInstance(validName, validPlanet);

            //Assert
            Assert.IsNotNull(rebel);
            Assert.IsNotNull(rebel.Name);
            Assert.IsNotNull(rebel.Planet);
            Assert.IsNotNull(rebel.DateTime);
            Assert.AreEqual(validName, rebel.Name);
            Assert.AreEqual(validPlanet, rebel.Planet);
        }

        [TestMethod]
        public void CreateInstance_NullName_ThrowsModelException()
        {
            Assert.ThrowsException<ModelException>(() => RebelFactory.CreateInstance(null, "Marte"));
        }

        [TestMethod]
        public void CreateInstance_EmptyName_ThrowsModelException()
        {
            Assert.ThrowsException<ModelException>(() => RebelFactory.CreateInstance("", "Marte"));
        }

        [TestMethod]
        public void CreateInstance_NullPlanet_ThrowsModelException()
        {
            Assert.ThrowsException<ModelException>(() => RebelFactory.CreateInstance("Pedro", null));
        }

        [TestMethod]
        public void CreateInstance_EmptyPlanet_ThrowsModelException()
        {
            Assert.ThrowsException<ModelException>(() => RebelFactory.CreateInstance("Pedro", ""));
        }
    }
}
