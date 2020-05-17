using Microsoft.EntityFrameworkCore.Storage.ValueConversion.Internal;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace AsPRoTasks.Settings
{
    public static class JsonSettings
    {
        public static void AddCustomJsonSettings(this JsonSerializerSettings settings)
        {
            settings.NullValueHandling = NullValueHandling.Include;
            settings.Converters.Add(new StringEnumConverter { CamelCaseText = true });
        }
    }
}
