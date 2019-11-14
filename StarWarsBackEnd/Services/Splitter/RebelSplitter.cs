using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Models.Classes;
using StarWarsBackEnd.Models.Factories;
using System;
using System.Collections.Generic;
using System.Collections.Specialized;

namespace StarWarsBackEnd.Services.Splitter
{
    public class RebelSplitter : IDataSplitter
    {
        public List<Rebel> SplitData(StringCollection collection)//, out IEnumerable<Exception> exceptions)
        {
            var rebelList = new List<Rebel>();

            var rebelListEx = new List<Exception>();
            //https://stackoverflow.com/questions/10630619/if-an-exception-is-thrown-in-a-listt-foreach-does-the-iteration-stop

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
                   // rebelListEx.Add(new ServiceException("Error al procesar los datos", ex));
                }
            }
            // exceptions = rebelListEx;

            return rebelList;
        }
    }
}
