using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JuTV.Models
{
    public static class DouYu
    {
        public class VideoData
        {
            public List<dataitem> data { get; set; }
        }
        public class dataitem
        {
            public string room_name { get; set; }

            public string room_src{ get; set; }

            public string  room_id { get; set; }
        }

        public class bannerdata
        {
            public List<bannerdataitem> data;
        }
        public class bannerdataitem
        {
            public string video_title { get; set; }

            public string  video_cover { get; set; }
        }
       
    }
}