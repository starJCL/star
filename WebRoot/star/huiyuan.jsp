<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>会员充值</title>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

    <script src="/StarBBS/js/libs/webfontloader.min.js"></script>
    <script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
    <script>
        WebFont.load({
            google: {
                families: ['Roboto:300,400,500,700:latin']
            }
        });
    </script>
    
    <script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
    <script type="text/javascript">
  	 $(function() {
    	$("#1").css({"border":"2px solid grey"});
        $("#2").css({"border":"2px solid grey"});
        $("#3").css({"border":"2px solid grey"});
        $("#4").css({"border":"2px solid grey"});
        $("#5").css({"border":"2px solid grey"});
        $("#6").css({"border":"2px solid grey"}); 
    }); 
    
    
    
     function dj(a){
		 if(a==1){
        $("#1").css({"border":"2px solid red"});
        $("#2").css({"border":"2px solid grey"});
        $("#3").css({"border":"2px solid grey"});
        $("#4").css({"border":"2px solid grey"});
        $("#5").css({"border":"2px solid grey"});
        $("#6").css({"border":"2px solid grey"});
        var zhi=$("#1").val();
         $("#span").html(zhi);
         $("#6").val("1");
        }else if(a==2){
        $("#2").css({"border":"2px solid red"});
        $("#1").css({"border":"2px solid grey"}); 
        $("#3").css({"border":"2px solid grey"}); 
        $("#4").css({"border":"2px solid grey"}); 
        $("#5").css({"border":"2px solid grey"}); 
        $("#6").css({"border":"2px solid grey"}); 
        var zhi=$("#2").val();
         $("#span").html(zhi);
         $("#6").val("1");
        }else if(a==3){
        $("#3").css({"border":"2px solid red"});
        $("#1").css({"border":"2px solid grey"}); 
        $("#2").css({"border":"2px solid grey"}); 
        $("#4").css({"border":"2px solid grey"}); 
        $("#5").css({"border":"2px solid grey"}); 
        $("#6").css({"border":"2px solid grey"}); 
        var zhi=$("#3").val();
         $("#span").html(zhi);
         $("#6").val("1");
        }else if(a==4){
        $("#4").css({"border":"2px solid red"});
        $("#1").css({"border":"2px solid grey"}); 
        $("#2").css({"border":"2px solid grey"}); 
        $("#3").css({"border":"2px solid grey"}); 
        $("#5").css({"border":"2px solid grey"}); 
        $("#6").css({"border":"2px solid grey"});
        var zhi=$("#4").val();
         $("#span").html(zhi); 
         $("#6").val("1");
        }else if(a==5){
        $("#5").css({"border":"2px solid red"});
        $("#1").css({"border":"2px solid grey"}); 
        $("#2").css({"border":"2px solid grey"}); 
        $("#3").css({"border":"2px solid grey"}); 
        $("#4").css({"border":"2px solid grey"}); 
        $("#6").css({"border":"2px solid grey"}); 
        var zhi=$("#5").val();
         $("#span").html(zhi);
         $("#6").val("1");
        }else if(a==6){
        $("#6").css({"border":"2px solid red"});
        $("#1").css({"border":"2px solid grey"}); 
        $("#2").css({"border":"2px solid grey"}); 
        $("#3").css({"border":"2px solid grey"}); 
        $("#4").css({"border":"2px solid grey"}); 
        $("#5").css({"border":"2px solid grey"});
        var zhi=$("#6").val()*10;
        $("#span").html(zhi+"元");
        }
     }
     
     function zdy(){
     	 var zhi=$("#6").val()*10; 
        $("#span").html(zhi+"元");
     }
     
     
     function zhifu(){
     var username='${name}';//获取用户名
    var img1= $('input:radio[id="img1"]:checked').val();
     var img2= $('input:radio[id="img2"]:checked').val();
     if(img1=="on"){
     	$("#yinc").html("<img id='ws' src=/StarBBS/img/WXS.jpg></img>");
     }else if(img2=="on"){
    	 $("#yinc").html("<img id='zz' src=/StarBBS/img/ZFBS.jpg></img>");
     }
    	$.ajax({
			url : '/StarBBS/star/vip',
			type : 'get',
			data : {user_grade:2,username:username},
			success :function(data){
			alert("充值成功!");
			 window.location="../login.jsp"
			}			
			});	
     }
     
     function yichu(){
     $("#ws").remove();
     $("#zz").remove();
     }
     
    </script>
    <style type="text/css">
    .dan{
    display:inline;
    }
    
    #yinc{
    position: absolute;
    top :-100px;
    left: 180px;    
    }
    
    </style>
    

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap-grid.css">

	<!-- Main Styles CSS -->
	<link rel="stylesheet" type="text/css" href="/StarBBS/css/main.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/css/fonts.min.css">


