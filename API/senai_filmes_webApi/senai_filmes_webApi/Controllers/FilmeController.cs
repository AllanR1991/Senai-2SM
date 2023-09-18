using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai_filmes_webApi.Domains;
using senai_filmes_webApi.Interfaces;
using senai_filmes_webApi.Repositories;
namespace senai_filmes_webApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class FilmeController : ControllerBase
    {
        //Objeto que ira receber todos os metodos definidos na interface IFilmeRepository porem é somente isso ele não sabe como funciona o metodo
        private IFilmeRepository _filmeRepository { get; set; }

        /// <summary>
        /// Criado um construtor onde sempre que houver uma requisição ou chamada para FilmeController ele automaticamente ja Instancia o objeto _filmeRepository para que haja a referencia aos métodos no repositorio
        /// </summary>
        public FilmeController()
        {
            _filmeRepository = new FilmeRepository();
        }

        /// <summary>
        /// O End-point tem como função listar todos os filmes registrados no sistema.
        /// </summary>
        /// <returns>Retornando um status code 200 juntamente com a listaDeFilmes obtida pela busca.</returns>
        [HttpGet]
        public IActionResult Get()
        {
            List<FilmeDomain> listaFilme = _filmeRepository.ListarTodos();

            return Ok(listaFilme);
        }

        /// <summary>
        /// Este End-Point Cadastra um novo Filme.
        /// </summary>
        /// <param name="novoFilme">Objeto contento as informações do novo filme a ser cadastrado.</param>
        /// <returns></returns>
        [HttpPost]
        public IActionResult Post(FilmeDomain novoFilme)
        {
            _filmeRepository.Cadastrar(novoFilme);

            return NoContent();
        }

        /// <summary>
        /// End-Point responsavel por efetuar a exclusão de um Filme, passando o ID pela Url do End-Point
        /// </summary>
        /// <param name="id">Id que sera deletado do banco de dados.</param>
        /// <returns> Retorna um status code NoContent-204 </returns>
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _filmeRepository.Deletar(id);

            return NoContent();
        }

        [HttpGet("{id}")]

        public IActionResult BuscarId(int id)
        {
            FilmeDomain filme = _filmeRepository.BuscarPorId(id);

            if (filme != null)
            {
                return Ok(filme);
            }
            return NotFound($"Nenhum Filme foi encontrado com id = {id}.");

        }

        [HttpPut("{id}")]
        public IActionResult AtualizaIdUrl(int id, FilmeDomain filme)
        {
            FilmeDomain filmeExiste = _filmeRepository.BuscarPorId(id);

            if(filmeExiste != null)
            {
                _filmeRepository.AtualizarIdUrl(id, filme);
                return NoContent();
            }

            return NotFound(
                new
                {
                    mensagem = "Filme não encontrado!",
                    erro = true
                });
        }

        [HttpPut]
        public IActionResult AtualizaIdCorpo(FilmeDomain filme)
        {
            FilmeDomain filmeExiste = _filmeRepository.BuscarPorId(filme.idFilme);

            if (filmeExiste != null)
            {
                _filmeRepository.AtualizarIdCorpo(filme);
                return NoContent();
            }
            return NotFound(
                new
                {
                    mensagem = "Filme não encontrado!",
                    erro = true
                }
                );
        }
    }
}
