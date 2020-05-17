using AutoMapper;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AsPRoTasks.Settings
{
    public static class MappingSettings
    {
        public static void AddMapping(this IServiceCollection services)
        {
            services.AddSingleton(provider => new MapperConfiguration(cfg =>
            {
                cfg.AddProfile(new MappingProfile());
            }).CreateMapper());
        }
    }
    public class MappingProfile : Profile
    {
        public MappingProfile()
        { }
    }
}
