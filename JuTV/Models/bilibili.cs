using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JuTV.Models
{
    public class bilibili
    {
        public int code { get; set; }
        public string message { get; set; }

        public  List<itemdata> data { get; set; }
    }

    public class itemdata
    {
        public string title { get; set; }
        public string  room_id{ get; set; }
        public string playurl { get; set; }
        public cover cover { get; set; }
       
    }

    public class cover
    {
        public string  src{ get; set; }
    }

    public class BannerData
    {
        public banneritem data { get; set; }
    }
    public class banneritem
    {
        public List<item> banner { get; set; }
    
    }

   
    public class item 
    {
        public string img { get; set; }
        public string link { get; set; }

        public string  title { get; set; }
    }




    public class bbUserInfo
    {
        public bbUserInfo_data data { get; set; }
    }
    public class bbUserInfo_data
    {
        public string face { get; set; }
        public string  online { get; set; }

        public string title { get; set; }

        public string uname { get; set; }
    }

   

   
}