using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace AsPRoTasks.Controllers
{
    [ApiVersionNeutral]
    [Route("api/healthcheck")]
    public class HealthCheckController : Controller
    {
        [HttpGet]
        [HttpHead]
        [Route("")]
        [AllowAnonymous]
        public async Task<IActionResult> HealthCheck()
        {
            return await Task.FromResult(Ok());
        }
    }
}