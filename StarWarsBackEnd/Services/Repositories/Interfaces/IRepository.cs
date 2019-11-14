using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using StarWarsBackEnd.Models.Classes;

namespace StarWarsBackEnd.Services.Repositories.Interfaces
{
    public interface IRepository
    {
        void SaveData(List<Rebel> lista);
    }
}