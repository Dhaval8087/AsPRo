using AsPRoTasks.Data;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AsPRoTasks.Settings
{
    public class DataBaseSettingsModel
    {
        public string AsPRoTasksCore { get; set; }
    }
    public static class DatabaseSettings
    {
        public static IServiceCollection AddDatabase(this IServiceCollection services,
            DataBaseSettingsModel dbSettingsModel, IHostingEnvironment environment)
        {
            AddCoreDbContext(services, dbSettingsModel);
            return services;
        }

        private static void AddCoreDbContext(IServiceCollection services, DataBaseSettingsModel dbSettingsModel)
        {
            services.AddDbContext<AsPRoTasksContext>(options =>
                options.UseSqlServer(dbSettingsModel.AsPRoTasksCore));

            services.AddScoped<IAsPRoTasksContext>(provider => provider.GetService<AsPRoTasksContext>());
        }
    }
}
