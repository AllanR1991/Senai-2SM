// Importar o namespace necessário para usar as classes do OpenAPI.
using Microsoft.OpenApi.Models;
using System.Reflection;

// Criação do objeto 'builder' para configurar e construir a aplicação web.
var builder = WebApplication.CreateBuilder(args);

// Adiciona serviços relacionados a controladores à coleção de serviços da aplicação.
builder.Services.AddControllers();

// Adiciona serviços relacionados à exploração de endpoints à coleção de serviços da aplicação.
builder.Services.AddEndpointsApiExplorer();

// Configuração do Swagger para gerar documentação da API.
builder.Services.AddSwaggerGen(options =>
{
    // Define a versão e informações básicas sobre a API.
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "API Filmes",
        Description = "Api desenvolvida para testarmos as rotas e os Json Gerados.",
        // Comentado: TermsOfService não definido.
        //TermsOfService = new Uri("https://example.com/terms"),
        // Define informações de contato.
        Contact = new OpenApiContact
        {
            Name = "Contato",
            Url = new Uri("https://github.com/AllanR1991")
        }//,
        // Comentado: Informações de licença não definidas.
        //License = new OpenApiLicense
        //{
        //    Name = "Example License",
        //    Url = new Uri("https://example.com/license")
        //}
    });
  
    //Habilita o comentarios feito no codigo atraves do summary para o swagger
    var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";
    options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
});

// Constrói a instância da aplicação web com base nas configurações fornecidas.
var app = builder.Build();

// Verifica se a aplicação está em modo de desenvolvimento.
if (app.Environment.IsDevelopment())
{
    // Habilita o Swagger para geração de documentação.
    app.UseSwagger();

    // Configura o Swagger UI para exibir a documentação gerada.
    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
        options.RoutePrefix = string.Empty;
    });
}

// Middleware de redirecionamento HTTPS.
app.UseHttpsRedirection();

//app.UseStaticFiles();

// Mapeia os controladores para lidar com solicitações HTTP.
app.MapControllers();

// Inicia a execução da aplicação.
app.Run();
