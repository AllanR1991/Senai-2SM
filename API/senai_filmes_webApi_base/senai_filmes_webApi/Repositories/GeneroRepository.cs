using senai_filmes_webApi.Domains;
using senai_filmes_webApi.Interfaces;
using System.Data.SqlClient;

namespace senai_filmes_webApi.Repotories
{
    /// <summary>
    /// Classe responsalvel pelo repositorio dos generos.
    /// Conexão com bando de dados.
    /// </summary>    
    public class GeneroRepository : IGeneroRepository
    {
        /// <summary>
        /// String de Conexao com o bando de dados que recebe os seguintess parametros
        /// Data Source: Nome do servidor
        /// Initial Catalog: Nome do banco de dados
        /// Autenticacao:
        ///     - Windows: Integrate Security = true;
        ///     - SqlServer: User Id= sa; Pwd = Senha;
        /// Integrated Security = true (para conexao integrada com windows)
        /// private string stringConexao = "DataSource = NOTE01-S14; Initial Catalog = Filmes; User Id = sa; Pwd = Senai@134";
        /// </summary>
        private string bdConexao = "Data Source = ALLANR1991-DESK\\SQLEXPRESS; initial catalog = Filme; user Id = SA; pwd = 123456 ";

        public void AtualizarIdCorpo(GeneroDomain genero)
        {
            throw new NotImplementedException();
        }

        public void AtualizarIdUrl(int idGenero, GeneroDomain genero)
        {
            throw new NotImplementedException();
        }

        public GeneroDomain BuscarPorId(int idGenero)
        {
            throw new NotImplementedException();
        }

        public void Cadastrar(GeneroDomain novoGenero)
        {
            throw new NotImplementedException();
        }

        public void Deletar(int idGenero)
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Lista todos os gêneros
        /// </summary>
        /// <returns>Uma lista de gêneros</returns>
        public List<GeneroDomain> ListarTodos()
        {
            //Cria uma lista listaGenero onde serão armazenados os dados
            List<GeneroDomain> listaGeneros = new List<GeneroDomain>();

            //Cria um nova instancia do SqlConnection chamada conexao, usando uma sobrecarga de SqlConnection onde passamos como parametro a string de conexão, dentro do using para que apos a execução ele desconect,  
            using (SqlConnection conexaoSql = new SqlConnection(bdConexao))
            {
                //Declara a instrusão a ser execultada.
                string querySelectAll = "SELECT * FROM Genero";

                //Abre aconexão com o banco de dados;
                conexaoSql.Open();

                //Declara o SqlDataReader rdr para percorrer a tablea do banco de dados
                SqlDataReader rdr;

                //Declara o SqlCommand cmd passando a query que sera execultada e a conexão 
                using (SqlCommand cmd = new SqlCommand(querySelectAll, conexaoSql))
                {
                    //Execulta a query e armazena os dados no rdr
                    rdr = cmd.ExecuteReader();

                    //Enquanto houverregistors para serem lidos no rdr, o laço se repete.
                    while (rdr.Read())
                    {
                        //Instancia um objeto genero do tipo GeneroDomain
                        GeneroDomain genero = new GeneroDomain()
                        {
                            //Atribui a propriedade IdGenero o dalor da primeira coluna da tabela do banco de dados
                            idGenero = Convert.ToInt32(rdr[0]),
                            //Atribui a propriedade nome o valor da segunda coluna da tabela do banco de dados
                            nome = rdr[1].ToString()
                        };
                        //Adiciona o objeto genero à listaGenero
                        listaGeneros.Add(genero);
                    }
                }
            }
            //retorna a lista de generos
            return listaGeneros;
        }
    }
}
