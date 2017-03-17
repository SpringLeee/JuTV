<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QuanMin.aspx.cs" Inherits="JuTV.QuanMin" %>

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

    <style type="text/css">
        .mydiv{
                -moz-box-shadow: 2px 2px 2px #909090;/*firefox*/
               -webkit-box-shadow: 2px 2px 2px #909090;/*safari或chrome*/
               box-shadow:2px 2px 2px #909090;/*opera或ie9*/
             }
        .data-item {
            border:1px solid pink;
            height:150px;
            width:44%;
            margin:8px 0;
            margin-left:4%;
            float:left;
            border-radius:6px;
             overflow:hidden;
        }
            .data-item span {
                font-size:10px;
               
               line-height:30px;
               padding:0 10px;
                max-width:90%;
                max-height:20px;
               
            }
            .data-item img {
                border-radius:6px 6px 0 0;
                width:100%;
                height:120px;
               
            }
    </style>

    <nav class="navbar navbar-default navbar-static-top" style="margin-bottom:0" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="#">聚TV</a>
    </div>
    <div class="collapse navbar-collapse" id="example-navbar-collapse">
        <ul class="nav navbar-nav" style="margin-top:0;">
            
              <li class="active"><a href="Page1.aspx">哔哩哔哩</a></li>
              <li><a href="QuanMin.aspx">全民</a></li>
              
        </ul>
    </div>
    </div>
</nav>

    <div id="carousel-example-generic" class="carousel slide"  data-ride="carousel">
              
                <div  class="carousel-inner" role="listbox">

                  <% for (int i = 0; i < ListBanner.Count; i++){ %>

                    <div class="item <%= i==0?" active":"" %>">
                      <a href="/QMPlayer.aspx?uid=<%= ListBanner[i].link_object.uid %>"><img src="<%= ListBanner[i].thumb %>" /></a>
                    </div>

                   <% } %>
                   
                </div>


                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span style="font-size:24px" class="glyphicon glyphicon-chevron-left"></span><span class="sr-only">Previous</span> </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span style="font-size:24px" class="glyphicon glyphicon-chevron-right"></span>  <span class="sr-only">Next</span> </a>

      </div>

    <div style="width:100%;margin:4px auto">

        <% foreach (var item in ListVideo){%>

        <div class="data-item mydiv" >
            <div>
               <a href="/QMPlayer.aspx?uid=<%= item.uid %>"> <img src="<%= item.thumb %>" /></a>
            </div>
            <div>
                 <span><%= item.title %></span>

            </div>
        </div>
    
        <%  } %>

    </div>

<script type="text/javascript">
    $(function () {





    });
</script>

</body>
</html>
