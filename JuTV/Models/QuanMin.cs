using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JuTV.Models
{
    public static class QuanMin
    {
        public class QMBannerData
        {
            public List<QmbannerItem> app_focus { get; set; }
        }
        public class QmbannerItem
        {
            public string thumb { get; set; }

            public string title { get; set; }
            public linkob link_object { get; set; }
        }

        public class linkob
        {
            public string uid{ get; set; }
        }

        public class VideoData 
        {
            public List<VideoItem> data { get; set; }
        }

        public class VideoItem
        {
            public string thumb { get; set; }

            public string title { get; set; }

            public string uid { get; set; }
        }

        public class UserData
        {
            public string uid { get; set; }
            public string title { get; set; }
            public string nick { get; set; }
            public string  follow { get; set; }
            public string video { get; set; }
            public string avatar { get; set; }
        }

       

    }
   
    


}