using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using StarWarsBackEnd.Models.Classes;

namespace StarWarsBackEnd.Services.Persistence.Interfaces
{
    public interface IFileWriter
    {
        void SaveFile(IEnumerable<Rebel> collection);
    }
}
