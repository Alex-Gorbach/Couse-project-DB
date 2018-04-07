using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class All_models
    {
        public IEnumerable<Entities> MOVIES { get; set; }
        public IMAGE_DIR image_dir { get; set; }
    }
}