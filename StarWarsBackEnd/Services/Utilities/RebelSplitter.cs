using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using StarWarsBackEnd.Models.Factories;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;

namespace StarWarsBackEnd.Services.Utilities
{
    public class RebelSplitter : IDataSplitter
    {
        public List<Rebel> SplitData(StringCollection collection)
        {
            if (collection == null)
            {
                throw new ServiceException("Collection null");
            }

            var rebelList = new List<Rebel>();

            foreach (var linea in collection)
            {
                try
                {
                    String[] data = linea.Split(',');
                    rebelList.Add(RebelFactory.CreateInstance(data[0], data[1]));
                }
                catch (Exception ex)
                {
                    throw new ServiceException("Error al recuperar los datos", ex);
                }
            }

            return rebelList;
        }
    }
}
