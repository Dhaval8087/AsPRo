using System;
using System.Collections.Generic;
using System.Text;

namespace AsPRoTasks.Domain.User
{
    /// <summary>
    /// DB User Modal
    /// </summary>
    public class User
    {
        public int Id { get; set; }

        public string Name { get; set; }
        public string Phone { get; set; }
        public string Address { get; set; }
    }
}
