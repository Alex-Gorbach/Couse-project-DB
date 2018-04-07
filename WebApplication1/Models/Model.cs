using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Oracle.ManagedDataAccess.Client;
using System.Data.Objects;
using System.Data.OracleClient;

namespace WebApplication1.Models
{
    public class Model { }
    public class mo
    {
        public static int FindMovieID()
        {

            using (Entities ent = new Entities())
            {
                int u = 0;
                var e = from i in ent.MOVIES select i.MOVIE_ID;
                foreach (int item in e)
                {
                    u = item;
                }
                return u;
            }
        }
        public static string NameMovie(int id)
        {
            using (Entities data = new Entities())
            {

                var param = new ObjectParameter("iON", typeof(String));

                data.GET_MOVIE_NAME(id, param);

                string name = param.Value.ToString();
                return name;
            }
        }
        public static string NameDeskription(int id)
        {
            using (Entities data = new Entities())
            {

                var param = new ObjectParameter("iON", typeof(String));

                data.GET_MOVIE_DESCRIPTION(id, param);

                string description = param.Value.ToString();
                return description;
            }
            
        }

        public static string MovieImage(int id)
        {
           
            using (Entities data = new Entities())
            {
               
                var param = new ObjectParameter("iON", typeof(String));
               
                data.GET_IMAGE_NAME(id,param);
               
                var name = param.Value.ToString();

                var param1 = new ObjectParameter("iON", typeof(String));

                data.GET_IMAGE_DIR(id, param);

                var dir = param.Value.ToString();
                string full =dir+@"/"+name;

                return full ;
            }




        }
        public static string MovieTrailer(int id)
        {

            using (Entities data = new Entities())
            {

                var param = new ObjectParameter("iON", typeof(String));

                data.GET_TRAILER_NAME(id, param);

                var name = param.Value.ToString();

                var param1 = new ObjectParameter("iON", typeof(String));

                data.GET_TRAILER_DIR(id, param);

                var dir = param.Value.ToString();
                string full = dir + @"/" + name;

                return full;
            }

        }

        

        public static string MovieAudio(int id)
        {

            using (Entities data = new Entities())
            {

                var param = new ObjectParameter("iON", typeof(String));

                data.GET_SOUNDTRACK_NAME(id, param);

                var name = param.Value.ToString();

                var param1 = new ObjectParameter("iON", typeof(String));

                data.GET_SOUNDTRACK_DIR(id, param);

                var dir = param.Value.ToString();
                string full = dir + @"/" + name;

                return full;
            }

        }
        public static string MovieAudioName(int id)
        {

            using (Entities data = new Entities())
            {

                var param = new ObjectParameter("iON", typeof(String));

                data.GET_SOUNDTRACK_NAME(id, param);

                var name = param.Value.ToString();

               

                return name;
            }

        }



        


        public static string genre(int id)
        {

            using (Entities data = new Entities())
            {
                int[] array = { };
                var e = from i in data.MOVIES_GENRE where i.MOVIE_ID == id select i.GENRE_ID;
                foreach (var item in e)
                {
                    e.ToArray();
                }
                return null;
            }

        }

        public static string YEAR(int id)
        {

            using (Entities data = new Entities())
            {
                string u = "";
                var e = from i in data.MOVIES where i.MOVIE_ID==id select i.MOVIE_RELISE_DATE;
                foreach (var item in e)
                {
                    u = item.ToString();
                }
                return u.Substring(0, 10);
            }

        }
        public static string DURATION(int id)
        {

            using (Entities data = new Entities())
            {
                string u = "";
                var e = from i in data.MOVIES where i.MOVIE_ID == id select i.MOVIE_DURATION;
                foreach (var item in e)
                {
                    u = item.ToString();
                }
                return u;
            }

        }
    }
    }
    

    
