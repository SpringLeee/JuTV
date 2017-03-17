using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace JuTV.API
{
    public class bilibiliApi
    {
        //热门直播
        public static string zhibolist = "http://live.bilibili.com/mobile/rooms?device=android&_hwid=d545b6543d3441c6&appkey=1d8b6e7d45233436&area_id=0&build=430000&mobiapp=android&page=@page&platform=android&sort=hottest&sign=ae35894634b8bbeaa86c4ed428dcc871";

        //banner
        public static string banner = "http://live.bilibili.com/AppNewIndex/common?device=android&platform=android&scale=xhdpi";

        //主播信息
        public static string zhuboInfo = "http://live.bilibili.com/AppRoom/index?device=android&_hwid=d545b6543d3441c6&appkey=1d8b6e7d45233436&build=430000&buld=430000&jumpFrom=25001&mobiapp=android&platform=android&room_id=@1&scale=xhdpi&sign=201dabacfd1f17017b8fb8df7f417470";


    }
}