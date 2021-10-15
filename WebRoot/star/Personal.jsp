<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>

	<title>Profile Page - Blog Posts</title>
	
	

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

  <script src="/StarBBS/js/libs/webfontloader.min.js"></script>
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


	</script>
<script type="text/javascript" src="../js/jQuery/jquery-3.4.1.js"></script>
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
                "z-index": 10 ,
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

<script type="text/javascript">
	var username = '${name}';
	$(function(){
		list();
		var flag = 1;
		$("#like").click(function() {
			if (flag == 1) {
				alert("1");
				flag = 0;
			} else {
				alert("2");
				flag = 1;
			}
		});
	});
	
	function list(fuzzy, order){
		$.ajax({
			url:"/StarBBS/article/list",
			type:"get",
			data:{"mohu":fuzzy, "sort":order == null ? "DA" : order,name:username},
			async:"true",
			success:function(data){
				var str = "";
				var name = "";
				$(data).each(function(i, item){
					str += "<div class='col col-xl-6 col-lg-12 col-md-12 col-sm-12 col-12'>" +
						"<div class='ui-block'>" +
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
												"<a onclick='del(" + item.id + ")' href='#'>删除帖子</a>" +
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
									"<img src='/StarBBS/img/" + item.article_img1 + "' alt='photo'>" +
								"</div>" +
							
								"<a href='#' onclick='article(" + item.id + ")' data-toggle='modal' data-target='#blog-post-popup' class='h2 post-title'>" + (item.title.length > 15 ? (item.title.substring(0, 15) + "...") : item.title) + "</a>" +
							
								"<p>" + (item.matter.length > 50 ? (item.matter.substring(0, 200) + "...") : item.matter) + "</p>" +
							
								"<a href='#' onclick='article(" + item.id + ")' data-toggle='modal' data-target='#blog-post-popup' class='btn btn-md-2 btn-border-think c-grey btn-transparent custom-color'>查看更多</a>" +
							
								"<div class='post-additional-info inline-items'>" +
							
									"<a id='like' onclick='like(&quot;${name}&quot;," + item.id + ")' class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'><use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use></svg>" +
										"<span>" + item.like + "</span>" +
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
					name = item.author;
				});
				$("#row").html(str);
				$("#name").text(name);
			}
		});
	}
	
	function del(id){
		if(confirm("确认删除该文章？")){
			$.ajax({
				url:"/StarBBS/article/del",
				type:"get",
				data:{"id":id},
				success:function(data){
					alert("删除成功");
				}
			});
		}
	}
	
	function like(name, id){
		$.ajax({
			url:"/StarBBS/article/like",
			type:"get",
			data:{"name":name,"id":id},
			success:function(data){
				window.location.href="/StarBBS/star/Personal.jsp";
				/* if(data == 1){
					
				} */
			}
		});
	}

	function article(id){
		$.ajax({
			url:"/StarBBS/article/detail",
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
			
									"<b  class='post-add-icon inline-items'>" +
										"<svg class='olymp-heart-icon'>" +
											"<use xlink:href='/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon'></use>" +
										"</svg>" +
										"<span>" + item.like + "</span>" +
									"</b>" +
			
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
														"5 分钟前" +
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
	
	function mohu(){
		var mohu = $("#fuzzy").val();
		var sort = $("#order").val();
		if(mohu == ""){
			alert("请输入文章标题的关键字...");
			list(mohu, sort);
		}else{
			list(mohu, sort);
		}
	}
	
	function order(str){
		var mohu = $("#fuzzy").val();
		list(mohu, str);
	}
</script>

</head>
<body class="page-has-left-panels page-has-right-panels" style="width: 100%;height: 100%;">

<jsp:include page="../left.jsp"></jsp:include>

<!-- ... end Fixed Sidebar Right -->
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
				<a href="#" class="title">Close Friends</a>
				<a href="#">Settings</a>
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

					<div class="more"><svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>

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
				<input class="form-control" placeholder="Search Friends..." value="" type="text">
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

<!-- Top Header-Profile -->
<div class="header-spacer"></div>
<jsp:include page="../header_xia.jsp"></jsp:include>
<jsp:include page="../header.jsp"></jsp:include>

<!-- ... end Top Header-Profile -->
<div class="container">
	<div class="row">
		<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<div class="ui-block responsive-flex">
				<div class="ui-block-title">
					<div id="name" class="h6 title"></div>
					<div class="w-select">
						<div class="title">排序:</div>
						<fieldset class="form-group">
							<select id="order" onchange="order($('#order').val())" class="selectpicker form-control">
								<option value="DA">时间 (降序)</option>
								<option value="NU">点赞数</option>
								<option value="SH">分享数</option>
							</select>
						</fieldset>
					</div>

					<form class="w-search">
						<div class="form-group with-button">
							<input id="fuzzy" class="form-control" type="text" placeholder="搜索博客文章...">
							<button onclick="mohu()">
								<svg class="olymp-magnifying-glass-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-magnifying-glass-icon"></use></svg>
							</button>
						</div>
					</form>
					<a href="#" class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg></a>
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 所有发布的文章 -->
<div class="container">
	<div id="row" class="row">

		<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<a href="#" class="btn btn-control btn-more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg></a>
		</div>
	</div>
</div>

<!-- 文章的详细内容 -->
<div class="modal fade" id="blog-post-popup" tabindex="-1" role="dialog" aria-labelledby="blog-post-popup" aria-hidden="true">
	<div id="detail" class="modal-dialog window-popup blog-post-popup" role="document">
		
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
				<h6 class="title">Update Header Photo</h6>
			</div>

			<div class="modal-body">
				<a href="#" class="upload-photo-item">
				<svg class="olymp-computer-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-computer-icon"></use></svg>

				<h6>Upload Photo</h6>
				<span>Bse your computer.</span>
			</a>

				<a href="#" class="upload-photo-item" data-toggle="modal" data-target="#choose-from-my-photo">

			<svg class="olymp-photos-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-photos-icon"></use></svg>

			<h6>Choose from My Photos</h6>
			<span>Choose from your uploaded photos</span>
		</a>
			</div>
		</div>
	</div>
</div>

<!-- Window-popup Choose from my Photo -->
<div class="modal fade" id="choose-from-my-photo" tabindex="-1" role="dialog" aria-labelledby="choose-from-my-photo" aria-hidden="true">
	<div class="modal-dialog window-popup choose-from-my-photo" role="document">

		<div class="modal-content">
			<a href="#" class="close icon-close" data-dismiss="modal" aria-label="Close">
				<svg class="olymp-close-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
			</a>
			<div class="modal-header">
				<h6 class="title">Choose from My Photos</h6>

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
									<span>Last Added: 6 分钟前</span>
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
									<span>Last Added: 13 分钟前</span>
								</figcaption>
							</figure>
						</div>
						<div class="choose-photo-item" data-mh="choose-item">
							<figure>
								<img src="/StarBBS/img/choose-photo15.jpg" alt="photo">
								<figcaption>
									<a href="#">The Majestic Canyon</a>
									<span>Last Added: 57 分钟前</span>
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

<!-- ... 从照片中选择 -->
<a class="back-to-top" href="#">
	<img src="/StarBBS/svg-icons/back-to-top.svg" alt="arrow" class="back-icon">
</a>

<!-- 聊天页面 -->
<div class="ui-block popup-chat popup-chat-responsive" tabindex="-1" role="dialog" aria-labelledby="popup-chat-responsive" aria-hidden="true">
	<!-- 聊天记录 -->
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
							<span class="chat-message-item">嗨,詹姆斯! 请记得买明天的食物! 我负责送礼物，杰克去拿饮料  </span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">昨天下午8:10</time></span>
						</div>
					</li>

					<li>
						<div class="author-thumb">
							<img src="/StarBBS/img/author-page.jpg" alt="author" class="mCS_img_loaded">
						</div>
						<div class="notification-event">
							<span class="chat-message-item">别担心玛蒂尔达!</span>
							<span class="chat-message-item">我已经买了所有的东西</span>
							<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">昨天下午8:29</time></span>
						</div>
					</li>
				</ul>
			</div>

			<form class="need-validation">
		<!-- 发送信息框 -->
		<div class="form-group label-floating is-empty">
			<label class="control-label">按回车键发送...</label>
			<textarea class="form-control" placeholder=""></textarea>
			<div class="add-options-message">
				<a href="#" class="options-message">
					<svg class="olymp-computer-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-computer-icon"></use></svg>
				</a>
				<div class="options-message smile-block">

					<svg class="olymp-happy-sticker-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-sticker-icon"></use></svg>

					<!-- 小表情 -->
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