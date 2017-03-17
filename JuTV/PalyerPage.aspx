<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PalyerPage.aspx.cs" Inherits="JuTV.PalyerPage" %>

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
    <input type="hidden" id="linkinput" value="<%= link %>" /> 

    <div id="player"></div>


    <div class="panel panel-lg">
      <div class="panel-body">
       <div class="media">
         <a class="media-left" href="#">
             <img style="width:40px;height:40px;border-radius:50%;" src="<%= UserInfo.face %>" alt="..."/>
         </a>
         <div class="media-body" style="padding-left:10px;">
         <h5 class="media-heading"><%= UserInfo.title %></h5>
           <span style="font-size:12px;color:#808080" class="glyphicon glyphicon-home"><span style="margin:0 6px;"><%= UserInfo.uname %></span></span> 
           <span style="font-size:12px;color:#808080" class="glyphicon glyphicon-user"><span style="margin:0 6px;"><%= UserInfo.online %></span></span>
         </div>
</div>
      </div>
    </div>



<script type="text/javascript" src="/Content/ckplayer/ckplayer.js" charset="utf-8"></script>
<script type="text/javascript">

        var lol = $("#linkinput").val();
       
        var params = { bgcolor: 'pink', allowFullScreen: true, allowScriptAccess: 'always', wmode: 'transparent' };
        CKobject.embedSWF('/Content/ckplayer/ckplayer.swf', 'player', 'ckplayer_a1', '100%', '300px',{ f:lol ,p:1 }, params);
 
</script>



</body>
</html>
