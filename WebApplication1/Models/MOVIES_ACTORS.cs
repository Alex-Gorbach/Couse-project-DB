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
    
    public partial class MOVIES_ACTORS
    {
        public decimal MOVIES_ACTORS_ID { get; set; }
        public decimal ACTOR_ID { get; set; }
        public decimal MOVIE_ID { get; set; }
    
        public virtual ACTORS ACTORS { get; set; }
        public virtual MOVIES MOVIES { get; set; }
    }
}
