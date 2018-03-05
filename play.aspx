<%@ Page Language="C#" AutoEventWireup="true" CodeFile="play.aspx.cs" Inherits="play" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
   	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/globe.css" rel="stylesheet" type="text/css" />
  
    <link href="css/style2.css" rel="stylesheet" /><!--下拉菜单的css-->
    <script src="js/custom.js" type="text/javascript"></script><!--下拉菜单的js-->
    <title>Video</title>
    <link href="css/video2.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
    
<!-- css -->
<link href="css/style.css" rel="stylesheet">
<link href="css/icons.css" rel="stylesheet">
<link rel="stylesheet" id="main_color" href="css/skin-orange.css" media="screen"/>
</head>
<body>
    <form id="form1" runat="server">
   

  <header>
	<div class="container clearfix">
		<div class="row-fluid">
			<div class="span12">				
				<a href="index.html"><p class="logo">MoviesHome</p></a>
				<div class="topinfo">
					<ul class="social-icons list-soc">
						<li><a href="#"><i class="icon-facebook"></i></a></li>
						<li><a href="#"><i class="icon-twitter"></i></a></li>
						<li><a href="#"><i class="icon-linkedin"></i></a></li>
						<li><a href="#"><i class="icon-google-plus"></i></a></li>
						<li><a href="#"><i class="icon-pinterest"></i></a></li>
					</ul>
					<div class="infophone">
						<i class="icon-phone"></i> Tel: +8 737 924 6035
					</div>
					<div class="infoaddress">
						 3953 Berkley Street, Fort Washington, 19034
					</div>
				</div>
				<div class="clearfix">
				</div>
				
			</div>
		</div>
	</div>
	</header>
  <!--video-->
  <div class="video">
<br><br>
    <div class="video_in">
      <div class="c_location"style="float:left; font-size:20px;">当前位置:<a href="index.aspx">视频</a>><%=mname%>视频</div>
	
	<div class="row-nav navbar" style="float:right; margin-top:-20px">
	    <div class="navbar-inner">				
		<form id="search" action="#" method="GET">							
			<input type="text" onFocus="if(this.value =='Enter search keywords here...' ) this.value=''" onBlur="if(this.value=='') this.value='Enter search keywords here...'" value="热门搜索：不可思议" name="s">
			<a href="#"></a>							
		</form>
	    </div>
	</div><br><br>
      <div class="video_v">
        <video width="960" height="497" controls="controls" class="fl">
          <source src="<%=murl %>"  type="video/mp4">
        </video>
        <div class="video_p">
          <div class="video_pin"><a href="">目录</a></div>
          <div class="sidehide"></div>
          <div class="overlay" style="display:none;"></div>
          <div class="video_pin"><a href="">笔记</a></div>
          <div class="sidehide"></div>
          <div class="overlay" style="display:none;"></div>
          <div class="video_pin"><a href="">收藏</a></div>
          <div class="sidehide"></div>
          <div class="overlay" style="display:none;"></div>
        </div>
      </div>
    </div>
  </div>
 
    </form>
</body>
</html>
