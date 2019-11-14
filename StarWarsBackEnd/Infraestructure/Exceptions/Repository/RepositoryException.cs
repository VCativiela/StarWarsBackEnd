using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StarWarsBackEnd.Infraestructure.Exceptions.Models
{
    public class RepositoryException : ApplicationException
    { 
            public RepositoryException(string descripcion) : base(descripcion) { }
            public RepositoryException(string descripcion, Exception innerException) : base(descripcion, innerException) { }
    }
}
