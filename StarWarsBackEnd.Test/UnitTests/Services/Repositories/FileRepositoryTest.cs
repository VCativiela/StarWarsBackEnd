using System.Collections.Generic;
using System.Collections.Specialized;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using StarWarsBackEnd.Models.Factories;
using StarWarsBackEnd.Services.Persistence.Classes;
using StarWarsBackEnd.Services.Persistence.Interfaces;
using StarWarsBackEnd.Services.Repositories.Clases;
using StarWarsBackEnd.Services.Repositories.Interfaces;
using StarWarsBackEnd.Services.Utilities;

namespace StarWarsBackEnd.Test.Models.UnitTesting
{
    [TestClass]
    public class FileRepositoryTest
    {
        private readonly IFileWriter _fileWriter;
        private readonly IRepository _fileRepository;

        private readonly List<Rebel> rebelsList = new List<Rebel>()
        {
            new Rebel(){Name = "Pedro", Planet = "Marte" }
        };
        
        public FileRepositoryTest()
        {
            _fileWriter = new FakeFileWriter();
            _fileRepository = new FileRepository(_fileWriter);
        }

        [TestMethod]
        public void SaveData_ValidData_DoesntThrowError()
        {
            _fileRepository.SaveData(rebelsList);
            Assert.IsTrue(true);
        }

        [TestMethod]
        public void SaveData_NullParam_ThrowsServiceException()
        {
            Assert.ThrowsException<ServiceException>(() => _fileRepository.SaveData(null));
        }
    }
}
