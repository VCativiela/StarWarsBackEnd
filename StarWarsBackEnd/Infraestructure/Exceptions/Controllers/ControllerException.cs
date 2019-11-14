using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StarWarsBackEnd.Infraestructure.Exceptions.Models
{
    public class ControllerException : ApplicationException
    { 
            public ControllerException(string descripcion) : base(descripcion) { }
            public ControllerException(string descripcion, Exception innerException) : base(descripcion, innerException) { }
    }
}
