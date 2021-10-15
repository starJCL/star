<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	if(session.getAttribute("name") == null){
	response.sendRedirect("/StarBBS/login.jsp");
	}
	System.out.println(session.getAttribute("name"));
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
 <script src="/StarBBS/js/jquery.minv2.1.1.js"></script>
<script>
/* 鼠标点击文字特效 */
    var f_idx = 0;
	var c_idx = 0;
    jQuery(document).ready(function($) {
        $("body").click(function(e) {
            var font = new Array("java里null为小写，而c++里为大写","println()比print多带了换行功能", "java里char为2字节", "Object类存放于java.lang包中","toString()方法：以字符串形式返回当前对象的有关信息","final修饰符修饰变量", "java特点：简洁有效 解释型 数据类型 可移植","int 整型", "byte 字节","short 短整型", "long 长整形","char 字符型", "double 双精度浮点型" ,"float 单精度浮点型" ," boolean 布尔型 ");		
            var $i = $("<span />").text(font[f_idx]);
            f_idx = (f_idx + 1) % font.length;
			c_idx = (c_idx + 1) % color.length;
            var x = e.pageX,
                y = e.pageY;
            $i.css({
                "z-index": 99999999999999999999999999999999999999999999999999999999999999999999999999 ,
                "top": y - 20,
                "left": x,
                "position": "absolute",
                "font-weight": "bold",
                "color": color[c_idx]
            });
            $("body").append($i);
            $i.animate({
                    "top": y - 180,
                    "opacity": 0
                },
                1500,
                function() {
                    $i.remove();
                });
        });
    });
</script>
<script>
	WebFont.load({
		google : {
			families : [ 'Roboto:300,400,500,700:latin' ]
		}
	});

	$(function() {
	var name = '${name}';
	$.ajax({
	url : '/StarBBS/star/selU',
	type : 'get',
	data : {
		username :name,
	},
	success : function(data) {
		$(data).each(
			function(i, item) {
			$("#nickname").val(item.nickname);
			$("#email").val(item.email);
			$("#qq_card").val(item.qq_card);
			var sheng="<option  value='"+item.pro_code+"'>"+item.pro_name+"</option>";
			$("#s1").html(sheng); 
			var shi="<option>"+item.city_name+"</option>";
			$("#s2").html(shi);
			var xian="<option>"+item.area_name+"</option>";
			$("#s3").html(xian);
					var a = "";

					if (item.sex == "男") {
						a = "<option value='男' selected >男</option><option  value='女'  >女</option>";

					} else {
						a = "<option value='男'  >男</option><option  value='女'  selected >女</option>";
					}
					$("#sex").html(a);
			
					$("#brithDate").val(item.brithDate);
					$("#phone").val(item.phone);
					
					$("#desc").val(item.desc);
					
					
				});
						
		$.ajax({
		url:'/StarBBS/star/sheng',
		type:'get',
		data:{},
		success:function(data){
		var str="";
		$(data).each(function(i,item){
		if($("#s1").val() == item.pro_code){
		str+="<option selected  value='"+item.id+"'>"+item.pro_name+"</option>";
		}else{
		str+="<option value='"+item.id+"'>"+item.pro_name+"</option>";
		}
		});
		$("#s1").html(str);		
		}
		});
					}
				});
	});
	
	
	
</script>

<script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
<script type="text/javascript">
	function ch(s){
	if(s=="s1"){
		$("#s3").html("");
	$.ajax({
		url:'/StarBBS/star/shi',
		type:'get',
		data:{id:$("#s1").val()},
		success:function(data){
		var str="";
		$(data).each(function(i,item){
		str+="<option value='"+item.id+"'>"+item.city_name+"</option>";
		});
		$("#s2").html(str);		
		}
		});
	}
	else if(s=="s2")
	{
	$.ajax({
		url:'/StarBBS/star/sanji',
		type:'get',
		data:{id:$("#s2").val()},
		success:function(data){
		var str="";
		$(data).each(function(i,item){
		str+="<option value='"+item.id+"'>"+item.area_name+"</option>";
		});
		$("#s3").html(str);		
		}
		});
	}
	}	
	function huifu(){
	window.location="/StarBBS/star/util.jsp";
		
	}
</script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css"
	href="/StarBBS/Bootstrap/dist/css/bootstrap-reboot.css">
