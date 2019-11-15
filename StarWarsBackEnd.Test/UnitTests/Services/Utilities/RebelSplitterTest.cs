using System.Collections.Specialized;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Factories;
using StarWarsBackEnd.Services.Utilities;

namespace StarWarsBackEnd.Test.Models.UnitTesting
{
    [TestClass]
    public class RebelSplitterTest
    {
        private readonly IDataSplitter _rebelSplitter;

        private StringCollection validData = new StringCollection() { "Pedro,Marte", "Marta,Jupiter" };
        private StringCollection invalidData = new StringCollection() { "Marte", "Marta,Jupiter" };

        public RebelSplitterTest()
        {
            _rebelSplitter = new RebelSplitter();
        }

        [TestMethod]
        public void SplitData_ValidData_ReturnsRebelList()
        {
            var rebelList = _rebelSplitter.SplitData(validData);

            Assert.IsNotNull(rebelList);
            Assert.AreEqual(validData.Count, rebelList.Count);
        }

        [TestMethod]
        public void SplitData_InvalidData_ReturnsRebelList()
        {
            Assert.ThrowsException<ServiceException>(() => _rebelSplitter.SplitData(invalidData));
        }

        [TestMethod]
        public void SplitData_NullParam_ThrowsServiceException()
        {
            Assert.ThrowsException<ServiceException>(() => _rebelSplitter.SplitData(null));
        }

    }
}
