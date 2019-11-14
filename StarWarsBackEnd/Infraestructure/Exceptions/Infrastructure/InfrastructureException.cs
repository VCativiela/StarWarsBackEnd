using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StarWarsBackEnd.Infraestructure.Exceptions.Models
{
    public class InfrastructureException : ApplicationException
    { 
            public InfrastructureException(string descripcion) : base(descripcion) { }
            public InfrastructureException(string descripcion, Exception innerException) : base(descripcion, innerException) { }
    }
}
