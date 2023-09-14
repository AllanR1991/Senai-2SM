namespace senai_filmes_webApi.Domains
{
    /// <summary>
    /// Classe que representa a entidade Filmes
    /// </summary>
    public class FilmeDomain
    {
        public int idFilme { get; set; }
        public string titulo { get; set; }
        public int idGenero { get; set; }
    }
}
