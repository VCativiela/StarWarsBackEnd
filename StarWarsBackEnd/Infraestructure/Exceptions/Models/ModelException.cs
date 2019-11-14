using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StarWarsBackEnd.Infraestructure.Exceptions.Models
{
    public class ModelException: ApplicationException
    { 
            public ModelException(string descripcion) : base(descripcion) { }
            public ModelException(string descripcion, Exception innerException) : base(descripcion, innerException) { }
    }
}
