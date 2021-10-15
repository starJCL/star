<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>Your Account - Account Settings</title>

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
        
       
        function gengGai(){
        alert('${yanzhengma}');
        var p1=$("#password").val();//修改密码
        var p2=$("#password1").val()//原密码
        var ph=$("#phone").val();//手机号
        var p3=$("#password3").val();//确认密码
         var code=$("#code").val();//确认密码
        if(p1==p2){
        alert("密码与旧密码一致")
        }else if(p1!=p3){
        alert("两次输入的新密码不一致")
        }else{
		$.ajax({
		url : '/StarBBS/star/xiumi',
		type : 'get',
		data : {phone:ph,code:code,mi:p3},
		success :function(){
		 alert("修改成功，请重新登陆!")
		 window.location="/StarBBS/login.jsp";
		
		}
						
		});			

        }
        }
    </script>
   
   <script type="text/javascript">
  var sleep = 60, interval = null;
  window.onload = function ()
  {
    var btn = document.getElementById ('btn');
    btn.onclick = function ()
    {
    
    alert("正在获取验证码");
   	 $.ajax({
			url : '/StarBBS/star/yan',
			type : 'get',
			data : {},
			success :function(data){
			
			}
							
			});				
	
      if (!interval)
      {
        this.style.backgroundColor = 'rgb(240, 94, 58)';
        this.disabled = "disabled";
        this.style.cursor = "wait";
        this.value = "重新发送 (" + sleep-- + ")";
        interval = setInterval (function ()
        {
          if (sleep == 0)
          {
            if (!!interval)  
            {
              clearInterval (interval);
              interval = null;
              sleep = 60;
              btn.style.cursor = "pointer";
              btn.removeAttribute ('disabled');
              btn.value = "重新发送";
              btn.style.backgroundColor = 'rgb(255,255,255)';
            }
            return false;
          }
          btn.value = "重新发送 (" + sleep-- + ")";
        }, 1000);
        
      }
    }
  }
  
</script>
    <style type="text/css">
.checkCode {
  cursor: pointer;
  border: 1px solid black;
  text-align: center;
  line-height: 26px;
  width: 130px;
  height: 60px;
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

<!-- ... end Preloader -->
<!-- Profile Settings Responsive -->

<div class="profile-settings-responsive">

	<a href="#" class="js-profile-settings-open profile-settings-open">
		<i class="fa fa-angle-right" aria-hidden="true"></i>
		<i class="fa fa-angle-left" aria-hidden="true"></i>
	</a>
	<div class="mCustomScrollbar" data-mcs-theme="dark">
		<div class="ui-block">
			<div class="your-profile">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">你的个人资料</h6>
				</div>

				<div id="accordion1" role="tablist" aria-multiselectable="true">
					<div class="card">
						<div class="card-header" role="tab" id="headingOne-1">
							<h6 class="mb-0">
								<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne-1" aria-expanded="true" aria-controls="collapseOne">
									配置文件设置
									<svg class="olymp-dropdown-arrow-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-dropdown-arrow-icon"></use></svg>
								</a>
							</h6>
						</div>

						<div id="collapseOne-1" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
							<ul class="your-profile-menu">
								<li>
									<a href="/StarBBS/star/util.jsp">个人信息</a>
								</li>
					
								<li>
									<a href="/StarBBS/star/utixiul.jsp">更改密码</a>
								</li>
					
							</ul>
						</div>
					</div>
				</div>


			
			</div>
		</div>
	</div>
</div>

<!-- ... end Profile Settings Responsive -->


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
					<h1>您的帐户仪表板</h1>
					<p>欢迎使用您的帐户仪表板！在这里，您可以找到更改个人资料信息、设置、阅读通知和请求、查看最新消息、更改密码等所需的一切！您也可以创建或管理自己喜欢的页面，玩得开心！</p>
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
				<div class="ui-block-title">
					<h6 class="title">更改密码</h6>
				</div>
				<div class="ui-block-content">

					
					<!-- Change Password Form -->
					
					<form>
						<div class="row">
					
							<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
								<div class="form-group label-floating">
									<label class="control-label">确认当前密码</label>
									<input id="password1"  placeholder="" type="password" >
								</div>
							</div>
							
							
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
									<label class="control-label">输入您的手机号</label>
									<input id="phone" value="13007769135" >
								</div>
							</div>
							
							
							<!-- 手机验证码 -->
							<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
									<label class="control-label">输入验证码</label>
									<input class="form-control" id="code" >
								</div>
							</div>

							<input class="checkCode" type="button" id="btn"  value="免费获取验证码" />
				
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
									<label class="control-label">输入您的新密码</label>
									<input id="password"  placeholder="" type="password">
								</div>
							</div>
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<div class="form-group label-floating is-empty">
									<label class="control-label">确认新的密码</label>
									<input  id="password3" placeholder="" type="password">
								</div>
							</div>
					
							<div class="col col-lg-12 col-sm-12 col-sm-12 col-12">
								<div class="remember">
					
									<div class="checkbox">
										<label>
											<input name="optionsCheckboxes" type="checkbox">
											记住账号
										</label>
									</div>
								</div>
							</div>
						</div>
					</form>
					<!-- ... end Change Password Form -->
					<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">	
								<button class="btn btn-primary btn-lg full-width"  onclick="gengGai()">立即更改密码！</button>
					</div>
				</div>
			</div>
		</div>
		


		<div class="col col-xl-3 order-xl-1 col-lg-3 order-lg-1 col-md-12 order-md-2 col-sm-12 col-12 responsive-display-none">
			<div class="ui-block">

				<!-- Your Profile  -->
				
				<div class="your-profile">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">你的个人资料</h6>
					</div>
				
					<div id="accordion" role="tablist" aria-multiselectable="true">
						<div class="card">
							<div class="card-header" role="tab" id="headingOne">
								<h6 class="mb-0">
									<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
											配置文件设置
										<svg class="olymp-dropdown-arrow-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-dropdown-arrow-icon"></use></svg>
									</a>
								</h6>
							</div>
				
							<div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne">
								<ul class="your-profile-menu">
									<li>
										<a href="/StarBBS/star/util.jsp">个人信息</a>
									</li>
									
									<li>
										<a href="/StarBBS/star/utixiul.jsp">修改密码</a>
									</li>
									
								</ul>
							</div>
						</div>
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
