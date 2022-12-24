using DataAccess.DbAccess;
using DataAccess.Models;
namespace DataAccess.Data;


//where we talk to to get data
public class UserData : IUserData //allows dependency injection
{
    private readonly ISqlDataAccess _db;

    public UserData(ISqlDataAccess db)
    {
        _db = db;
    }

    //method to get users
    public Task<IEnumerable<UserModel>> GetUsers() =>
        //this is to talk to ISqlDataAccess
        _db.LoadData<UserModel, dynamic>("dbo.spUser_GetAll", new { });

    //method to get user
    public async Task<UserModel?> GetUser(int id)
    {
        var results = await _db.LoadData<UserModel, dynamic>(
            "dbo.spUser_Get",
            new { Id = id });
        //return the first value, if null returns null
        return results.FirstOrDefault();
    }

    //method to insert user
    public Task InsertUser(UserModel user) =>
        _db.SaveData("dbo.spUser_Insert", new { user.FirstName, user.LastName });

    //method to update a user
    public Task UpdateUser(UserModel user) =>
        _db.SaveData("dbo.spUser_Update", user);

    //method to delete a user
    public Task DeleteUser(int id) =>
        _db.SaveData("dbo.spUser_Delete", new { Id = id });
}