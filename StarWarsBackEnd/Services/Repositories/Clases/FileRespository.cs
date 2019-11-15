using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using StarWarsBackEnd.Services.Persistence.Interfaces;
using StarWarsBackEnd.Services.Repositories.Interfaces;
using System;
using System.Collections.Generic;

namespace StarWarsBackEnd.Services.Repositories.Clases
{
    public class FileRepository : IRepository
    {
        private readonly IFileWriter _fileWriter;
        public FileRepository(IFileWriter fileWriter)
        {
            _fileWriter = fileWriter;
        }

        public void SaveData(List<Rebel> collection)
        {
            if (collection == null)
            {
                throw new ServiceException("Null collection");
            }

            try
            {
                _fileWriter.SaveFile(collection);
            }
            catch (Exception ex)
            {
                throw new RepositoryException("Error al guardar", ex);
            }
        }
    }
}
