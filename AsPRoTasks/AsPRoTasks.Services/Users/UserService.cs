using AsPRoTasks.Data;
using AsPRoTasks.Dto.User;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using System.Linq;
using Microsoft.EntityFrameworkCore;

namespace AsPRoTasks.Services.Users
{
    public interface IUserService
    {
        Task<List<Dto.User.UserDto>> GetUsers();
    }
    public class UserService : IUserService
    {
        private readonly IAsPRoTasksContext _iasProTasksContext;

        public UserService(IAsPRoTasksContext iasProTasksContext)
        {
            _iasProTasksContext = iasProTasksContext;
        }
        public async Task<List<UserDto>> GetUsers()
        {
            var users = (from x_Users in _iasProTasksContext.Users
                             select new UserDto
                             {
                               Id = x_Users.Id,
                               Name=x_Users.Name,
                               Address =x_Users.Address

                             }).AsNoTracking();

            return await users.ToListAsync();
        }
    }
}
