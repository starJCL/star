<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String ll=request.getParameter("ll")==null?"wz":request.getParameter("ll");
session.setAttribute("ll", ll);
	if(session.getAttribute("name") == null){
		response.sendRedirect("/StarBBS/login.jsp");
	}
	System.out.println(session.getAttribute("name"));
%>

<!DOCTYPE html>
<html lang="en">
<head>

	<title>主页</title>
	<style type="text/css">
	  #au{
	  height: 700px;
	  width: 500px;
	  marging-left:-20px;
	  }
	  #im{
	  height: 300px;
	  width: 400px;
	  }
	  #di{
	  display: none;
	  }
	</style>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<!-- Main Font -->
    <script src="/StarBBS/js/libs/webfontloader.min.js">
    </script>
    <script>
        WebFont.load({
            google: {
                families: ['Roboto:300,400,500,700:latin']
            }
        });
    </script>
     

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap-reboot.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/Bootstrap/dist/css/bootstrap-grid.css">

	<!-- Main Styles CSS -->
	<link rel="stylesheet" type="text/css" href="/StarBBS/css/main.css">
	<link rel="stylesheet" type="text/css" href="/StarBBS/css/fonts.min.css">
<script src="/StarBBS/js/jquery.minv2.1.1.js"></script>
<script>
/* 鼠标点击文字特效 */
    var f_idx = 0;
	var c_idx = 0;
    jQuery(document).ready(function($) {
        $("body").click(function(e) {
 			 var font = new Array("java里null为小写，而c++里为大写","println()比print多带了换行功能", "java里char为2字节", "Object类存放于java.lang包中","toString()方法：以字符串形式返回当前对象的有关信息","final修饰符修饰变量", "java特点：简洁有效 解释型 数据类型 可移植","int 整型", "byte 字节","short 短整型", "long 长整形","char 字符型", "double 双精度浮点型" ,"float 单精度浮点型" ," boolean 布尔型 ");		
            var color = new Array('#ff0000','#eb4310','#f6941d','#fbb417','#ffff00','#cdd541','#99cc33','#3f9337','#219167','#239676','#24998d','#1f9baa','#0080ff','#3366cc','#333399','#003366','#800080','#a1488e','#c71585','#bd2158');
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

</head>
<body class="page-has-left-panels page-has-right-panels"  style="width: 100%;height: 100%;">
<div class="mfp-bg mfp-fade mfp-ready" style="height: 1000%; position: absolute; display:none;"></div>
<div class="mfp-wrap mfp-close-btn-in mfp-auto-cursor mfp-fade mfp-ready" tabindex="-1" style="top:  594px; display:none; position: absolute; height: 449px;"><div class="mfp-container mfp-iframe-holder"><div class="mfp-content"><div class="mfp-iframe-scaler"><button title="Close (Esc)" type="button" class="mfp-close">×</button><iframe class="mfp-iframe" src="" frameborder="0" allowfullscreen=""></iframe></div></div></div></div>

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
<!-- 文章的详细内容 -->
<div class="modal fade" id="blog-post-popup" tabindex="-1" role="dialog" aria-labelledby="blog-post-popup" aria-hidden="true">
	<div id="detail" class="modal-dialog window-popup blog-post-popup" role="document">
		
	</div>
</div>

<!-- ... end Preloader -->


<jsp:include page="../left.jsp"></jsp:include>


<jsp:include page="../right.jsp"></jsp:include>

<!-- Fixed Sidebar Right-Responsive -->

<div class="fixed-sidebar right fixed-sidebar-responsive" id="sidebar-right-responsive">

	<div class="fixed-sidebar-right sidebar--small">
		<a href="#" class="js-sidebar-open">
			<svg class="olymp-menu-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-menu-icon"></use></svg>
			<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
		</a>
	</div>
				
	<div class="fixed-sidebar-right sidebar--large">
		<div class="mCustomScrollbar" data-mcs-theme="dark">

			<div class="ui-block-title ui-block-title-small">
				<a href="#" class="title">亲密的朋友</a>
				<a href="#">设置</a>
			</div>

			<ul class="chat-users">
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar67-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Carol Summers</a>
						<span class="status">ONLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>

				</li>
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar62-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Mathilda Brinker</a>
						<span class="status">AT WORK!</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>

				</li>

				<li class="inline-items js-chat-open">


					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar68-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Carol Summers</a>
						<span class="status">ONLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>


				</li>

				<li class="inline-items js-chat-open">


					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar69-sm.jpg" class="avatar">
						<span class="icon-status away"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Michael Maximoff</a>
						<span class="status">AWAY</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>


				</li>

				<li class="inline-items js-chat-open">


					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar70-sm.jpg" class="avatar">
						<span class="icon-status disconected"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Rachel Howlett</a>
						<span class="status">OFFLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>


				</li>
			</ul>


			<div class="ui-block-title ui-block-title-small">
				<a href="#" class="title">MY FAMILY</a>
				<a href="#">Settings</a>
			</div>

			<ul class="chat-users">
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar64-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Sarah Hetfield</a>
						<span class="status">ONLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>
				</li>
			</ul>


			<div class="ui-block-title ui-block-title-small">
				<a href="#" class="title">UNCATEGORIZED</a>
				<a href="#">Settings</a>
			</div>

			<ul class="chat-users">
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar71-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Bruce Peterson</a>
						<span class="status">ONLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>


				</li>
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar72-sm.jpg" class="avatar">
						<span class="icon-status away"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Chris Greyson</a>
						<span class="status">AWAY</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>

				</li>
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar63-sm.jpg" class="avatar">
						<span class="icon-status status-invisible"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Nicholas Grisom</a>
						<span class="status">INVISIBLE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>
				</li>
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar72-sm.jpg" class="avatar">
						<span class="icon-status away"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Chris Greyson</a>
						<span class="status">AWAY</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>
				</li>
				<li class="inline-items js-chat-open">

					<div class="author-thumb">
						<img alt="author" src="/StarBBS/img/avatar71-sm.jpg" class="avatar">
						<span class="icon-status online"></span>
					</div>

					<div class="author-status">
						<a href="#" class="h6 author-name">Bruce Peterson</a>
						<span class="status">ONLINE</span>
					</div>

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

						<ul class="more-icons">
							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="START CONVERSATION" class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="ADD TO CONVERSATION" class="olymp-add-to-conversation-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-add-to-conversation-icon"></use></svg>
							</li>

							<li>
								<svg data-toggle="tooltip" data-placement="top" data-original-title="BLOCK FROM CHAT" class="olymp-block-from-chat-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-block-from-chat-icon"></use></svg>
							</li>
						</ul>

					</div>
				</li>
			</ul>

		</div>

		<div class="search-friend inline-items">
			<form class="form-group" >
				<input class="form-control" placeholder="搜索朋友..." value="" type="text">
			</form>

			<a href="29-YourAccount-AccountSettings.html" class="settings">
				<svg class="olymp-settings-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-settings-icon"></use></svg>
			</a>

			<a href="#" class="js-sidebar-open">
				<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
			</a>
		</div>

		<a href="#" class="olympus-chat inline-items js-chat-open">

			<h6 class="olympus-chat-title">OLYMPUS CHAT</h6>
			<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
		</a>
	</div>

</div>

<!-- ... end Fixed Sidebar Right-Responsive -->





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
	<div class="tab-content tab-content-responsive">

		<div class="tab-pane " id="request" role="tabpanel">

			<div class="mCustomScrollbar" data-mcs-theme="dark">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">FRIEND REQUESTS</h6>
					<a href="#">Find Friends</a>
					<a href="#">Settings</a>
				</div>
				<ul class="notification-list friend-requests">
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar55-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Tamara Romanoff</a>
							<span class="chat-message-item">Mutual Friend: Sarah Hetfield</span>
						</div>
									<span class="notification-icon">
										<a href="#" class="accept-request">
											<span class="icon-add without-text">
												<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

										<a href="#" class="accept-request request-del">
											<span class="icon-minus">
												<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar56-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Tony Stevens</a>
							<span class="chat-message-item">4 Friends in Common</span>
						</div>
									<span class="notification-icon">
										<a href="#" class="accept-request">
											<span class="icon-add without-text">
												<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

										<a href="#" class="accept-request request-del">
											<span class="icon-minus">
												<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>
					<li class="accepted">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar57-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							You and <a href="#" class="h6 notification-friend">Mary Jane Stark</a> just became friends. Write on <a href="#" class="notification-link">her wall</a>.
						</div>
									<span class="notification-icon">
										<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar58-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Stagg Clothing</a>
							<span class="chat-message-item">9 Friends in Common</span>
						</div>
									<span class="notification-icon">
										<a href="#" class="accept-request">
											<span class="icon-add without-text">
												<svg class="olymp-happy-face-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

										<a href="#" class="accept-request request-del">
											<span class="icon-minus">
												<svg class="olymp-happy-face-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
											</span>
										</a>

									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>
				</ul>
				<a href="#" class="view-all bg-blue">Check all your Events</a>
			</div>

		</div>

		<div class="tab-pane " id="chat" role="tabpanel">

			<div class="mCustomScrollbar" data-mcs-theme="dark">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">Chat / Messages</h6>
					<a href="#">Mark all as read</a>
					<a href="#">Settings</a>
				</div>

				<ul class="notification-list chat-message">
					<li class="message-unread">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar59-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Diana Jameson</a>
							<span class="chat-message-item">Hi James! It’s Diana, I just wanted to let you know that we have to reschedule...</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 hours ago</time></span>
						</div>
									<span class="notification-icon">
										<svg class="olymp-chat---messages-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar60-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Jake Parker</a>
							<span class="chat-message-item">Great, I’ll see you tomorrow!.</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 hours ago</time></span>
						</div>
									<span class="notification-icon">
										<svg class="olymp-chat---messages-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar61-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">Elaine Dreyfuss</a>
							<span class="chat-message-item">We’ll have to check that at the office and see if the client is on board with...</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">Yesterday at 9:56pm</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-chat---messages-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
										</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>

					<li class="chat-group">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar11-sm.jpg" alt="author">
							<img src="/StarBBS/img/avatar12-sm.jpg" alt="author">
							<img src="/StarBBS/img/avatar13-sm.jpg" alt="author">
							<img src="/StarBBS/img/avatar10-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">You, Faye, Ed &amp; Jet +3</a>
							<span class="last-message-author">Ed:</span>
							<span class="chat-message-item">Yeah! Seems fine by me!</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">March 16th at 10:23am</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-chat---messages-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
										</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
						</div>
					</li>
				</ul>

				<a href="#" class="view-all bg-purple">View All Messages</a>
			</div>

		</div>

		<div class="tab-pane " id="notification" role="tabpanel">

			<div class="mCustomScrollbar" data-mcs-theme="dark">
				<div class="ui-block-title ui-block-title-small">
					<h6 class="title">Notifications</h6>
					<a href="#">Mark all as read</a>
					<a href="#">Settings</a>
				</div>

				<ul class="notification-list">
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar62-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<div><a href="#" class="h6 notification-friend">Mathilda Brinker</a> commented on your new <a href="#" class="notification-link">profile status</a>.</div>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 hours ago</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-comments-post-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>

					<li class="un-read">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar63-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<div>You and <a href="#" class="h6 notification-friend">Nicholas Grissom</a> just became friends. Write on <a href="#" class="notification-link">his wall</a>.</div>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">9 hours ago</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-happy-face-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>

					<li class="with-comment-photo">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar64-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<div><a href="#" class="h6 notification-friend">Sarah Hetfield</a> commented on your <a href="#" class="notification-link">photo</a>.</div>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">Yesterday at 5:32am</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-comments-post-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
										</span>

						<div class="comment-photo">
							<img src="/StarBBS/img/comment-photo1.jpg" alt="photo">
							<span>“She looks incredible in that outfit! We should see each...”</span>
						</div>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar65-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<div><a href="#" class="h6 notification-friend">Green Goo Rock</a> invited you to attend to his event Goo in <a href="#" class="notification-link">Gotham Bar</a>.</div>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">March 5th at 6:43pm</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-happy-face-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
										</span>
										

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar66-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<div><a href="#" class="h6 notification-friend">James Summers</a> commented on your new <a href="#" class="notification-link">profile status</a>.</div>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">March 2nd at 8:29pm</time></span>
						</div>
										<span class="notification-icon">
											<svg class="olymp-heart-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-heart-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
						</div>
					</li>
				</ul>

				<a href="#" class="view-all bg-primary">View All Notifications</a>
			</div>

		</div>

		<div class="tab-pane " id="search" role="tabpanel">


				<form class="search-bar w-search notification-list friend-requests">
					<div class="form-group with-button">
						<input class="form-control js-user-search" placeholder="Search here people or pages..." type="text">
					</div>
				</form>


		</div>

	</div>
	<!-- ... end  Tab panes -->

</header>

<!-- ... end Responsive Header-BP -->
<div class="header-spacer"></div>



<!-- Top Header-Profile -->
<jsp:include page="../header_xia.jsp"></jsp:include>
<jsp:include page="../header.jsp"></jsp:include>
<!-- ... end Top Header-Profile -->
<div class="container">
	<div class="row">

		<!-- Main Content -->

		<div class="col col-xl-6 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12">
			<div id="newsfeed-items-grid">

				<div class="ui-block">
					<!-- Post -->
					
					<article class="hentry post" id="wc">
					
						</article>
					
					<!-- .. end Post -->				</div>
			</div>

			<a id="load-more-button" href="#" class="btn btn-control btn-more" data-load-link="items-to-load.html" data-container="newsfeed-items-grid">
				<svg class="olymp-three-dots-icon" onclick='essay()'>
					<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon" ></use>
				</svg>
			</a>
		</div>

		<!-- ... end Main Content -->


		<!-- Left Sidebar -->

		<div class="col col-xl-3 order-xl-1 col-lg-6 order-lg-2 col-md-6 col-sm-6 col-12">

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">排行版</h6>
				</div>
				<div class="ui-block-content" >
                <ul class='widget w-personal-info item-block' id="brief" >
                </ul>
					<!-- W-Personal-Info -->
					
					<!-- .. end W-Personal-Info -->
					<!-- W-Socials -->
					
					<div class="widget w-socials">
						<h6 class="title">其他社交网络：</h6>
						<a href="#" class="social-item bg-facebook">
							<i class="fab fa-facebook-f" aria-hidden="true"></i>
							微信
						</a>
						<a href="#" class="social-item bg-twitter">
							<i class="fab fa-twitter" aria-hidden="true"></i>
							QQ
						</a>
						<a href="#" class="social-item bg-dribbble">
							<i class="fab fa-dribbble" aria-hidden="true"></i>
							微博
						</a>
					</div>
					
					
					<!-- ... end W-Socials -->
				</div>
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">詹姆斯徽章</h6>
				</div>
				<div class="ui-block-content">

					<!-- W-Badges -->
					
					<ul class="widget w-badges">
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge1.png" alt="author">
								<div class="label-avatar bg-primary">2</div>
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge4.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge3.png" alt="author">
								<div class="label-avatar bg-blue">4</div>
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge6.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge11.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge8.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge10.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge13.png" alt="author">
								<div class="label-avatar bg-breez">2</div>
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge7.png" alt="author">
							</a>
						</li>
						<li>
							<a href="24-CommunityBadges.html">
								<img src="/StarBBS/img/badge12.png" alt="author">
							</a>
						</li>
					</ul>
					
					<!--.. end W-Badges -->
				</div>
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">我的 Spotify 播放列表</h6>
				</div>

				<!-- W-Playlist -->
				
				<ol class="widget w-playlist">
					<li class="js-open-popup" data-popup-target=".playlist-popup">
						<div class="playlist-thumb">
							<img src="/StarBBS/img/playlist6.jpg" alt="thumb-composition">
							<div class="overlay"></div>
							<a href="#" class="play-icon">
								<svg class="olymp-music-play-icon-big">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use>
								</svg>
							</a>
						</div>
				
						<div class="composition">
							<a href="#" class="composition-name">过去开始慢...</a>
							<a href="#" class="composition-author">复仇系统</a>
						</div>
				
						<div class="composition-time">
							<time class="published" datetime="2017-03-24T18:18">3:22</time>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use>
								</svg>
								<ul class="more-dropdown">
									<li>
										<a href="#">将歌曲添加到播放器</a>
									</li>
									<li>
										<a href="#">将播放列表添加到播放器</a>
									</li>
								</ul>
							</div>
						</div>
				
					</li>
				
					<li class="js-open-popup" data-popup-target=".playlist-popup">
						<div class="playlist-thumb">
							<img src="/StarBBS/img/playlist7.jpg" alt="thumb-composition">
							<div class="overlay"></div>
							<a href="#" class="play-icon">
								<svg class="olymp-music-play-icon-big">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use>
								</svg>
							</a>
						</div>
				
						<div class="composition">
							<a href="#" class="composition-name">伪装者</a>
							<a href="#" class="composition-author">功夫战士</a>
						</div>
				
						<div class="composition-time">
							<time class="published" datetime="2017-03-24T18:18">5:48</time>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use>
								</svg>
								<ul class="more-dropdown">
									<li>
										<a href="#">将歌曲添加到播放器</a>
									</li>
									<li>
										<a href="#">将播放列表添加到播放器</a>
									</li>
								</ul>
							</div>
						</div>
				
					</li>
					<li class="js-open-popup" data-popup-target=".playlist-popup">
						<div class="playlist-thumb">
							<img src="/StarBBS/img/playlist8.jpg" alt="thumb-composition">
							<div class="overlay"></div>
							<a href="#" class="play-icon">
								<svg class="olymp-music-play-icon-big">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use>
								</svg>
							</a>
						</div>
				
						<div class="composition">
							<a href="#" class="composition-name">血兄弟</a>
							<a href="#" class="composition-author">铁娘子</a>
						</div>
				
						<div class="composition-time">
							<time class="published" datetime="2017-03-24T18:18">3:06</time>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use>
								</svg>
								<ul class="more-dropdown">
									<li>
										<a href="#">将歌曲添加到播放器</a>
									</li>
									<li>
										<a href="#">将播放列表添加到播放器</a>
									</li>
								</ul>
							</div>
						</div>
				
					</li>
					<li class="js-open-popup" data-popup-target=".playlist-popup">
						<div class="playlist-thumb">
							<img src="/StarBBS/img/playlist9.jpg" alt="thumb-composition">
							<div class="overlay"></div>
							<a href="#" class="play-icon">
								<svg class="olymp-music-play-icon-big">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use>
								</svg>
							</a>
						</div>
				
						<div class="composition">
							<a href="#" class="composition-name">七国军</a>
							<a href="#" class="composition-author">黑色条纹</a>
						</div>
				
						<div class="composition-time">
							<time class="published" datetime="2017-03-24T18:18">6:17</time>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use>
								</svg>
								<ul class="more-dropdown">
									<li>
										<a href="#">将歌曲添加到播放器</a>
									</li>
									<li>
										<a href="#">将播放列表添加到播放器</a>
									</li>
								</ul>
							</div>
						</div>
				
					</li>
					<li class="js-open-popup" data-popup-target=".playlist-popup">
						<div class="playlist-thumb">
							<img src="/StarBBS/img/playlist10.jpg" alt="thumb-composition">
							<div class="overlay"></div>
							<a href="#" class="play-icon">
								<svg class="olymp-music-play-icon-big">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use>
								</svg>
							</a>
						</div>
				
						<div class="composition">
							<a href="#" class="composition-name">杀手女王</a>
							<a href="#" class="composition-author">阿奇杜克</a>
						</div>
				
						<div class="composition-time">
							<time class="published" datetime="2017-03-24T18:18">5:40</time>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use>
								</svg>
								<ul class="more-dropdown">
									<li>
										<a href="#">将歌曲添加到播放器</a>
									</li>
									<li>
										<a href="#">将播放列表添加到播放器</a>
									</li>
								</ul>
							</div>
						</div>
				
					</li>
				</ol>
				
				<!-- .. end W-Playlist -->
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">推特饲料</h6>
				</div>

				<!-- W-Twitter -->
				
				<ul class="widget w-twitter" id="mat">
<!-- 					<li class="twitter-item"> -->
<!-- 						<div class="author-folder"> -->
<!-- 							<img src="/StarBBS/img/twitter-avatar1.png" alt="avatar"> -->
<!-- 							<div class="author"> -->
<!-- 								<a href="#" class="author-name">太空牛仔</a> -->
<!-- 								<a href="#" class="group">@james_spiegelOK</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<p>明天与该机构，我们将运行5公里的慈善。来给我们你的支持！ -->
<!-- 							<a href="#" class="link-post">#Daydream5K</a></p> -->
<!-- 						<span class="post__date"> -->
<!-- 							<time class="published" datetime="2017-03-24T18:18"> -->
<!-- 								2 小时前 -->
<!-- 							</time> -->
<!-- 						</span> -->
<!-- 					</li> -->
<!-- 					<li class="twitter-item"> -->
<!-- 						<div class="author-folder"> -->
<!-- 							<img src="/StarBBS/img/twitter-avatar1.png" alt="avatar"> -->
<!-- 							<div class="author"> -->
<!-- 								<a href="#" class="author-name">太空牛仔</a> -->
<!-- 								<a href="#" class="group">@james_spiegelOK</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<p>查看"贝波普酒吧"的新网站！ <a href="#" class="link-post">拜特尔/thbp53f</a></p> -->
<!-- 						<span class="post__date"> -->
<!-- 							<time class="published" datetime="2017-03-24T18:18"> -->
<!-- 								16 小时前 -->
<!-- 							</time> -->
<!-- 						</span> -->
<!-- 					</li> -->
<!-- 					<li class="twitter-item"> -->
<!-- 						<div class="author-folder"> -->
<!-- 							<img src="/StarBBS/img/twitter-avatar1.png" alt="avatar"> -->
<!-- 							<div class="author"> -->
<!-- 								<a href="#" class="author-name">太空牛仔</a> -->
<!-- 								<a href="#" class="group">@james_spiegelOK</a> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<p>星期天是一年一度的代理露营之旅， 我仍然没有帐篷 -->
<!-- 							<a href="#" class="link-post">#TheWild #Indoors</a></p> -->
<!-- 						<span class="post__date"> -->
<!-- 							<time class="published" datetime="2017-03-24T18:18"> -->
<!-- 								昨天 -->
<!-- 							</time> -->
<!-- 						</span> -->
<!-- 					</li> -->
				</ul>
				
				
				<!-- .. end W-Twitter -->
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">最后的视频</h6>
				</div>
				<div class="ui-block-content">

					<!-- W-Latest-Video -->
					
					<ul class="widget w-last-video">
						<li>
							<a href="https://vimeo.com/ondemand/viewfromabluemoon4k/147865858" class="play-video play-video--small">
								<svg class="olymp-play-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-play-icon"></use>
								</svg>
							</a>
							<img src="/StarBBS/img/video8.jpg" alt="video">
							<div class="video-content">
								<div class="title">S复仇系统 - 催眠...</div>
								<time class="published" datetime="2017-03-24T18:18">3:25</time>
							</div>
							<div class="overlay"></div>
						</li>
						<li>
							<a href="https://youtube.com/watch?v=excVFQ2TWig" class="play-video play-video--small">
								<svg class="olymp-play-icon">
									<use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-play-icon"></use>
								</svg>
							</a>
							<img src="/StarBBS/img/video7.jpg" alt="video">
							<div class="video-content">
								<div class="title">绿果 - 住在丹的竞技场</div>
								<time class="published" datetime="2017-03-24T18:18">5:48</time>
							</div>
							<div class="overlay"></div>
						</li>
					</ul>
					
					<!-- .. end W-Latest-Video -->
				</div>
			</div>

		</div>

		<!-- ... end Left Sidebar -->


		<!-- Right Sidebar -->

		<div class="col col-xl-3 order-xl-3 col-lg-6 order-lg-3 col-md-6 col-sm-6 col-12">

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">最后一张照片</h6>
				</div>
				<div class="ui-block-content">

					<!-- <!-- W-Latest-Photo -->
					
				<ul class="widget w-last-photo js-zoom-gallery" id="tzp">
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-photo10-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-photo10-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot11-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot11-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot12-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot12-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot13-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot13-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot14-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot14-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot15-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot15-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot16-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot16-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot17-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot17-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 						<li> -->
<!-- 							<a href="/StarBBS/img/last-phot18-large.jpg"> -->
<!-- 								<img src="/StarBBS/img/last-phot18-large.jpg" alt="photo"> -->
<!-- 							</a> -->
<!-- 						</li> -->
<!-- 					</ul> --> 
					
					
					<!-- .. end W-Latest-Photo -->
				</div>
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">博客文章</h6>
				</div>
				<!-- W-Blog-Posts -->
				
				<ul class="widget w-blog-posts" id="ess">
<!-- 					<li> -->
<!-- 						<article class="hentry post"> -->
				
<!-- 							<a href="#" class="h4">我在南美和欧洲的完美假期</a> -->
				
<!-- 							<p>洛雷姆 · 伊普苏姆 · 多洛坐在阿梅特， 康塞迪西奇 · 精英， 塞德 · 多 · 艾乌斯莫德 · 波尔辛迪德 · 乌特 · 劳特等人。</p> -->
				
<!-- 							<div class="post__date"> -->
<!-- 								<time class="published" datetime="2017-03-24T18:18"> -->
<!-- 									7 小时前 -->
<!-- 								</time> -->
<!-- 							</div> -->
				
<!-- 						</article> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<article class="hentry post"> -->
				
<!-- 							<a href="#" class="h4">独自旅行的大体验</a> -->
				
<!-- 							<p>洛雷姆 · 伊普苏姆 · 多洛坐在阿梅特， 康塞迪西奇 · 精英， 塞德 · 多 · 艾乌斯莫德 · 波尔辛迪德 · 乌特 · 劳特等人。</p> -->
				
<!-- 							<div class="post__date"> -->
<!-- 								<time class="published" datetime="2017-03-24T18:18"> -->
<!-- 									3月18日下午6：52 -->
<!-- 								</time> -->
<!-- 							</div> -->
				
<!-- 						</article> -->
<!-- 					</li> -->
				</ul>
				
				<!-- .. end W-Blog-Posts -->
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">朋友 （86）</h6>
				</div>
				<div class="ui-block-content">

					<!-- W-Faved-Page -->
					
					<ul class="widget w-faved-page js-zoom-gallery">
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar38-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar24-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar36-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar35-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar34-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar33-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar32-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar31-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar30-sm.jpg" alt="author">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar29-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar28-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar27-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar26-sm.jpg" alt="user">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/avatar25-sm.jpg" alt="user">
							</a>
						</li>
						<li class="all-users">
							<a href="#">+74</a>
						</li>
					</ul>
					
					<!-- .. end W-Faved-Page -->
				</div>
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">最喜欢的页面</h6>
				</div>

				<!-- W-Friend-Pages-Added -->
				
				<ul class="widget w-friend-pages-added notification-list friend-requests">
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar41-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">滨海酒吧</a>
							<span class="chat-message-item">餐厅/ 酒吧</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
				
					</li>
				
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar42-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">塔普罗纳斯岩</a>
							<span class="chat-message-item">摇滚乐团</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
				
					</li>
				
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar43-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">像素数字设计</a>
							<span class="chat-message-item">公司</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
					</li>
				
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar44-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">汤普森定制服装精品店</a>
							<span class="chat-message-item">服装店</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
				
					</li>
				
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar45-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">深红机构</a>
							<span class="chat-message-item">公司</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
					</li>
				
					<li class="inline-items">
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar46-sm.jpg" alt="author">
						</div>
						<div class="notification-event">
							<a href="#" class="h6 notification-friend">模特天使</a>
							<span class="chat-message-item">服装店</span>
						</div>
						<span class="notification-icon" data-toggle="tooltip" data-placement="top" data-original-title="ADD TO YOUR FAVS">
							<a href="#">
								<svg class="olymp-star-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
							</a>
						</span>
					</li>
				</ul>
				
				<!-- .. end W-Friend-Pages-Added -->
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">詹姆斯的民意测验</h6>
				</div>
				<div class="ui-block-content">

					<!-- W-Pool -->
					
					<ul class="widget w-pool">
						<li>
							<p>如果你不得不选择， 你更喜欢成为下一个黑暗人吗？</p>
						</li>
						<li>
							<div class="skills-item">
								<div class="skills-item-info">
									<span class="skills-item-title">
										<span class="radio">
											<label>
												<input type="radio" name="optionsRadios">
												托马斯·贝尔
											</label>
										</span>
									</span>
									<span class="skills-item-count">
										<span class="count-animate" data-speed="1000" data-refresh-interval="50" data-to="62" data-from="0"></span>
										<span class="units">62%</span>
									</span>
								</div>
								<div class="skills-item-meter">
									<span class="skills-item-meter-active bg-primary" style="width: 62%"></span>
								</div>
					
								<div class="counter-friends">12 个朋友投了赞成票</div>
					
								<ul class="friends-harmonic">
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic1.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic2.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic3.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic4.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic5.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic6.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic7.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic8.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic9.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#" class="all-users">+3</a>
									</li>
								</ul>
							</div>
						</li>
					
						<li>
							<div class="skills-item">
								<div class="skills-item-info">
									<span class="skills-item-title">
										<span class="radio">
											<label>
												<input type="radio" name="optionsRadios">
												本·罗伯逊
											</label>
										</span>
									</span>
									<span class="skills-item-count">
										<span class="count-animate" data-speed="1000" data-refresh-interval="50" data-to="27" data-from="0"></span>
										<span class="units">27%</span>
									</span>
								</div>
								<div class="skills-item-meter">
									<span class="skills-item-meter-active bg-primary" style="width: 27%"></span>
								</div>
								<div class="counter-friends">7 个朋友投了赞成票</div>
					
								<ul class="friends-harmonic">
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic7.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic8.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic9.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic10.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic11.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic12.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic13.jpg" alt="friend">
										</a>
									</li>
								</ul>
							</div>
						</li>
					
						<li>
							<div class="skills-item">
								<div class="skills-item-info">
									<span class="skills-item-title">
										<span class="radio">
											<label>
												<input type="radio" name="optionsRadios">
												迈克尔·斯特雷顿
											</label>
										</span>
									</span>
									<span class="skills-item-count">
										<span class="count-animate" data-speed="1000" data-refresh-interval="50" data-to="11" data-from="0"></span>
										<span class="units">11%</span>
									</span>
								</div>
								<div class="skills-item-meter">
									<span class="skills-item-meter-active bg-primary" style="width: 11%"></span>
								</div>
					
								<div class="counter-friends">2 人投了赞成票</div>
					
								<ul class="friends-harmonic">
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic14.jpg" alt="friend">
										</a>
									</li>
									<li>
										<a href="#">
											<img src="/StarBBS/img/friend-harmonic15.jpg" alt="friend">
										</a>
									</li>
								</ul>
							</div>
						</li>
					</ul>
					
					<!-- .. end W-Pool -->
					<a href="#" class="btn btn-md-2 btn-border-think custom-color c-grey full-width">立即投票！</a>
				</div>
			</div>

		</div>

		<!-- ... end Right Sidebar -->

	</div>
</div>

<!-- Window-popup Update Header Photo -->

<div class="modal fade" id="update-header-photo" tabindex="-1" role="dialog" aria-labelledby="update-header-photo" aria-hidden="true">
	<div class="modal-dialog window-popup update-header-photo" role="document">
		<div class="modal-content">
			<a href="#" class="close icon-close" data-dismiss="modal" aria-label="Close">
				<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
			</a>

			<div class="modal-header">
				<h6 class="title">更新标题照片</h6>
			</div>

			<div class="modal-body">
				<a href="#" class="upload-photo-item">
				<svg class="olymp-computer-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-computer-icon"></use></svg>

				<h6>上传照片</h6>
			</a>
			</div>
		</div>
	</div>
</div>


<!-- ... end Window-popup Update Header Photo -->

<!-- Window-popup Choose from my Photo -->

<div class="modal fade" id="choose-from-my-photo" tabindex="-1" role="dialog" aria-labelledby="choose-from-my-photo" aria-hidden="true">
	<div class="modal-dialog window-popup choose-from-my-photo" role="document">

		<div class="modal-content">
			<a href="#" class="close icon-close" data-dismiss="modal" aria-label="Close">
				<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
			</a>
			<div class="modal-header">
				<h6 class="title">更新标题照片</h6>

				<!-- Nav tabs -->
				<ul class="nav nav-tabs" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#home" role="tab" aria-expanded="true">
							<svg class="olymp-photos-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-photos-icon"></use></svg>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" data-toggle="tab" href="#profile" role="tab" aria-expanded="false">
							<svg class="olymp-albums-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-albums-icon"></use></svg>
						</a>
					</li>
				</ul>
			</div>

			<div class="modal-body">
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="home" role="tabpanel" aria-expanded="true">

						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo1.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo2.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo3.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>

						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo4.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo5.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo6.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>

						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo7.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo8.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<div class="radio">
								<label class="custom-radio">
									<img src="/StarBBS/img/choose-photo9.jpg" alt="photo">
									<input type="radio" name="optionsRadios">
								</label>
							</div>
						</div>


						<a href="#" class="btn btn-secondary btn-lg btn--half-width">Cancel</a>
						<a href="#" class="btn btn-primary btn-lg btn--half-width">Confirm Photo</a>

					</div>
					<div class="tab-pane" id="profile" role="tabpanel" aria-expanded="false">

						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo10.jpg" alt="photo">
								<figcaption>
									<a href="#">South America Vacations</a>
									<span>Last Added: 2 hours ago</span>
								</figcaption>
							</figure>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo11.jpg" alt="photo">
								<figcaption>
									<a href="#">Photoshoot Summer 2016</a>
									<span>Last Added: 5 weeks ago</span>
								</figcaption>
							</figure>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo12.jpg" alt="photo">
								<figcaption>
									<a href="#">Amazing Street Food</a>
									<span>Last Added: 6 mins ago</span>
								</figcaption>
							</figure>
						</div>

						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo13.jpg" alt="photo">
								<figcaption>
									<a href="#">Graffity & Street Art</a>
									<span>Last Added: 16 hours ago</span>
								</figcaption>
							</figure>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo14.jpg" alt="photo">
								<figcaption>
									<a href="#">Amazing Landscapes</a>
									<span>Last Added: 13 mins ago</span>
								</figcaption>
							</figure>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo15.jpg" alt="photo">
								<figcaption>
									<a href="#">The Majestic Canyon</a>
									<span>Last Added: 57 mins ago</span>
								</figcaption>
							</figure>
						</div>


						<a href="#" class="btn btn-secondary btn-lg btn--half-width">Cancel</a>
						<a href="#" class="btn btn-primary btn-lg disabled btn--half-width">Confirm Photo</a>
					</div>
				</div>
			</div>
		</div>

	</div>
</div>

<!-- ... end Window-popup Choose from my Photo -->

<!-- Playlist Popup -->

<div class="window-popup playlist-popup" tabindex="-1" role="dialog" aria-labelledby="playlist-popup" aria-hidden="true">

	<a href="" class="icon-close js-close-popup">
		<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
	</a>

	<div class="mCustomScrollbar">
		<table class="playlist-popup-table">

		<thead>

		<tr>

			<th class="play">
			玩
			</th>

			<th class="cover">
				盖
			</th>

			<th class="song-artist">
				歌曲和艺术家
			</th>

			<th class="album">
				影集
			</th>

			<th class="released">
				释放
			</th>

			<th class="duration">
				期间
			</th>

			<th class="spotify">
				在 Spotify 上获取它
			</th>

			<th class="remove">
				删除
			</th>
		</tr>

		</thead>

		<tbody>
		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist19.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">我们可以成为英雄</a>
					<a href="#" class="composition-author">杰森·鲍伊</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition">齐吉 · 火尘</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>

		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist6.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">过去开始缓慢和结束</a>
					<a href="#" class="composition-author">复仇系统</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition">奇迹</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>

		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist7.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">伪装者</a>
					<a href="#" class="composition-author">功夫战士</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition">扭曲灯</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>

		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist8.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">七国军</a>
					<a href="#" class="composition-author">黑色条纹</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition ">伊基·斯特朗（住在立方体花园）</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>

		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist9.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">信仰的飞跃</a>
					<a href="#" class="composition-author">伊甸园文物</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition">刺客的原声带</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>

		<tr>
			<td class="play">
				<a href="#" class="play-icon">
					<svg class="olymp-music-play-icon-big"><use xlink:href="/StarBBS/svg-icons/sprites/icons-music.svg#olymp-music-play-icon-big"></use></svg>
				</a>
			</td>
			<td class="cover">
				<div class="playlist-thumb">
					<img src="/StarBBS/img/playlist10.jpg" alt="thumb-composition">
				</div>
			</td>
			<td class="song-artist">
				<div class="composition">
					<a href="#" class="composition-name">杀手女王</a>
					<a href="#" class="composition-author">阿奇杜克</a>
				</div>
			</td>
			<td class="album">
				<a href="#" class="album-composition ">宇宙新闻</a>
			</td>
			<td class="released">
				<div class="release-year">2014</div>
			</td>
			<td class="duration">
				<div class="composition-time">
					<time class="published" datetime="2017-03-24T18:18">6:17</time>
				</div>
			</td>
			<td class="spotify">
				<i class="fab fa-spotify composition-icon" aria-hidden="true"></i>
			</td>
			<td class="remove">
				<a href="#" class="remove-icon">
					<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
			</td>
		</tr>
		</tbody>
	</table>
	</div>

	<audio id="mediaplayer" data-showplaylist="true">
		<source src="/StarBBS/mp3/Twice.mp3" title="Track 1" data-poster="track1.png" type="audio/mpeg">
		<source src="/StarBBS/mp3/Twice.mp3" title="Track 2" data-poster="track2.png" type="audio/mpeg">
		<source src="/StarBBS/mp3/Twice.mp3" title="Track 3" data-poster="track3.png" type="audio/mpeg">
		<source src="/StarBBS/mp3/Twice.mp3" title="Track 4" data-poster="track4.png" type="audio/mpeg">
	</audio>

</div>

<!-- ... end Playlist Popup -->


<a class="back-to-top" href="#">
	<img src="/StarBBS/svg-icons/back-to-top.svg" alt="arrow" class="back-icon">
</a>




<!-- Window-popup-CHAT for responsive min-width: 768px -->

<div class="ui-block popup-chat popup-chat-responsive" tabindex="-1" role="dialog" aria-labelledby="popup-chat-responsive" aria-hidden="true">

	<div class="modal-content">
		<div class="modal-header">
			<span class="icon-status online"></span>
			<h6 class="title" >Chat</h6>
			<div class="more">
				<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
				<svg class="olymp-little-delete js-chat-open"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
			</div>
		</div>
		<div class="modal-body">
			<div class="mCustomScrollbar">
				<ul class="notification-list chat-message chat-message-field">
					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar14-sm.jpg" alt="author" class="mCS_img_loaded">
						</div>
						<div class="notification-event">
							<span class="chat-message-item">Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">Yesterday at 8:10pm</time></span>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/"+${headJpg}+"" alt="author" class="mCS_img_loaded">
						</div>
						<div class="notification-event">
							<span class="chat-message-item">Don’t worry Mathilda!</span>
							<span class="chat-message-item">I already bought everything</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">Yesterday at 8:29pm</time></span>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/avatar14-sm.jpg" alt="author" class="mCS_img_loaded">
						</div>
						<div class="notification-event">
							<span class="chat-message-item">Hi James! Please remember to buy the food for tomorrow! I’m gonna be handling the gifts and Jake’s gonna get the drinks</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">Yesterday at 8:10pm</time></span>
						</div>
					</li>
				</ul>
			</div>

			<form class="need-validation">

		<div class="form-group label-floating is-empty">
			<label class="control-label">Press enter to post...</label>
			<textarea class="form-control" placeholder=""></textarea>
			<div class="add-options-message">
				<a href="#" class="options-message">
					<svg class="olymp-computer-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-computer-icon"></use></svg>
				</a>
				<div class="options-message smile-block">

					<svg class="olymp-happy-sticker-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-sticker-icon"></use></svg>

					<ul class="more-dropdown more-with-triangle triangle-bottom-right">
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat1.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat2.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat3.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat4.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat5.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat6.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat7.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat8.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat9.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat10.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat11.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat12.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat13.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat14.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat15.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat16.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat17.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat18.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat19.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat20.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat21.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat22.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat23.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat24.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat25.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat26.png" alt="icon">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="/StarBBS/img/icon-chat27.png" alt="icon">
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</form>
		</div>
	</div>
</div>

<!-- ... end Window-popup-CHAT for responsive min-width: 768px -->


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

<script type="text/javascript">
         $(function(){
         essay();//推送的文章
         phb();//排行榜
         material();//推送的资料
         var ll='${ll}';
         if(ll=="wz"){
          actir();
         }else if(ll=="zp"){
         img();
         }else if(ll=="yy"){
         yy();
         }else if(ll=="sp"){
         sp();
         }
         });
         function actir(str){
          $.ajax({
			url:"/StarBBS/list/article",
			type:"get",
			data:{"id":1,"str":str},
			success:function(data){
				var str = "";
				$(data).each(function(i, item){
					str += "<div class='col col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12' >" +
						"<div class='ui-block' id='au'>" +
							"<article class='hentry post has-post-thumbnail thumb-full-width'>" +
							
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
							
									"<div class='author-date'>" +
										"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>" + item.author + "</a> 发布了一篇 <a href='#'>博客</a>" +
										"<div class='post__date'>" +
											"<time class='published' datetime='2017-03-24T18:18'>" + item.createDate + "</time>" +
										"</div>" +
									"</div>" +
							
									"<div class='more'><svg class='olymp-three-dots-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use></svg>" +
										"<ul class='more-dropdown'>" +
											"<li>" +
												"<a href='#'>编辑帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>删除帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>关闭通知</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>选择为特别的</a>" +
											"</li>" +
										"</ul>" +
									"</div>" +
							
								"</div>" +
							
								"<div class='post-thumb'>" +
									"<img src='/StarBBS/img/post__thumb4.jpg' alt='photo'>" +
								"</div>" +
							
								"<a href='#' onclick='article(" + item.id + ")' data-toggle='modal' data-target='#blog-post-popup' class='h2 post-title'>" + (item.title.length > 15 ? (item.title.substring(0, 15) + "...") : item.title) + "</a>" +
							
								"<p>" + (item.matter.length > 50 ? (item.matter.substring(0, 200) + "...") : item.matter) + "</p>" +
							
								"<a href='#' onclick='article(" + item.id + ")' data-toggle='modal' data-target='#blog-post-popup' class='btn btn-md-2 btn-border-think c-grey btn-transparent custom-color'>查看更多</a>" +
							
								"<div class='post-additional-info inline-items'>" +
							
									"<a href='#' class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use></svg>" +
										"<span>8</span>" +
									"</a>" +
							
									"<ul class='friends-harmonic'>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic5.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic10.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic2.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
									"</ul>" +
							
									"<div class='names-people-likes'>" +
										"<a href='#'>Jenny </a>, <a href='#'>Robert</a> 等" +
										"<br>6 个人点赞" +
									"</div>" +
							
							
									"<div class='comments-shared'>" +
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-speech-balloon-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use></svg>" +
											"<span>12</span>" +
										"</a>" +
							
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
											"<span>0</span>" +
										"</a>" +
									"</div>" +
							
							
								"</div>" +
							
								"<div class='control-block-button post-control-button'>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-like-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use></svg>" +
									"</a>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-comments-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use></svg>" +
									"</a>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
									"</a>" +
							
								"</div>" +
							
							"</article>" +
							
							"<!-- ... end Post -->" +
						"</div>" +
						
					"</div>";
				});
				$("#wc").html(str);
               }
          });
         }
  function img(){
         $.ajax({
			url:"/StarBBS/list/getimg",
			type:"get",
			data:{"id":4},
			success:function(data){
				var str = "";
				$(data).each(function(i, item){
					str += "<div class='col col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12' >" +
						"<div class='ui-block' id='au'>" +
							"<article class='hentry post has-post-thumbnail thumb-full-width'>" +
							
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
							
									"<div class='author-date'>" +
										"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>" + item.author + "</a> 发布了一张 照片" +
										"<div class='post__date'>" +
											"<time class='published' datetime='2017-03-24T18:18'>" + item.createDate + "</time>" +
										"</div>" +
									"</div>" +
							
									"<div class='more'><svg class='olymp-three-dots-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use></svg>" +
										"<ul class='more-dropdown'>" +
											"<li>" +
												"编辑帖子" +
											"</li>" +
											"<li>" +
												"删除帖子" +
											"</li>" +
											"<li>" +
												"关闭通知" +
											"</li>" +
											"<li>" +
												"选择为特别的" +
											"</li>" +
										"</ul>" +
									"</div>" +
							
								"</div>" +
							
								"" + (item.title.length > 15 ? (item.title.substring(0, 15) + "...") : item.title) + "" +
								"<img src='/StarBBS/img/"+item.article_img1+"' alt='photo'>" +
									"<a href='#' onclick='ckimg(" + item.id + ")' data-toggle='modal' data-target='#blog-post-popup' class='btn btn-md-2 btn-border-think c-grey btn-transparent custom-color'>查看更多</a>" +
							
								"<div class='post-additional-info inline-items'>" +
							
									"<a href='#' class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use></svg>" +
										"<span>8</span>" +
									"</a>" +
							
									"<ul class='friends-harmonic'>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic5.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic10.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic2.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
									"</ul>" +
							
									"<div class='names-people-likes'>" +
										"<a href='#'>Jenny </a>, <a href='#'>Robert</a> 等" +
										"<br>6 个人点赞" +
									"</div>" +
							
							
									"<div class='comments-shared'>" +
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-speech-balloon-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use></svg>" +
											"<span>12</span>" +
										"</a>" +
							
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
											"<span>0</span>" +
										"</a>" +
									"</div>" +
							
							
								"</div>" +
							
								"<div class='control-block-button post-control-button'>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-like-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use></svg>" +
									"</a>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-comments-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use></svg>" +
									"</a>" +
							
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
									"</a>" +
							
								"</div>" +
							
							"</article>" +
							
							"<!-- ... end Post -->" +
						"</div>" +
						
					"</div>";
				});
				$("#wc").html(str);
               }
          });
         }
	function ckimg(id){
      $.ajax({
			url:"/StarBBS/list/all",
			type:"get",
			data:{"id":id},
			success:function(data){
				var detail = "";
				$(data).each(function(i, item){
					detail = "<div class='modal-content'>" +
						"<a href='#' class='close icon-close' data-dismiss='modal' aria-label='Close'>" +
							"<svg class='olymp-close-icon'>" +
								"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon'></use>" +
							"</svg>" +
						"</a>" +
			
						"<div class='modal-body'>" +
							"<article class='hentry post has-post-thumbnail thumb-full-width'>" +
			
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
			
									"<div class='author-date'>" +
										"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>" + item.author + "</a> 发布了一张" +
										"<a href='#'>照片</a>" +
										"<div class='post__date'>" +
											"<time class='published' datetime='2017-03-24T18:18'>" +
												item.createDate +
											"</time>" +
										"</div>" +
									"</div>" +
			
									"<div class='more'>" +
										"<svg class='olymp-three-dots-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
										"</svg>" +
										"<ul class='more-dropdown'>" +
											"<li>" +
												"<a href='#'>编辑帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>删除帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>关闭通知</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>选择为特别的</a>" +
											"</li>" +
										"</ul>" +
									"</div>" +
								"</div>" +
								"<img src='/StarBBS/img/"+item.article_img1+"' alt='friend' >" +
								"<img src='/StarBBS/img/"+item.article_img2+"' alt='friend' style='width: 1570px;height: 500px;'>" +
							    "<img src='/StarBBS/img/"+item.article_img3+"' alt='friend' style='width: 1570px;height: 500px;'>" +
								"<div class='post-additional-info inline-items'>" +
			
									"<a href='#' class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
										"</svg>" +
										"<span>8</span>" +
									"</a>" +
			
									"<ul class='friends-harmonic'>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic1.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic9.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic4.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
									"</ul>" +
			
									"<div class='names-people-likes'>" +
										"<a href='#'>Jenny </a>, <a href='#'>Robert</a> 等" +
										"<br>6个人点赞" +
									"</div>" +
			
			
									"<div class='comments-shared'>" +
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-speech-balloon-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use>" +
											"</svg>" +
											"<span>12</span>" +
										"</a>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-share-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use>" +
											"</svg>" +
											"<span>0</span>" +
										"</a>" +
									"</div>" +
			
			
								"</div>" +
			
								"<div class='control-block-button post-control-button'>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-like-post-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use>" +
										"</svg>" +
									"</a>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-comments-post-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use>" +
										"</svg>" +
									"</a>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-share-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use>" +
										"</svg>" +
									"</a>" +
			
								"</div>" +
			
							"</article>" +
			
							"<div class='mCustomScrollbar' data-mcs-theme='dark'>" +
			
								"<ul class='comments-list'>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>James Spiegel</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														"38 分钟前" +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium der doloremque laudantium.</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>3</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/avatar1-sm.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='#'>Mathilda Brinker</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														"1 小时前" +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Ratione voluptatem sequi en lod nesciunt. Neque porro quisquam est, quinder dolorem ipsum" +
											"quia dolor sit amet, consectetur adipisci velit en lorem ipsum duis aute irure dolor in reprehenderit in voluptate velit esse cillum." +
										"</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>8</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/avatar10-sm.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='#'>Elaine Dreyfuss</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														item.createDate +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium der doloremque laudantium.</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>8</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
								"</ul>" +
			
							"</div>" +
			
							"<form class='comment-form inline-items'>" +
			
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
									"<div class='form-group with-icon-right '>" +
										"<textarea class='form-control' placeholder=''></textarea>" +
										"<div class='add-options-message'>" +
											"<a href='#' class='options-message'>" +
												"<svg class='olymp-camera-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-camera-icon'></use>" +
												"</svg>" +
											"</a>" +
										"</div>" +
									"</div>" +
								"</div>" +
							"</form>" +
						"</div>" +
					"</div>";
				});
				$("#detail").html(detail);
			}
		});
 	};
         function yy(){
          $.ajax({
			url:"/StarBBS/star/videos",
			type:"get",
			data:{"id":3},
			success:function(data){
				var str = "";
				$(data).each(function(i, item){
					str +="" +
						"<div class='ui-block'  id='au'>" +
					"<article class='hentry post video'>" +
						"<div class='post__author author vcard inline-items'>" +
							"<img src='/StarBBS/img/lp.jpg' alt='author'>" +
							"<div class='author-date'>" +
								"<a class='h6 post__author-name fn' >${nicheng}" +
								"<div class='post__date'>" +
									
								"</div>" +
							"</div>" +
							"<div class='more'><svg class='olymp-three-dots-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use></svg>" +
								"<ul class='more-dropdown'>" +
							
									"<li>" +
										"<a href='#'>删除视频</a>" +
									"</li>" +
						
								"</ul>" +
							"</div>" +
					
						"</div>" +
					
						"<p>"+item.title+"   "+item.matter+"</p>"+
					
						"<div class='post-video'>" +
							"<div class='video-thumb'>" +
								"<img   src='/StarBBS/img/"+item.article_music2+"' alt='photo'>" +
								
								
   								 "<audio src='/StarBBS/mp3/"+item.article_music1+"' controls>" +
   								 	"<svg class='olymp-play-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-play-icon'></use></svg>" +
   								" </audio>" +
								
							"</div>" +
					
							"<div class='video-content'>" +
								"<a href='#' class='h4 title'>"+item.title+"</a>" +
								"<p>"+item.matter+"" +
								"</p>" +
							"</div>" +
						"</div>" +
					
						"<div class='post-additional-info inline-items'>" +
					
							"<a href='#' class='post-add-icon inline-items'>" +
								"<svg class='olymp-heart-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use></svg>" +
								"<span>18</span>" +
							"</a>" +
					
							"<ul class='friends-harmonic'>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic9.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic10.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic11.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
							"</ul>" +
					
							"<div class='names-people-likes'>" +
								"<a href='#'>Jenny</a>, <a href='#'>Robert</a> and" +
								"<br>18 more liked this" +
							"</div>" +
					
							"<div class='comments-shared'>" +
								"<a href='#' class='post-add-icon inline-items'>" +
									"<svg class='olymp-speech-balloon-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use></svg>" +
					
									"<span>0</span>" +
								"</a>" +
					
								"<a href='#' class='post-add-icon inline-items'>" +
									"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
									"<span>16</span>" +
								"</a>" +
							"</div>" +
					
					
						"</div>" +
					
						"<div class='control-block-button post-control-button'>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-like-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use></svg>" +
							"</a>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-comments-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use></svg>" +
							"</a>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
							"</a>" +
					
						"</div>" +
					
					"</article>" +
				"</div>" +
						
					"</br></br>";
				});
				                   $("#wc").html(str);
				            }
               });
         }
         function sp(){
         $.ajax({
			url:"/StarBBS/star/videos",
			type:"get",
			data:{"id":2},
			success:function(data){
				var str = "";
				$(data).each(function(i, item){
					str += "" +
						"<div class='ui-block'  id='au'>" +
					"<article class='hentry post video'>" +
						"<div class='post__author author vcard inline-items'>" +
							"<img src='/StarBBS/img/lp.jpg' alt='author'>" +
							"<div class='author-date'>" +
								"<a class='h6 post__author-name fn' >${nicheng}" +
								"<div class='post__date'>" +
									
								"</div>" +
							"</div>" +
							"<div class='more'><svg class='olymp-three-dots-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use></svg>" +
								"<ul class='more-dropdown'>" +
							
									"<li>" +
										"<a href='#'>删除视频</a>" +
									"</li>" +
						
								"</ul>" +
							"</div>" +
					
						"</div>" +
					
						"<p>"+item.title+"   "+item.matter+"</p>"+
					
						"<div class='post-video'>" +
							"<div class='video-thumb'>" +
								"<img   oncilck='shipin('/StarBBS/img/"+item.article_img1+"')' src='/StarBBS/img/"+item.article_img1+"' alt='photo'>" +
								"<a href='/StarBBS/videos/"+item.article_video1+"' class='play-video'>" +
									"<svg class='olymp-play-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-play-icon'></use></svg>" +
								"</a>" +
							"</div>" +
					
							"<div class='video-content'>" +
								"<a href='#' class='h4 title'>"+item.title+"</a>" +
								"<p>"+item.matter+"" +
								"</p>" +
							"</div>" +
						"</div>" +
					
						"<div class='post-additional-info inline-items'>" +
					
							"<a href='#' class='post-add-icon inline-items'>" +
								"<svg class='olymp-heart-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use></svg>" +
								"<span>18</span>" +
							"</a>" +
					
							"<ul class='friends-harmonic'>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic9.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic10.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
								"<li>" +
									"<a href='#'>" +
										"<img src='/StarBBS/img/friend-harmonic11.jpg' alt='friend'>" +
									"</a>" +
								"</li>" +
							"</ul>" +
					
							"<div class='names-people-likes'>" +
								"<a href='#'>Jenny</a>, <a href='#'>Robert</a> and" +
								"<br>18 more liked this" +
							"</div>" +
					
							"<div class='comments-shared'>" +
								"<a href='#' class='post-add-icon inline-items'>" +
									"<svg class='olymp-speech-balloon-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use></svg>" +
					
									"<span>0</span>" +
								"</a>" +
					
								"<a href='#' class='post-add-icon inline-items'>" +
									"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
					
									"<span>16</span>" +
								"</a>" +
							"</div>" +
					
					
						"</div>" +
					
						"<div class='control-block-button post-control-button'>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-like-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use></svg>" +
							"</a>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-comments-post-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use></svg>" +
							"</a>" +
					
							"<a href='#' class='btn btn-control'>" +
								"<svg class='olymp-share-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use></svg>" +
							"</a>" +
					
						"</div>" +
					
					"</article>" +
				"</div>" +
						
					"";
				});
				                   $("#wc").html(str);
				            }
               });
         };
       function article(id){
		$.ajax({
			url:"/StarBBS/list/all",
			type:"get",
			data:{"id":id},
			success:function(data){
				var detail = "";
				$(data).each(function(i, item){
					detail = "<div class='modal-content'>" +
						"<a href='#' class='close icon-close' data-dismiss='modal' aria-label='Close'>" +
							"<svg class='olymp-close-icon'>" +
								"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon'></use>" +
							"</svg>" +
						"</a>" +
			
						"<div class='modal-body'>" +
							"<article class='hentry post has-post-thumbnail thumb-full-width'>" +
			
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
			
									"<div class='author-date'>" +
										"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>" + item.author + "</a> 发布了一篇" +
										"<a href='#'>博客</a>" +
										"<div class='post__date'>" +
											"<time class='published' datetime='2017-03-24T18:18'>" +
												item.createDate +
											"</time>" +
										"</div>" +
									"</div>" +
			
									"<div class='more'>" +
										"<svg class='olymp-three-dots-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
										"</svg>" +
										"<ul class='more-dropdown'>" +
											"<li>" +
												"<a href='#'>编辑帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>删除帖子</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>关闭通知</a>" +
											"</li>" +
											"<li>" +
												"<a href='#'>选择为特别的</a>" +
											"</li>" +
										"</ul>" +
									"</div>" +
								"</div>" +
			
								"<div class='post-thumb'>" +
									"<img src='/StarBBS/img/post__thumb8.jpg' alt='photo'>" +
									"<h2 class='h1 post-title'>Maxxine Flames成为摄影师的一天</h2>" +
									"<div class='overlay'></div>" +
								"</div>" +
								item.matter +
								"<div class='post-additional-info inline-items'>" +
			
									"<a href='#' class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
										"</svg>" +
										"<span>8</span>" +
									"</a>" +
			
									"<ul class='friends-harmonic'>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic1.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic9.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic7.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic4.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
										"<li>" +
											"<a href='#'>" +
												"<img src='/StarBBS/img/friend-harmonic8.jpg' alt='friend'>" +
											"</a>" +
										"</li>" +
									"</ul>" +
			
									"<div class='names-people-likes'>" +
										"<a href='#'>Jenny </a>, <a href='#'>Robert</a> 等" +
										"<br>6个人点赞" +
									"</div>" +
			
			
									"<div class='comments-shared'>" +
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-speech-balloon-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-speech-balloon-icon'></use>" +
											"</svg>" +
											"<span>12</span>" +
										"</a>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-share-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use>" +
											"</svg>" +
											"<span>0</span>" +
										"</a>" +
									"</div>" +
			
			
								"</div>" +
			
								"<div class='control-block-button post-control-button'>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-like-post-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-like-post-icon'></use>" +
										"</svg>" +
									"</a>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-comments-post-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon'></use>" +
										"</svg>" +
									"</a>" +
			
									"<a href='#' class='btn btn-control'>" +
										"<svg class='olymp-share-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-share-icon'></use>" +
										"</svg>" +
									"</a>" +
			
								"</div>" +
			
							"</article>" +
			
							"<div class='mCustomScrollbar' data-mcs-theme='dark'>" +
			
								"<ul class='comments-list'>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='02-ProfilePage.html'>James Spiegel</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														"38 分钟前" +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium der doloremque laudantium.</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>3</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/avatar1-sm.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='#'>Mathilda Brinker</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														"1 小时前" +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Ratione voluptatem sequi en lod nesciunt. Neque porro quisquam est, quinder dolorem ipsum" +
											"quia dolor sit amet, consectetur adipisci velit en lorem ipsum duis aute irure dolor in reprehenderit in voluptate velit esse cillum." +
										"</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>8</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
									"<li class='comment-item'>" +
										"<div class='post__author author vcard inline-items'>" +
											"<img src='/StarBBS/img/avatar10-sm.jpg' alt='author'>" +
			
											"<div class='author-date'>" +
												"<a class='h6 post__author-name fn' href='#'>Elaine Dreyfuss</a>" +
												"<div class='post__date'>" +
													"<time class='published' datetime='2017-03-24T18:18'>" +
														item.createDate +
													"</time>" +
												"</div>" +
											"</div>" +
			
											"<a href='#' class='more'>" +
												"<svg class='olymp-three-dots-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon'></use>" +
												"</svg>" +
											"</a>" +
			
										"</div>" +
			
										"<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium der doloremque laudantium.</p>" +
			
										"<a href='#' class='post-add-icon inline-items'>" +
											"<svg class='olymp-heart-icon'>" +
												"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
											"</svg>" +
											"<span>8</span>" +
										"</a>" +
										"<a href='#' class='回复'>回复</a>" +
									"</li>" +
								"</ul>" +
			
							"</div>" +
			
							"<form class='comment-form inline-items'>" +
			
								"<div class='post__author author vcard inline-items'>" +
									"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
									"<div class='form-group with-icon-right '>" +
										"<textarea class='form-control' placeholder=''></textarea>" +
										"<div class='add-options-message'>" +
											"<a href='#' class='options-message'>" +
												"<svg class='olymp-camera-icon'>" +
													"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-camera-icon'></use>" +
												"</svg>" +
											"</a>" +
										"</div>" +
									"</div>" +
								"</div>" +
							"</form>" +
						"</div>" +
					"</div>";
				});
				$("#detail").html(detail);
			}
		});
	}
	
	function phb(){
	$.ajax({
	       url:'/StarBBS/list/ranking',
	       type:'get',
	       data:{},
	       success:function(data){
	       	 var str="";
	         $(data).each(function(i,item){
	         
	          str +="<div class='ui-block'>"+
	                 "<li id='dis'>"+
	                   "<span class='title'><h5 style='font-weight: bold;'>"+"<span style='color: red;'>"+(i+1)+"</span>&nbsp;&nbsp;&nbsp;"+(item.title.length > 10 ? (item.title.substring(0, 10)) : item.title)+"&nbsp;&nbsp;&nbsp;----"+"&nbsp;&nbsp;&nbsp;"+item.author +"&nbsp;&nbsp;<span style='width: 60px; height: 20px; border: red; background-color: orangered;'>热</span></h5></span></li>"+
						"<div id='di'><li>"+
						"<span class='title'>"+ (item.matter.length > 50 ? (item.matter.substring(0, 200) + "...") : item.matter) +"</span>"+
						"</li></div>"+
						"</div>";
	});
				 $("#brief").html(str);
			}
		});
	};
	function essay(){//博客文章
	    $.ajax({
	           url:'/StarBBS/list/essay',
	           type:'get',
	           data:{},
	           success:function(data){
	           var str="";
	            $(data).each(function(i,item){
	            str+="<li>"+
						"<article class='hentry post'>"+
							"<a href='#' class='h4'>" + (item.title.length > 15 ? (item.title.substring(0, 15) + "...") : item.title) + "</a>"+
							"<p>" + (item.matter.length > 50 ? (item.matter.substring(0, 200) + "...") : item.matter) + "</p>"+
							"<div class='post__date'>"+
								"<time class='published' datetime='2017-03-24T18:18'>"+
								 item.createDate+
								"</time>"+
							"</div>"+
						"</article>"+
					"</li>";
	            });
	            $("#ess").html(str);
	           }
	    });
	}
	function material(){
	$.ajax({
	   url:'/StarBBS/user/getuser',
	   type:'get',
	   data:{},
	   success:function(data){
	   var str="";
	   $(data).each(function(i,item){
	   str+="<li class='twitter-item'>"+
						"<div class='author-folder'>"+
							"<img src='/StarBBS/img/author-page.jpg' alt='author'>" +
							"<div class='author'>"+
								"<a href='#' class='author-name'>"+item.nickname+"</a>"+
								"<a href='#' class='group'>@"+item.email+"</a>"+
							"</div>"+
						"</div>"+
						"<p>"+item.desc+""+
							"<a href='#' class='link-post'>#Daydream5K</a></p>"+
						"<span class='post__date'>"+
							"<time class='published' datetime='2017-03-24T18:18'>"+
								item.createDate+
							"</time>"+
						"</span>"+
					"</li>";
	   });
	   $("#mat").html(str);
	   }
	});
	}
</script>
</body>
</html>