using senai_filmes_webApi.Domains;
using senai_filmes_webApi.Interfaces;
using System.Collections.Specialized;
using System.Data.SqlClient;

namespace senai_filmes_webApi.Repositories
{
    public class FilmeRepository : IFilmeRepository
    {
        /// <summary>
        /// String que contem o servidor nome do banco de dados, usuario e 
        /// </summary>
        private string bdConexao = "Data Source = ALLANR1991-DESK\\SQLEXPRESS; initial catalog = Filme; user Id = SA; pwd = 123456";
        public void AtualizarIdCorpo(FilmeDomain filme)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int idFilme, FilmeDomain filme)
        {
            throw new NotImplementedException();
        }

        public FilmeDomain BuscarPorId(int idFilme)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(FilmeDomain novoFilme)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int idFilme)
        {
            throw new NotImplementedException();
        }

        public List<FilmeDomain> ListarTodos()
        {
            List<GeneroDomain> listaFilme = new FilmeDomain();


            using (SqlConnection sqlConexao = new SqlConnection(Banco.StringConexao()))
            {
                string querySelectAll = "SELECT * FROM Filme";

                sqlConexao.Open();

                SqlDataReader reader;

                using (SqlCommand cmd = new SqlCommand(querySelectAll,sqlConexao)) 
                {
                    reader = cmd.ExecuteReader();

                    
                }
            }





            return List<>;
        }
    }
}
