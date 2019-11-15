using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net.Mime;
using System.Threading.Tasks;
using Newtonsoft.Json;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using StarWarsBackEnd.Services.Persistence.Interfaces;

namespace StarWarsBackEnd.Services.Persistence.Classes
{
    public class FakeFileWriter : IFileWriter
    {
        public async void SaveFile(IEnumerable<Rebel> collection)
        {
            if (collection == null)
            {
                throw new ServiceException("Null collection");
            }
        }
    }
}
