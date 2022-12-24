//start up file when app is launch not showing the static void main all this is in a static void main

//this is in a global cs file
//using DataAccess.Data;
using DataAccess.DbAccess;
using MinimalAPEDemo;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

//add dependency injection to Data Access library
builder.Services.AddSingleton<ISqlDataAccess, SqlDataAccess>();
builder.Services.AddSingleton<IUserData, UserData>();

var app = builder.Build();

// Configure the HTTP request pipeline.

//this allows a basic ui for the api
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

//if someone uses http request it will convert it to https (more secure connection)
app.UseHttpsRedirection();

//add endpoint class "Api.cs"
app.ConfigurApi();

app.Run();
