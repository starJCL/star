<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>

<title>添加</title>

<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="/StarBBS/tinymce/js/tinymce/tinymce.min.js"></script>

<script src="/StarBBS/tinymce/js/tinymce/langs/zh_CN.js"></script>

<script>
	tinymce
			.init({
				selector : "#mytextarea",
				language : "zh_CN",
				height : this.height,
				min_height : 900,
				plugins : [
						"advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker",
						"searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking",
						"save table contextmenu directionality emoticons template paste imagetools textcolor",
						"emoticons textcolor autoresize autosave" ],
				toolbar1 : "undo redo | styleselect | fontselect | fontsizeselect | bold italic underline strikethrough | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent",
				toolbar2 : "fullscreen preview | forecolor backcolor emoticons | table | link image| mybutton |restoredraft",
				images_upload_url: '/StraBBS/utilController/uploadImage',
    			images_upload_base_path: '/statics',
				
    image_title: false, // 是否开启图片标题设置的选择，这里设置否
    automatic_uploads: true,
 images_upload_handler : function handler(blobInfo, success, failure, progress) {
{


        var valid_extensions = ['png','jpg']
        var ext, extensions;
        extensions = {
          'image/jpeg': 'jpg',
          'image/jpg': 'jpg',
          'image/gif': 'gif',
          'image/png': 'png'
        };
        ext = extensions[blobInfo.blob().type.toLowerCase()] || 'dat';
        //add your extension test here.
        if( valid_extensions.indexOf(ext) == -1){
             failure("Invalid extension");
                return;
        }
        var xhr, formData;
        xhr = new XMLHttpRequest();
        xhr.open('POST',"StarBBS/utilController/uploadImage");
        xhr.withCredentials = settings.credentials;
        xhr.upload.onprogress = function(e) {
            progress(e.loaded / e.total * 100);
        };
        xhr.onerror = function() {
            failure("Image upload failed due to a XHR Transport error. Code: " + xhr.status);
        };
        xhr.onload = function() {
            var json;
            if (xhr.status != 200) {
                failure("HTTP Error: " + xhr.status);
                return;
            }
            json = JSON.parse(xhr.responseText);
            if (!json || typeof json.location != "string") {
                failure("Invalid JSON: " + xhr.responseText);
                return;
            }
            success(pathJoin(settings.basePath, json.location));
        };
        formData = new FormData();
        formData.append('file', blobInfo.blob(), blobInfo.filename());
        xhr.send(formData);
    }
}
			});
</script>

