// Importar o namespace necess�rio para usar as classes do OpenAPI.
using Microsoft.OpenApi.Models;
using System.Reflection;

// Cria��o do objeto 'builder' para configurar e construir a aplica��o web.
var builder = WebApplication.CreateBuilder(args);

// Adiciona servi�os relacionados a controladores � cole��o de servi�os da aplica��o.
builder.Services.AddControllers();

// Adiciona servi�os relacionados � explora��o de endpoints � cole��o de servi�os da aplica��o.
builder.Services.AddEndpointsApiExplorer();

// Configura��o do Swagger para gerar documenta��o da API.
builder.Services.AddSwaggerGen(options =>
{
    // Define a vers�o e informa��es b�sicas sobre a API.
    options.SwaggerDoc("v1", new OpenApiInfo
    {
        Version = "v1",
        Title = "API Filmes",
        Description = "Api desenvolvida para testarmos as rotas e os Json Gerados.",
        // Comentado: TermsOfService n�o definido.
        //TermsOfService = new Uri("https://example.com/terms"),
        // Define informa��es de contato.
        Contact = new OpenApiContact
        {
            Name = "Contato",
            Url = new Uri("https://github.com/AllanR1991")
        }//,
        // Comentado: Informa��es de licen�a n�o definidas.
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

// Constr�i a inst�ncia da aplica��o web com base nas configura��es fornecidas.
var app = builder.Build();

// Verifica se a aplica��o est� em modo de desenvolvimento.
if (app.Environment.IsDevelopment())
{
    // Habilita o Swagger para gera��o de documenta��o.
    app.UseSwagger();

    // Configura o Swagger UI para exibir a documenta��o gerada.
    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1");
        options.RoutePrefix = string.Empty;
    });
}

// Middleware de redirecionamento HTTPS.
app.UseHttpsRedirection();

//app.UseStaticFiles();

// Mapeia os controladores para lidar com solicita��es HTTP.
app.MapControllers();

// Inicia a execu��o da aplica��o.
app.Run();
