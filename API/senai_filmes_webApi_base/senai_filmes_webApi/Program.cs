using Microsoft.OpenApi.Models; // Importa o namespace para lidar com o Swagger
using System.Reflection; // Importa o namespace para manipular informações de assemblies

var builder = WebApplication.CreateBuilder(args); // Cria um objeto 'builder' para configurar a aplicação

builder.Services.AddControllers(); // Adiciona serviços para controladores

builder.Services.AddEndpointsApiExplorer(); // Adiciona serviços para explorar os endpoints da API
builder.Services.AddSwaggerGen(options => // Configura o Swagger
{
    options.SwaggerDoc("v1", new OpenApiInfo // Define a documentação do Swagger para a versão "v1" da API
    {
        Version = "v1",
        Title = "ToDo API",
        Description = "An ASP.NET Core Web API for managing ToDo items",
        TermsOfService = new Uri("https://example.com/terms"), // Define os termos de serviço da API
        Contact = new OpenApiContact // Define informações de contato
        {
            Name = "Example Contact",
            Url = new Uri("https://example.com/contact")
        },
        License = new OpenApiLicense // Define informações de licença
        {
            Name = "Example License",
            Url = new Uri("https://example.com/license")
        }
    });

    // Obtém o nome do arquivo XML de documentação do assembly atual
    var xmlFilename = $"{Assembly.GetExecutingAssembly().GetName().Name}.xml";

    // Inclui os comentários XML da documentação no Swagger
    options.IncludeXmlComments(Path.Combine(AppContext.BaseDirectory, xmlFilename));
});

var app = builder.Build(); // Constrói a aplicação

if (app.Environment.IsDevelopment()) // Verifica se a aplicação está em ambiente de desenvolvimento
{
    app.UseSwagger(); // Habilita o Swagger para gerar documentação da API
    app.UseSwaggerUI(options =>
    {
        options.SwaggerEndpoint("/swagger/v1/swagger.json", "v1"); // Define a URL da documentação gerada pelo Swagger
        options.RoutePrefix = string.Empty; // Define o prefixo da rota do Swagger
    });
}

app.UseHttpsRedirection(); // Redireciona para HTTPS
app.UseStaticFiles(); // Habilita o uso de arquivos estáticos
app.MapControllers(); // Mapeia os controladores da API

app.Run(); // Executa a aplicação