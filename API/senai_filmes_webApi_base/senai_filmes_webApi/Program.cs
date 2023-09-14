using Microsoft.OpenApi.Models; // Importa o namespace para lidar com o Swagger
using System.Reflection; // Importa o namespace para manipular informa��es de assemblies

var builder = WebApplication.CreateBuilder(args); // Cria um objeto 'builder' para configurar a aplica��o

builder.Services.AddControllers(); // Adiciona servi�os para controladores

builder.Services.AddEndpointsApiExplorer(); // Adiciona servi�os para explorar os endpoints da API
builder.Services.AddSwaggerGen(options => // Configura o Swagger
{
    options.SwaggerDoc("v1", new OpenApiInfo // Define a documenta��o do Swagger para a vers�o "v1" da API
    {
        Version = "v1",
        Title = "ToDo API",
        Description = "An ASP.NET Core Web API for managing ToDo items",
        TermsOfService = new Uri("https://example.com/terms"), // Define os termos de servi�o da API
        Contact = new OpenApiContact // Define informa��es de contato
        {
            Name = "Example Contact",
            Url = new Uri("https://example.com/contact")
        },
        License = new OpenApiLicense // Define informa��es de licen�a
        {
            Name = "Example License",
            Url = new Uri("https://example.com/license")
        }
    });

    // Obt�m o nome do arquivo XML de documenta��o do assembly atual
    var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";

    // Inclui os coment�rios XML da documenta��o no Swagger
    options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
});

var app = builder.Build(); // Constr�i a aplica��o

if (app.Environment.IsDevelopment()) // Verifica se a aplica��o est� em ambiente de desenvolvimento
{
    app.UseSwagger(); // Habilita o Swagger para gerar documenta��o da API
    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1"); // Define a URL da documenta��o gerada pelo Swagger
        options.RoutePrefix = string.Empty; // Define o prefixo da rota do Swagger
    });
}

app.UseHttpsRedirection(); // Redireciona para HTTPS
app.UseStaticFiles(); // Habilita o uso de arquivos est�ticos
app.MapControllers(); // Mapeia os controladores da API

app.Run(); // Executa a aplica��o