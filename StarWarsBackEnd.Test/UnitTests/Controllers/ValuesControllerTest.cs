using System.Collections.Specialized;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using StarWarsBackEnd.Controllers;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Services.Persistence.Classes;
using StarWarsBackEnd.Services.Persistence.Interfaces;
using StarWarsBackEnd.Services.Repositories.Clases;
using StarWarsBackEnd.Services.Repositories.Interfaces;
using StarWarsBackEnd.Services.Utilities;

namespace StarWarsBackEnd.Test.Controllers.UnitTesting
{
    [TestClass]
    public class ValuesControllerTest
    {
        private readonly IDataSplitter _dataSplitter;
        private readonly IRepository _fakeRepository;

        public ValuesControllerTest()
        {
            _dataSplitter = new RebelSplitter();
            _fakeRepository = new FileRepository(new FakeFileWriter());
        }

        [TestMethod]
        public void CreateController_NullRepository_ThrowsControllerException()
        {
            Assert.ThrowsException<ControllerException>(() => new ValuesController(null, _dataSplitter));
        }

        [TestMethod]
        public void CreateController_NullSplitter_ThrowsControllerException()
        {
            Assert.ThrowsException<ControllerException>(() => new ValuesController(_fakeRepository, null));
        }

        [TestMethod]
        public void Post_ValidParams_ReturnsIActionResult()
        {
            //Arrange
            ValuesController _controller = new ValuesController(_fakeRepository, _dataSplitter);

            //Act
            var result = _controller.Post(new StringCollection() { "Pedro,Marte" });

            //Assert
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(IActionResult));
            Assert.IsInstanceOfType(result, typeof(OkResult));
        }

        [TestMethod]
        public void Post_InvalidParams_ReturnsBadrequest()
        {
            //Arrange
            ValuesController _controller = new ValuesController(_fakeRepository, _dataSplitter);

            //Act
            var result = _controller.Post(new StringCollection() { "Pedro" });

            //Assert
            Assert.IsNotNull(result);
            Assert.IsInstanceOfType(result, typeof(IActionResult));
            Assert.IsInstanceOfType(result, typeof(BadRequestObjectResult));
        }
    }
}
