using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai_filmes_webApi.Domains;
using senai_filmes_webApi.Interfaces;
using senai_filmes_webApi.Repotories;

namespace senai_filmes_webApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GeneroController : ControllerBase
    {
        /// <summary>
        /// Objeto _generoRepository que irá receber todos os metodos definidos na interface IGeneroRepository
        /// </summary>
        private IGeneroRepository _generoRepository { get; set; }

        /// <summary>
        /// Instancia o objeto _generoRepository para que haja a referencia aos métodos no repositorio
        /// </summary>
        public GeneroController()
        {
            _generoRepository = new GeneroRepository();
        }

        /// <summary>
        /// Lista todos os generos
        /// </summary>
        /// <returns>Retorna uma lista de genero e um status code</returns>
        /// dominio/api/generos
        [HttpGet]
        public IActionResult Get()
        {
            //Cria um lista nomeada listaGeneros para receber os dados
            List<GeneroDomain> listaGeneros = _generoRepository.ListarTodos();

            //Retorna o status code 200(ok) com a lista de generos no formato JSON
            return Ok(listaGeneros);
        }
    }
}
