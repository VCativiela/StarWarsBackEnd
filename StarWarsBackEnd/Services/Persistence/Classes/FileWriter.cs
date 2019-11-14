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
    public class FileWriter : IFileWriter
    {
        public async void SaveFile(IEnumerable<Rebel> collection)
        {
            try
            {
                var fileName = Path.Combine(
                    Path.GetFullPath(AppDomain.CurrentDomain.BaseDirectory), DateTime.Now.ToString("ddMMyyyy_hhmmss") + ".json");

                TextWriter writer;
                using (writer = new StreamWriter( fileName, append: false))
                {
                    var json = JsonConvert.SerializeObject(collection);
                    await writer.WriteLineAsync(json);
                }
            }
            catch (Exception ex)
            { 
                throw new ServiceException("Error al guardar el fichero.", ex);
            }
        }
    }
}
