using Microsoft.AspNetCore.Mvc;
using StarWarsBackEnd.Infraestructure.Exceptions.Models;
using StarWarsBackEnd.Services.Repositories.Interfaces;
using StarWarsBackEnd.Services.Splitter;
using System.Collections.Specialized;

namespace StarWarsBackEnd.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController : ControllerBase
    {
        private readonly IRepository _repository;
        private readonly IDataSplitter _dataSplitter;

        public ValuesController(IRepository repository, IDataSplitter dataSplitter)
        {
            _repository = repository;
            _dataSplitter = dataSplitter;
        }

        // POST api/values
        [HttpPost]
        public IActionResult Post([FromBody]StringCollection value)
        {
            try
            {
                var rebelsCollection = _dataSplitter.SplitData(value);
                _repository.SaveData(rebelsCollection);
                return Ok();
            }
            catch (ServiceException)
            {
                return BadRequest("Error al obtener los datos");
            }
            catch (RepositoryException)
            {
                return BadRequest("Error al guardar los datos");
            }
        }
    }
}
