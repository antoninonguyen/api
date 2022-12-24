namespace MinimalAPEDemo;

//this class is the configuration of endpoint calls for the api
public static class Api
{
    //all of my API endpoint mapping
    public static void ConfigurApi(this WebApplication app)
    {
        //https request get/post/put/delete
        app.MapGet("/Users", GetUsers);
        app.MapGet("/Users/{id}", GetUser);
        app.MapPost("/Users", InsertUser);
        app.MapPut("/Users", UpdateUser);
        app.MapDelete("/Users", DeleteUser);
    }

    //Gets all users endpoint
    private static async Task<IResult> GetUsers(IUserData data)
    {
        try
        {
            return Results.Ok(await data.GetUsers());
        }
        catch (Exception ex)
        {
            //add logging
            return Results.Problem(ex.Message);
        }
    }

    //gets a user endpoint
    private static async Task<IResult> GetUser(int id, IUserData data)
    {
        try
        {
            var results = await data.GetUser(id);
            if (results == null) return Results.NotFound();
            else 
            return Results.Ok(results);
        }
        catch (Exception ex)
        {
            //add logging
            return Results.Problem(ex.Message);
        }
    }

    //insert user endpoint
    private static async Task<IResult> InsertUser(UserModel user, IUserData data)
    {
        try
        {
            await data.InsertUser(user);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            //add logging
            return Results.Problem(ex.Message);
        }
    }

    //updating user info
    private static async Task<IResult> UpdateUser(UserModel user, IUserData data)
    {
        try
        {
            await data.UpdateUser(user);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            //add logging
            return Results.Problem(ex.Message);
        }
    }

    //delete a user
    private static async Task<IResult> DeleteUser(int id, IUserData data)
    {
        try
        {
            await data.DeleteUser(id);
            return Results.Ok();
        }
        catch (Exception ex)
        {
            //add logging
            return Results.Problem(ex.Message);
        }
    }
}
