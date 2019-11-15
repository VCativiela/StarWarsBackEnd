using System.Collections.Generic;
using System.Collections.Specialized;
using StarWarsBackEnd.Models.Classes;

namespace StarWarsBackEnd.Services.Utilities
{
    public interface IDataSplitter
    {
        List<Rebel> SplitData(StringCollection collection);
    }
}