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
    
    public partial class MOVIES
    {
        public MOVIES()
        {
            this.FAVORITE = new HashSet<FAVORITE>();
            this.MOVIE_COUNTRY = new HashSet<MOVIE_COUNTRY>();
            this.MOVIE_SOUNDTRACK = new HashSet<MOVIE_SOUNDTRACK>();
            this.MOVIES_ACTORS = new HashSet<MOVIES_ACTORS>();
            this.MOVIES_GENRE = new HashSet<MOVIES_GENRE>();
        }
    
        public decimal MOVIE_ID { get; set; }
        public string MOVIE_NAME { get; set; }
        public Nullable<System.DateTime> MOVIE_RELISE_DATE { get; set; }
        public Nullable<decimal> MOVIE_DURATION { get; set; }
        public string DESCRIPTION { get; set; }
    
        public virtual ICollection<FAVORITE> FAVORITE { get; set; }
        public virtual IMAGES IMAGES { get; set; }
        public virtual ICollection<MOVIE_COUNTRY> MOVIE_COUNTRY { get; set; }
        public virtual ICollection<MOVIE_SOUNDTRACK> MOVIE_SOUNDTRACK { get; set; }
        public virtual ICollection<MOVIES_ACTORS> MOVIES_ACTORS { get; set; }
        public virtual TRAILER TRAILER { get; set; }
        public virtual ICollection<MOVIES_GENRE> MOVIES_GENRE { get; set; }
    }
}
