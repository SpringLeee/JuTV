using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JuTV.API
{
    public class QuanMinApi
    {
        //banner
        public static string banner="http://www.quanmin.tv/json/page/app-data/info.json?v=2.2.4&os=1&ver=4";

        public static string zhuboList = "http://www.quanmin.tv/json/categories/lol/list.json?11301226&v=2.2.4&os=1&ver=4";

        public static string videoinfo = "http://www.quanmin.tv/json/rooms/@uid/info1.json?11301240&v=2.2.4&os=1&ver=4";

        public static string live = "http://hls.quanmin.tv/live/@uid_L4/playlist.m3u8";
    }
}