<!-- Main Font -->
<script src="/StarBBS/js/libs/webfontloader.min.js"></script>
<script>
	WebFont.load({
		google : {
			families : [ 'Roboto:300,400,500,700:latin' ]
		}
	});
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


	<!-- Fixed Sidebar Left -->
	<jsp:include page="../left.jsp"></jsp:include>

	<!-- Fixed Sidebar Right -->
	<jsp:include page="../right.jsp"></jsp:include>
	<!-- ... end Fixed Sidebar Right -->


	<!-- Fixed Sidebar Right-Responsive -->




	<!-- Header-BP -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- ... end Header-BP -->


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

		<!-- Tab panes -->
		<div class="tab-content tab-content-responsive">

			<div class="tab-pane " id="request" role="tabpanel">

				<div class="mCustomScrollbar" data-mcs-theme="dark">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">FRIEND REQUESTS</h6>
						<a href="#">Find Friends</a> <a href="#">Settings</a>
					</div>
					<ul class="notification-list friend-requests">
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar55-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Tamara Romanoff</a> <span
									class="chat-message-item">Mutual Friend: Sarah Hetfield</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> </span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar56-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Tony Stevens</a> <span
									class="chat-message-item">4 Friends in Common</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> </span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							</div>
						</li>
						<li class="accepted">
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar57-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								You and <a href="#" class="h6 notification-friend">Mary Jane
									Stark</a> just became friends. Write on <a href="#"
									class="notification-link">her wall</a>.
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar58-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Stagg Clothing</a> <span
									class="chat-message-item">9 Friends in Common</span>
							</div> <span class="notification-icon"> <a href="#"
								class="accept-request"> <span class="icon-add without-text">
										<svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> <a href="#" class="accept-request request-del"> <span
									class="icon-minus"> <svg class="olymp-happy-face-icon">
											<use
												xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
								</span> </a> </span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
						<a href="#">Mark all as read</a> <a href="#">Settings</a>
					</div>

					<ul class="notification-list chat-message">
						<li class="message-unread">
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar59-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Diana Jameson</a> <span
									class="chat-message-item">Hi James! It’s Diana, I just
									wanted to let you know that we have to reschedule...</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar60-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Jake Parker</a> <span
									class="chat-message-item">Great, I’ll see you tomorrow!.</span>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							</div>
						</li>
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar61-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">Elaine Dreyfuss</a> <span
									class="chat-message-item">We’ll have to check that at
									the office and see if the client is on board with...</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 9:56pm</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							</div>
						</li>

						<li class="chat-group">
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar11-sm.jpg" alt="author"> <img
									src="/StarBBS/img/avatar12-sm.jpg" alt="author"> <img
									src="/StarBBS/img/avatar13-sm.jpg" alt="author"> <img
									src="/StarBBS/img/avatar10-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<a href="#" class="h6 notification-friend">You, Faye, Ed
									&amp; Jet +3</a> <span class="last-message-author">Ed:</span> <span
									class="chat-message-item">Yeah! Seems fine by me!</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										16th at 10:23am</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-chat---messages-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
						</span>
							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
						<a href="#">Mark all as read</a> <a href="#">Settings</a>
					</div>

					<ul class="notification-list">
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar62-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">Mathilda Brinker</a>
									commented on your new <a href="#" class="notification-link">profile
										status</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">4
										hours ago</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-comments-post-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>

						<li class="un-read">
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar63-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<div>
									You and <a href="#" class="h6 notification-friend">Nicholas
										Grissom</a> just became friends. Write on <a href="#"
										class="notification-link">his wall</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">9
										hours ago</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>

						<li class="with-comment-photo">
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar64-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">Sarah Hetfield</a>
									commented on your <a href="#" class="notification-link">photo</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 5:32am</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-comments-post-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
						</span>

							<div class="comment-photo">
								<img src="/StarBBS/img/comment-photo1.jpg" alt="photo"> <span>“She
									looks incredible in that outfit! We should see each...”</span>
							</div>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar65-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">Green Goo Rock</a>
									invited you to attend to his event Goo in <a href="#"
										class="notification-link">Gotham Bar</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										5th at 6:43pm</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-happy-face-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar66-sm.jpg" alt="author">
							</div>
							<div class="notification-event">
								<div>
									<a href="#" class="h6 notification-friend">James Summers</a>
									commented on your new <a href="#" class="notification-link">profile
										status</a>.
								</div>
								<span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">March
										2nd at 8:29pm</time> </span>
							</div> <span class="notification-icon"> <svg
									class="olymp-heart-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon"></use></svg>
						</span>

							<div class="more">
								<svg class="olymp-three-dots-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								<svg class="olymp-little-delete">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
							</div>
						</li>
					</ul>

					<a href="#" class="view-all bg-primary">View All Notifications</a>
				</div>

			</div>

			<div class="tab-pane " id="search" role="tabpanel">


				<form class="search-bar w-search notification-list friend-requests">
					<div class="form-group with-button">
						<input class="form-control js-user-search"
							placeholder="Search here people or pages..." type="text">
					</div>
				</form>


			</div>

		</div>
		<!-- ... end  Tab panes -->

	</header>

	<!-- ... end Responsive Header-BP -->
	<div class="header-spacer"></div>



	<div class="container">
		<div class="row">
			<form method="post" action="/StarBBS/star/article">
				<div class=" col-lg-6 col-md-6 col-sm-12 col-12">
					<div class="form-group label-floating is-empty">
						<label class="control-label">标题</label> <input name="title"
							class="form-control"
							style="height: 80px; border: 1px solid purple ; width: 1094px "
							placeholder="请输入标题" type="text" required="required">
					</div>

					<div class="form-group label-floating is-empty">
						<input name="author" class="form-control" value="star"
							style="height: 80px ; border: 1px solid  purple  ;"
							placeholder="请输入作者" type="hidden" required="required">
					</div>

				</div>
				<div class=" col-lg-6 col-md-6 col-sm-12 col-12" style="position: absolute; top: 110px; right: -474px">
					<div class="form-group label-floating is-empty"
						style="	 width: 150px">
						<label class="control-label">请选择类型</label>
						<select name="type_id" style="height: 80px; border: 1px solid  purple  ;">
							<option value="1">文章</option>
							<option value="2">视频</option>
							<option value="3">音频</option>
							<option value="4">图片</option>
						</select>
					</div>
				</div>




				<textarea id="mytextarea" name="matter" style="width: 1290px;">
					<b>尊敬的用户请你畅所欲言吧！！！</b>
				</textarea>
				<script type="text/javascript">
					$(function(){
					shi = function(){
						$("#s").text("小时");
						$("#ys").val("小时");
						}
					shi1 = function(){
						$("#s").text("分钟");
						$("#ys").val("分钟");
						}
					})
					function 	a(){
						window.location.href="/StarBBS/star/list.jsp";
						}
					
					
				</script>
				
				<b style="float: right; color: red; padding:9px 5px;"><input type="checkbox" name ="ding">定时发送</b>
			<input type="hidden" name="shi" id ="ys" value="分钟"/>
				<b style="float: right; color: red; padding:9px 2px;"  id ="s" onclick="shi()"  ondblclick="shi1()" >分钟</b>
				<input name="num" type="number"  value="0" max="60" min="0" style="width: 70px; height:20px; float: right; border: 1px solid purple ;"> 
				<input type="submit" class="btn btn-primary btn-md-2" value="发布文章" onclick="a()" />
			</form>
		</div>
	</div>


	<!-- ... end Window-popup Update Header Photo -->

	<!-- Window-popup Choose from my Photo -->

	<div class="modal fade" id="choose-from-my-photo" tabindex="-1"
		role="dialog" aria-labelledby="choose-from-my-photo"
		aria-hidden="true">
		<div class="modal-dialog window-popup choose-from-my-photo"
			role="document">

			<div class="modal-content">
				<a href="#" class="close icon-close" data-dismiss="modal"
					aria-label="Close"> <svg class="olymp-close-icon">
						<use
							xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
				</a>
				<div class="modal-header">
					<h6 class="title">Choose from My Photos</h6>

					<!-- Nav tabs -->
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"><a class="nav-link active"
							data-toggle="tab" href="#home" role="tab" aria-expanded="true">
								<svg class="olymp-photos-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-photos-icon"></use></svg>
						</a>
						</li>
						<li class="nav-item"><a class="nav-link" data-toggle="tab"
							href="#profile" role="tab" aria-expanded="false"> <svg
									class="olymp-albums-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-albums-icon"></use></svg>
						</a>
						</li>
					</ul>
				</div>

				<div class="modal-body">
					<!-- Tab panes -->
					<div class="tab-content">
						<div class="tab-pane active" id="home" role="tabpanel"
							aria-expanded="true">

							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo1.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo2.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo3.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>

							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo4.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo5.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo6.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>

							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo7.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo8.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<div class="radio">
									<label class="custom-radio"> <img
										src="/StarBBS/img/choose-photo9.jpg" alt="photo"> <input
										type="radio" name="optionsRadios"> </label>
								</div>
							</div>


							<a href="#" class="btn btn-secondary btn-lg btn--half-width">Cancel</a>
							<a href="#" class="btn btn-primary btn-lg btn--half-width">Confirm
								Photo</a>

						</div>
						<div class="tab-pane" id="profile" role="tabpanel"
							aria-expanded="false">

							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo10.jpg" alt="photo">
									<figcaption>
										<a href="#">South America Vacations</a> <span>Last
											Added: 2 hours ago</span>
									</figcaption>
								</figure>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo11.jpg" alt="photo">
									<figcaption>
										<a href="#">Photoshoot Summer 2016</a> <span>Last
											Added: 5 weeks ago</span>
									</figcaption>
								</figure>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo12.jpg" alt="photo">
									<figcaption>
										<a href="#">Amazing Street Food</a> <span>Last Added: 6
											mins ago</span>
									</figcaption>
								</figure>
							</div>

							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo13.jpg" alt="photo">
									<figcaption>
										<a href="#">Graffity & Street Art</a> <span>Last Added:
											16 hours ago</span>
									</figcaption>
								</figure>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo14.jpg" alt="photo">
									<figcaption>
										<a href="#">Amazing Landscapes</a> <span>Last Added: 13
											mins ago</span>
									</figcaption>
								</figure>
							</div>
							<div class="choose-photo-item" data-mh="choose-item">
								<figure>
									<img src="/StarBBS/img/choose-photo15.jpg" alt="photo">
									<figcaption>
										<a href="#">The Majestic Canyon</a> <span>Last Added:
											57 mins ago</span>
									</figcaption>
								</figure>
							</div>


							<a href="#" class="btn btn-secondary btn-lg btn--half-width">Cancel</a>
							<a href="#"
								class="btn btn-primary btn-lg disabled btn--half-width">Confirm
								Photo</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!-- ... end Window-popup Choose from my Photo -->


	<a class="back-to-top" href="#"> <img
		src="/StarBBS/svg-icons/back-to-top.svg" alt="arrow" class="back-icon">
	</a>




	<!-- Window-popup-CHAT for responsive min-width: 768px -->

	<div class="ui-block popup-chat popup-chat-responsive" tabindex="-1"
		role="dialog" aria-labelledby="popup-chat-responsive"
		aria-hidden="true">

		<div class="modal-content">
			<div class="modal-header">
				<span class="icon-status online"></span>
				<h6 class="title">Chat</h6>
				<div class="more">
					<svg class="olymp-three-dots-icon">
						<use
							xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
					<svg class="olymp-little-delete js-chat-open">
						<use
							xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
				</div>
			</div>
			<div class="modal-body">
				<div class="mCustomScrollbar">
					<ul class="notification-list chat-message chat-message-field">
						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar14-sm.jpg" alt="author"
									class="mCS_img_loaded">
							</div>
							<div class="notification-event">
								<span class="chat-message-item">Hi James! Please remember
									to buy the food for tomorrow! I’m gonna be handling the gifts
									and Jake’s gonna get the drinks</span> <span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 8:10pm</time> </span>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/author-page.jpg" alt="author"
									class="mCS_img_loaded">
							</div>
							<div class="notification-event">
								<span class="chat-message-item">Don’t worry Mathilda!</span> <span
									class="chat-message-item">I already bought everything</span> <span
									class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 8:29pm</time> </span>
							</div>
						</li>

						<li>
							<div class="author-thumb">
								<img src="/StarBBS/img/avatar14-sm.jpg" alt="author"
									class="mCS_img_loaded">
							</div>
							<div class="notification-event">
								<span class="chat-message-item">Hi James! Please remember
									to buy the food for tomorrow! I’m gonna be handling the gifts
									and Jake’s gonna get the drinks</span> <span class="notification-date"><time
										class="entry-date updated" datetime="2004-07-24T18:18">Yesterday
										at 8:10pm</time> </span>
							</div>
						</li>
					</ul>
				</div>

				<form class="need-validation">

					<div class="form-group label-floating is-empty">
						<label class="control-label">Press enter to post...</label>
						<textarea class="form-control" placeholder=""></textarea>
						<div class="add-options-message">
							<a href="#" class="options-message"> <svg
									class="olymp-computer-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-computer-icon"></use></svg>
							</a>
							<div class="options-message smile-block">

								<svg class="olymp-happy-sticker-icon">
									<use
										xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-sticker-icon"></use></svg>

								<ul
									class="more-dropdown more-with-triangle triangle-bottom-right">
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat1.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat2.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat3.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat4.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat5.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat6.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat7.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat8.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat9.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat10.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat11.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat12.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat13.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat14.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat15.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat16.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat17.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat18.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat19.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat20.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat21.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat22.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat23.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat24.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat25.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat26.png" alt="icon"> </a>
									</li>
									<li><a href="#"> <img
											src="/StarBBS/img/icon-chat27.png" alt="icon"> </a>
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

</body>
</html>