</head>
<body class="page-has-left-panels page-has-right-panels">


<!-- Preloader -->

<div id="hellopreloader">
	<div class="preloader">
		<svg width="45" height="45" stroke="#fff">
			<g fill="none" fill-rule="evenodd" stroke-width="2" transform="translate(1 1)">
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22"/>
					<animate attributeName="stroke-opacity" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0"/>
					<animate attributeName="stroke-width" begin="1.5s" calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0"/>
				</circle>
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="6;22"/>
					<animate attributeName="stroke-opacity" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0"/>
					<animate attributeName="stroke-width" begin="3s" calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0"/>
				</circle>
				<circle cx="22" cy="22" r="8">
					<animate attributeName="r" begin="0s" calcMode="linear" dur="1.5s" repeatCount="indefinite" values="6;1;2;3;4;5;6"/>
				</circle>
			</g>
		</svg>

		<div class="text">Loading ...</div>
	</div>
</div>
<!-- Fixed Sidebar Left -->

<jsp:include page="../left.jsp"></jsp:include>


<jsp:include page="../right.jsp"></jsp:include>

<!-- ... end Fixed Sidebar Left -->

<jsp:include page="../header.jsp"></jsp:include>
<!-- Responsive Header-BP -->

<header class="header header-responsive" id="site-header-responsive">

	<div class="header-content-wrapper">
		<ul class="nav nav-tabs mobile-app-tabs" role="tablist">
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#request" role="tab">
					<div class="control-icon has-items">
						<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
						<div class="label-avatar bg-blue">6</div>
					</div>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#chat" role="tab">
					<div class="control-icon has-items">
						<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
						<div class="label-avatar bg-purple">2</div>
					</div>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#notification" role="tab">
					<div class="control-icon has-items">
						<svg class="olymp-thunder-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-thunder-icon"></use></svg>
						<div class="label-avatar bg-primary">8</div>
					</div>
				</a>
			</li>

			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#search" role="tab">
					<svg class="olymp-magnifying-glass-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-magnifying-glass-icon"></use></svg>
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</li>
		</ul>
	</div>

	<!-- Tab panes -->
	
</header>

<!-- ... end Responsive Header-BP -->
<div class="header-spacer header-spacer-small"></div>

<!-- Main Header Account -->

<div class="main-header">
	<div class="content-bg-wrap bg-account"></div>
	<div class="container">
		<div class="row">
			<div class="col col-lg-8 m-auto col-md-8 col-sm-12 col-12">
				<div class="main-header-content">
					<h1>您的充值入口</h1>
					<p>欢迎使用您的充值入口！在这里，您可以使用微信或者支付宝的付款方式来进行付款,充值月数最低为一个月</p>
				</div>
			</div>
		</div>
	</div>
	<img class="img-bottom" src="/StarBBS/img/account-bottom.png" alt="friends">
</div>

<!-- ... end Main Header Account -->



<!-- Your Account Personal Information -->

