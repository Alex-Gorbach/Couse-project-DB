//------------------------------------------------------------------------------
// <auto-generated>
//    Этот код был создан из шаблона.
//
//    Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//    Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebApplication1.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class ACTORS
    {
        public ACTORS()
        {
            this.MOVIES_ACTORS = new HashSet<MOVIES_ACTORS>();
        }
    
        public decimal ACTOR_ID { get; set; }
        public string ACTOR_NAME { get; set; }
    
        public virtual ICollection<MOVIES_ACTORS> MOVIES_ACTORS { get; set; }
    }
}