<link rel="stylesheet" type="text/css"
	href="/StarBBS/Bootstrap/dist/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="/StarBBS/Bootstrap/dist/css/bootstrap-grid.css">

<!-- Main Styles CSS -->
<link rel="stylesheet" type="text/css" href="/StarBBS/css/main.css">
<link rel="stylesheet" type="text/css" href="/StarBBS/css/fonts.min.css">


</head>
<body class="page-has-left-panels page-has-right-panels" style="width: 100%;height: 100%;">


	<!-- Preloader -->

	<div id="hellopreloader">
		<div class="preloader">
			<svg width="45" height="45" stroke="#fff">
			<g fill="none" fill-rule="evenodd" stroke-width="2"
					transform="translate(1 1)">
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="1.5s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="1.5s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="2;0" />
				</circle>
				<circle cx="22" cy="22" r="6" stroke="none">
					<animate attributeName="r" begin="3s" calcMode="linear" dur="3s"
					repeatCount="indefinite" values="6;22" />
					<animate attributeName="stroke-opacity" begin="3s"
					calcMode="linear" dur="3s" repeatCount="indefinite" values="1;0" />
					<animate attributeName="stroke-width" begin="3s" calcMode="linear"
					dur="3s" repeatCount="indefinite" values="2;0" />
				</circle>
				<circle cx="22" cy="22" r="8">
					<animate attributeName="r" begin="0s" calcMode="linear" dur="1.5s"
					repeatCount="indefinite" values="6;1;2;3;4;5;6" />
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
			<i class="fa fa-angle-right" aria-hidden="true"></i> <i
			class="fa fa-angle-left" aria-hidden="true"></i> </a>
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
									<a data-toggle="collapse" data-parent="#accordion"
										href="#collapseOne-1" aria-expanded="true"
										aria-controls="collapseOne"> 配置文件设置 <svg
											class="olymp-dropdown-arrow-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-dropdown-arrow-icon"></use></svg>
									</a>
								</h6>
							</div>

							<div id="collapseOne-1" class="collapse show" role="tabpanel"
								aria-labelledby="headingOne">
								<ul class="your-profile-menu">
									<li><a href="/StarBBS/star/util.jsp">个人信息</a>
									</li>

									<li><a href="/StarBBS/star/utixiul.jsp">更改密码</a>
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
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#request" role="tab">
						<div class="control-icon has-items">
							<svg class="olymp-happy-face-icon">
								<use
									xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
							<div class="label-avatar bg-blue">6</div>
						</div> </a>
				</li>

				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#chat" role="tab">
						<div class="control-icon has-items">
							<svg class="olymp-chat---messages-icon">
								<use
									xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
							<div class="label-avatar bg-purple">2</div>
						</div> </a>
				</li>

				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#notification" role="tab">
						<div class="control-icon has-items">
							<svg class="olymp-thunder-icon">
								<use
									xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-thunder-icon"></use></svg>
							<div class="label-avatar bg-primary">8</div>
						</div> </a>
				</li>

				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#search" role="tab"> <svg
							class="olymp-magnifying-glass-icon">
							<use
								xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-magnifying-glass-icon"></use></svg>
						<svg class="olymp-close-icon">
							<use
								xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
				</li>
			</ul>
		</div>


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
		<img class="img-bottom" src="/StarBBS/img/account-bottom.png"
			alt="friends">
	</div>

	<!-- ... end Main Header Account -->



	<!-- Your Account Personal Information -->

	<div class="container">
		<div class="row">
			<div
				class="col col-xl-9 order-xl-2 col-lg-9 order-lg-2 col-md-12 order-md-1 col-sm-12 col-12">
				<div class="ui-block">
					<div class="ui-block-title">
						<h6 class="title">个人信息</h6>
					</div>
					<div class="ui-block-content">


						<!-- Personal Information Form  -->
						
							
						<form action="/StarBBS/star/updU" method="post">
						<input type="hidden" name="username"  value="${name}">
							<div class="row">

								<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="form-group label-floating">
										<label class="control-label">姓名</label> <input id="nickname"
											 name="nickname" placeholder=""
											type="text">
									</div>

									<div class="form-group label-floating">
										<label class="control-label">你的邮箱</label> <input id="email"
										 name="email" placeholder="" type="email">
									</div>



									<div class="form-group date-time-picker label-floating">
										<label class="control-label">你的生日</label> <input
											id="brithDate" type="date" />
									</div>
								</div>

								<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="form-group label-floating">
										<label class="control-label">你的QQ账号</label> <input
											id="qq_card" name="qq_card"
											placeholder="" type="text" value="Spiegel">
									</div>
	
									<div class="form-group label-floating">
										<label class="control-label">性别</label> 
										<select id="sex" name="sex">

										</select>
									</div>


									<div class="form-group label-floating is-empty">
										<label class="control-label" style="position: absolute;top: 0px;">你的电话 </label> <input
											id="phone" name="phone" placeholder="" type="text">
									</div>
								</div>

								<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
									<div class="form-group label-floating is-select">
										<label class="control-label">您所在的省</label>
										 <select id="s1"  name="user_provinse" onchange="ch('s1')">
											
										</select>
									</div>
								</div>
								<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
									<div class="form-group label-floating is-select">
										<label class="control-label">市</label> <select id="s2" name="user_city" onclick="ch('s2')">

										</select>
									</div>
								</div>
								<div class="col col-lg-4 col-md-4 col-sm-12 col-12">
									<div class="form-group label-floating is-select">
										<label class="control-label">县/区</label> <select id="s3" name="user_area" onchange="ch()">
										</select>
									</div>
								</div>
								<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
									<div class="form-group label-floating">
										<label class="control-label" style="position: absolute;top: -0px;">写一篇关于你的描述</label>
										<textarea class="form-control" id="desc" name="desc" placeholder="" ></textarea>
									</div>


								</div>
								<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
									<div class="form-group with-icon label-floating">
										<label class="control-label">你的 Facebook 账户</label> <input
											class="form-control" type="text"
											value="www.facebook.com/james-spiegel95321"> <i
											class="fab fa-facebook-f c-facebook" aria-hidden="true"></i>
									</div>
									<div class="form-group with-icon label-floating">
										<label class="control-label">你的推特账户</label> <input
											class="form-control" type="text"
											value="www.twitter.com/james_spiegelOK"> <i
											class="fab fa-twitter c-twitter" aria-hidden="true"></i>
									</div>
									<div class="form-group with-icon label-floating is-empty">
										<label class="control-label">你的博客账户</label> <input
											class="form-control" type="text"> <i
											class="fa fa-rss c-rss" aria-hidden="true"></i>
									</div>
									<div class="form-group with-icon label-floating">
										<label class="control-label">你的 Dribbble 账户</label> <input
											class="form-control" type="text"
											value="www.dribbble.com/thecowboydesigner"> <i
											class="fab fa-dribbble c-dribbble" aria-hidden="true"></i>
									</div>
									<div class="form-group with-icon label-floating is-empty">
										<label class="control-label">你的 Spotify 账户</label> <input
											class="form-control" type="text"> <i
											class="fab fa-spotify c-spotify" aria-hidden="true"></i>
									</div>
								</div>
								
								<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								 <button  class="btn btn-secondary btn-lg full-width" type="submit" >保存所有更改</span></button>
								</div>

							</div>
						</form>

<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
									<button class="btn btn-secondary btn-lg full-width" onclick="huifu()" >恢复所有属性</button>
								</div>
						<!-- ... end Personal Information Form  -->
					</div>
				</div>
			</div>



			<div
				class="col col-xl-3 order-xl-1 col-lg-3 order-lg-1 col-md-12 order-md-2 col-sm-12 col-12 responsive-display-none">
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
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapseOne" aria-expanded="true"
											aria-controls="collapseOne"> 配置文件设置 <svg
												class="olymp-dropdown-arrow-icon">
												<use
													xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-dropdown-arrow-icon"></use></svg>
										</a>
									</h6>
								</div>

								<div id="collapseOne" class="collapse show" role="tabpanel"
									aria-labelledby="headingOne">
									<ul class="your-profile-menu">
										<li><a href="/StarBBS/star/util.jsp">个人信息</a>
										</li>

										<li><a href="/StarBBS/star/utixiul.jsp">修改密码</a>
										</li>

									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<a class="back-to-top" href="#"> <img
			src="/StarBBS/svg-icons/back-to-top.svg" alt="arrow"
			class="back-icon"> </a>


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