<div class="container">
	<div class="row">

				<div class="col col-xl-9 order-xl-2 col-lg-9 order-lg-2 col-md-12 order-md-1 col-sm-12 col-12">
			<div class="ui-block">
				<div class="ui-block-content">

					
					<!-- Change Password Form -->
					
					<form>
						<div class="row">
					
							<div class="col col-xl-4 col-lg-4 col-md-12 col-sm-12 col-12">
								<div class="form-group label-floating"  onclick="dj('1')">
									<label class="control-label">连续包月</label>
									<input id="1" disabled="disabled" value="9.8元">
								</div>
							</div>
							
							
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
								<div class="form-group label-floating is-empty" onclick="dj('2')">
									<label class="control-label" style="position: absolute;top:10px">1个月</label>
									<input id="2" disabled="disabled" value="10元">
								</div>
							</div>
	
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
								<div class="form-group label-floating is-empty" onclick="dj('3')">
									<label class="control-label" style="position: absolute;top:10px">3个月</label>
									<input id="3" disabled="disabled" value="30元">
								</div>
							</div>
				
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
								<div class="form-group label-floating is-empty" onclick="dj('4')">
									<label class="control-label" style="position: absolute;top:10px">6个月</label>
									<input id="4" disabled="disabled" value="60元">
								</div>
							</div>
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
								<div class="form-group label-floating is-empty" onclick="dj('5')">
									<label class="control-label" style="position: absolute;top:10px">12个月</label>
									<input id="5" disabled="disabled" value="120元">
								</div>
							</div>
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12" >
								<div class="form-group label-floating is-empty" onclick="dj('6')">
									<label class="control-label" style="position: absolute;top:10px">自定义月数</label>
									<input id="6"  value="1" onchange="zdy()">
								</div>
							</div>
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
								<input id="img1" type="radio" name="dan" checked="checked"/><img alt="" src="/StarBBS//img/WXZF.png" width="300px" height="5px">
								</div>
							</div>
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
									<input id="img2" type="radio" name="dan"/ ><img alt="" src="/StarBBS//img/ZFBZF.png" width="300px" height="5px">
								</div>
							</div>
							
						</div>
					</form>
					
					<div id="yinc" onmouseout="yichu()">
					
					</div>
					
					<!-- ... end Change Password Form -->
					<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">	
								<button class="btn btn-primary btn-lg full-width" onclick="zhifu()">立即支付！<span id="span"></span></button>
					</div>
				</div>
			</div>
		</div>
</div>




<a class="back-to-top" href="#">
	<img src="/StarBBS/svg-icons/back-to-top.svg" alt="arrow" class="back-icon">
</a>


<!-- JS Scripts -->
<script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
<script src="/StarBBS/js/libs/jquery.appear.js"></script>
<script src="/StarBBS/js/libs/jquery.mousewheel.js"></script>
<script src="/StarBBS/js/libs/perfect-scrollbar.js"></script>
<script src="/StarBBS/js/libs/jquery.matchHeight.js"></script>
<script src="/StarBBS/js/libs/svgxuse.js"></script>
<script src="/StarBBS/js/libs/imagesloaded.pkgd.js"></script>
<script src="/StarBBS/js/libs/Headroom.js"></script>
<script src="/StarBBS/js/libs/velocity.js"></script>
<script src="/StarBBS/js/libs/ScrollMagic.js"></script>
<script src="/StarBBS/js/libs/jquery.waypoints.js"></script>
<script src="/StarBBS/js/libs/jquery.countTo.js"></script>
<script src="/StarBBS/js/libs/popper.min.js"></script>
<script src="/StarBBS/js/libs/material.min.js"></script>
<script src="/StarBBS/js/libs/bootstrap-select.js"></script>
<script src="/StarBBS/js/libs/smooth-scroll.js"></script>
<script src="/StarBBS/js/libs/selectize.js"></script>
<script src="/StarBBS/js/libs/swiper.jquery.js"></script>
<script src="/StarBBS/js/libs/moment.js"></script>
<script src="/StarBBS/js/libs/daterangepicker.js"></script>
<script src="/StarBBS/js/libs/fullcalendar.js"></script>
<script src="/StarBBS/js/libs/isotope.pkgd.js"></script>
<script src="/StarBBS/js/libs/ajax-pagination.js"></script>
<script src="/StarBBS/js/libs/Chart.js"></script>
<script src="/StarBBS/js/libs/chartjs-plugin-deferred.js"></script>
<script src="/StarBBS/js/libs/circle-progress.js"></script>
<script src="/StarBBS/js/libs/loader.js"></script>
<script src="/StarBBS/js/libs/run-chart.js"></script>
<script src="/StarBBS/js/libs/jquery.magnific-popup.js"></script>
<script src="/StarBBS/js/libs/jquery.gifplayer.js"></script>
<script src="/StarBBS/js/libs/mediaelement-and-player.js"></script>
<script src="/StarBBS/js/libs/mediaelement-playlist-plugin.min.js"></script>
<script src="/StarBBS/js/libs/sticky-sidebar.js"></script>
<script src="/StarBBS/js/libs/ion.rangeSlider.js"></script>

<script src="/StarBBS/js/main.js"></script>
<script src="/StarBBS/js/libs-init/libs-init.js"></script>
<script defer src="/StarBBS/fonts/fontawesome-all.js"></script>

<script src="/StarBBS/Bootstrap/dist/js/bootstrap.bundle.js"></script>


</body>
</html>
