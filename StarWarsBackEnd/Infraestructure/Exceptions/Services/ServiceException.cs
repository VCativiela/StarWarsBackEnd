using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StarWarsBackEnd.Infraestructure.Exceptions.Models
{
    public class ServiceException : ApplicationException
    { 
            public ServiceException(string descripcion) : base(descripcion) { }
            public ServiceException(string descripcion, Exception innerException) : base(descripcion, innerException) { }
    }
}
