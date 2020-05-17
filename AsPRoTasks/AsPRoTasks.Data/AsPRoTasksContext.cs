using AsPRoTasks.Domain.User;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Storage;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace AsPRoTasks.Data
{
    public interface IAsPRoTasksContext
    {
        DbSet<User> Users { get; set; }
    }
    public class AsPRoTasksContext : DbContext, IAsPRoTasksContext
    {
        public AsPRoTasksContext(DbContextOptions<AsPRoTasksContext> options)
            : base(options)
        {
        }
        public AsPRoTasksContext()
        {

        }
        public DbSet<User> Users { get; set; }
        public async Task<IDbContextTransaction> BeginTransactionAsync()
        {
            return await Database.BeginTransactionAsync().ConfigureAwait(false);
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
           
        }
       

    }
}
