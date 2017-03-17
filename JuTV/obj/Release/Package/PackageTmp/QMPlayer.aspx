<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QMPlayer.aspx.cs" Inherits="JuTV.QMPlayer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css">
<script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
     
   
     <title>聚TV</title>
</head>
  
    
<body>
     
     

 <input type="hidden" id="linkinput" value="<%= UserInfo.video %>" /> 

<div id="videoContainer" style="width:100%;height:300px;"></div>
   




    <div class="panel panel-lg">
      <div class="panel-body">
       <div class="media">
         <a class="media-left" href="#">
             <img style="width:40px;height:40px;border-radius:50%;" src="<%= UserInfo.avatar %>" alt="..."/>
         </a>
         <div class="media-body" style="padding-left:10px;">
         <h5 class="media-heading"><%= UserInfo.title %></h5>
           <span style="font-size:12px;color:#808080" class="glyphicon glyphicon-home"><span style="margin:0 6px;"><%= UserInfo.nick %></span></span> 
           <span style="font-size:12px;color:#808080" class="glyphicon glyphicon-user"><span style="margin:0 6px;"><%= UserInfo.follow %></span></span>
         </div>
</div>
      </div>
    </div>

   <script type="text/javascript" src="http://cytron.cdn.videojj.com/latest/cytron.core.js"></script>

<script type="text/javascript">
    var link = $("#linkinput").val().trim();
    var ivaInstance = new Iva(
 'videoContainer',//新建一个div作为视频播放的窗口，建议div的宽高在640px*480px以上；
 {
     appkey: 'rJxeZD5fx',//必填，请在控制台查看应用标识
     video: link,//必填，播放地址（例如：http://v.youku.com/v_show/id_XMTY5NDg2MzY5Ng==.html）
     title: '小视频',//选填，建议填写方便后台数据统计
     cover: '视频封面url',//选填，视频封面url
     playerUrl: '', //选填，第三方播放器与Video++互动层的桥接文件，由Video++官方定制提供，默认为空
     videoStartPrefixSeconds: 0,//选填，跳过片头，默认为0
     videoEndPrefixSeconds: 0,//选填，跳过片尾，默认为0
     /* 以下参数可以在“控制台->项目看板->应用管理->播放器设置” >进行全局设置，前端设置可以覆盖全局设置 */
     skinSelect: 2,//选填，播放器皮肤，可选0、1、2，默认为0，
     autoplay: true,//选填，是否自动播放，默认为false
     rightHand: false,//选填，是否开启右键菜单，默认为false
     autoFormat: false,//选填，是否自动选择最高清晰度，默>认为false
     bubble: true,//选填，是否开启云泡功能，默认为true
     jumpStep: 10,//选填，左右方向键快退快进的时间
     tagTrack: false,//选填，云链是否跟踪，默认为false
     tagShow: false,//选填，云链是否显示，默认为false
     tagDuration: 5,//选填，云链显示时间，默认为5秒
     tagFontSize: 16,//选填，云链文字大小，默认为16像素
     editorEnable: false, // 选填，当用户登录之后，是否允许加载编辑器，默认为true
     vorEnable: false, // 选填，是否允许加载灵悟，默认为true
     vorStartGuideEnable: false //选填， 是否启用灵悟新人引导，默认为true
 }
);

</script>


     
</body>
</html>
