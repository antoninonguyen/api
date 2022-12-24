using Dapper;
using System.Data;
using Microsoft.Extensions.Configuration;
using System.Data.SqlClient;

namespace DataAccess.DbAccess;

public class SqlDataAccess : ISqlDataAccess // use interface for dependency injection
{
    private readonly IConfiguration _config;

    //initialize configuration
    public SqlDataAccess(IConfiguration config)
    {
        _config = config;
    }

    //loading data async
    public async Task<IEnumerable<T>> LoadData<T, U>(
        string storedProcedure,
        U parameters,
        //this is configured in your web app project appsettings.json file
        //for default connection string
        string connectionId = "Default")
    {
        //this searches the appsetting.json file (in web app) for the connectionId parameter
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        return await connection.QueryAsync<T>(storedProcedure, parameters,
            commandType: CommandType.StoredProcedure);
    }

    //save data async
    public async Task SaveData<T>(
        string storedProcedure,
        T parameters,
        //this is configured in your web app project appsettings.json file
        //for default connection string
        string connectionId = "Default")
    {
        //this searches the appsetting.json file (in web app) for the connectionId parameter
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        await connection.ExecuteAsync(storedProcedure, parameters,
            commandType: CommandType.StoredProcedure);
    }
}