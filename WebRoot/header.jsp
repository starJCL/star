<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<header class="header" id="site-header">
<%
	if(session.getAttribute("name") == null){
		response.sendRedirect("/StarBBS/login.jsp");
	}
	System.out.println(session.getAttribute("name"));

 %>
<script>
WIDGET = {
  "CONFIG": {
    "layout": "2",
    "width": "240",
    "height": "270",
    "background": "1",
    "dataColor": "000000",
    "color": "000000",
    "key": "14cc732126c5445e94d82471585394e1"
  }
}
</script>
<script src="https://widget.qweather.net/standard/static/js/he-standard-common.js?v=2.0"></script>

<script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
<script type="text/javascript">
$(function(){
	var card_state = ${start};

	if(card_state==0){
	$("#color").css("background-color","#32e4cd");
	}else if(card_state==1){
	$("#color").css("background-color","#ffd52f");
	}else if(card_state==2){
	$("#color").css("background-color","#ff4f60");
	}else if(card_state==3){
	$("#color").css("background-color","#cbdfee");
	};
	var user_grade = "${user_grade}";
	if(user_grade==2){
		$("#v").show();
		
	}else{
		$("#v").hide();
		
	}
	
});

function ZT(a){
	if(a==0){
	$("#color").css("background-color","#32e4cd");
	}else if(a==1){
	$("#color").css("background-color","#ffd52f");
	}else if(a==2){
	$("#color").css("background-color","#ff4f60");
	}else if(a==3){
	$("#color").css("background-color","#cbdfee");
	}
	
	var username = '${name}';
	
	$.ajax({
		url:'/StarBBS/star/updS',
		type:'get',
		data:{card_state:a,username:username},
		success:function(data){
		}
		});
}
</script>


	<div class="page-title" >
		<h6></h6>
	</div>

	<div class="header-content-wrapper">
		
		
		<a href="#" class="link-find-friend">寻找朋友</a>

		<div class="control-block">

			<div class="control-icon more has-items">
				<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
				<div class="label-avatar bg-blue">6</div>

				<div class="more-dropdown more-with-triangle triangle-top-center">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">朋友请求</h6>
						<a href="#">寻找朋友</a>
						<a href="#">设置</a>
					</div>

					<div class="mCustomScrollbar" data-mcs-theme="dark">
						<ul class="notification-list friend-requests"> 
							<li>
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar55-sm.jpg" alt="author">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">塔玛拉·罗曼诺夫</a>
									<span class="chat-message-item">共同的朋友：莎拉·赫特菲尔德</span>
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
									<a href="#" class="h6 notification-friend">托尼·史蒂文斯</a>
									<span class="chat-message-item">4 共同的朋友</span>
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
									<img src="/StarBBS/img/avatar57-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									你和 <a href="#" class="h6 notification-friend">玛丽·简·斯塔克</a> 刚成为朋友写上 <a href="#" class="notification-link">她的墙</a>.
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
									<img src="/StarBBS/img/avatar58-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">斯塔格服装</a>
									<span class="chat-message-item">9 个共同的朋友</span>
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

						</ul>
					</div>

					<a href="#" class="view-all bg-blue">检查所有事件</a>
				</div>
			</div>

			<div class="control-icon more has-items">
				<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
				<div class="label-avatar bg-purple">2</div>

				<div class="more-dropdown more-with-triangle triangle-top-center">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">聊天 / 消息</h6>
						<a href="#">标记所有阅读</a>
						<a href="#">设置</a>
					</div>

					<div class="mCustomScrollbar" data-mcs-theme="dark">
						<ul class="notification-list chat-message">
							<li class="message-unread">
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar59-sm.jpg" alt="author">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">戴安娜·詹姆森</a>
									<span class="chat-message-item">嗨， 詹姆斯！是戴安娜，我只是想让你知道我们必须重新安排...</span>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 小时前</time></span>
								</div>
								<span class="notification-icon">
									<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
								</span>
								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								</div>
							</li>

							<li>
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar60-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">杰克·帕克</a>
									<span class="chat-message-item">太好了，我明天见！</span>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 小时前</time></span>
								</div>
								<span class="notification-icon">
									<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
								</span>

								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								</div>
							</li>
							<li>
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar61-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">伊莱恩·德雷福斯</a>
									<span class="chat-message-item">我们得在办公室检查一下， 看看客户是否和...</span>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">昨天晚上9点56分</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>
								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								</div>
							</li>

							<li class="chat-group">
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar11-sm.jpg" alt="作者">
									<img src="/StarBBS/img/avatar12-sm.jpg" alt="作者">
									<img src="/StarBBS/img/avatar13-sm.jpg" alt="作者">
									<img src="/StarBBS/img/avatar10-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<a href="#" class="h6 notification-friend">你， 费伊， 埃德和喷气 # 3</a>
									<span class="last-message-author">埃德：</span>
									<span class="chat-message-item">是的！在我看来很好！</span>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">3月16日上午10：23</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>
								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
								</div>
							</li>
						</ul>
					</div>

					<a href="#" class="view-all bg-purple">查看所有消息</a>
				</div>
			</div>

			<div class="control-icon more has-items">
				<svg class="olymp-thunder-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-thunder-icon"></use></svg>

				<div class="label-avatar bg-primary">8</div>

				<div class="more-dropdown more-with-triangle triangle-top-center">
					<div class="ui-block-title ui-block-title-small">
						<h6 class="title">通知</h6>
						<a href="#">标记所有阅读</a>
						<a href="#">设置</a>
					</div>

					<div class="mCustomScrollbar" data-mcs-theme="dark">
						<ul class="notification-list">
							<li>
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar62-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<div><a href="#" class="h6 notification-friend">玛蒂尔达·布林克</a> 评论您的新<a href="/StarBBS/star/util.jsp" class="notification-link">配置文件状态</a>.</div>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">4 小时前</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
									</span>

								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
									<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
								</div>
							</li>

							<li class="un-read">
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar63-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<div>你和<a href="#" class="h6 notification-friend">尼古拉斯·格里森</a> 刚成为朋友写上 <a href="#" class="notification-link">他的墙</a>.</div>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">9 小时前</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
									</span>

								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
									<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
								</div>
							</li>

							<li class="with-comment-photo">
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar64-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<div><a href="#" class="h6 notification-friend">莎拉·赫特菲尔德</a> 评论你的<a href="#" class="notification-link">相片</a>.</div>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">昨天早上5：32</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
									</span>

								<div class="comment-photo">
									<img src="/StarBBS/img/comment-photo1.jpg" alt="photo">
									<span>“"她看起来难以置信的服装！我们应该看看每一个..."”</span>
								</div>

								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
									<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
								</div>
							</li>

							<li>
								<div class="author-thumb">
									<img src="/StarBBS/img/avatar65-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<div><a href="#" class="h6 notification-friend">绿果岩</a> 邀请你参加他的活动古在 <a href="#" class="notification-link">高谭酒吧</a>.</div>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">3月5日下午6：43</time></span>
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
									<img src="/StarBBS/img/avatar66-sm.jpg" alt="作者">
								</div>
								<div class="notification-event">
									<div><a href="#" class="h6 notification-friend">詹姆斯·萨默斯</a> 评论您的新 <a href="#" class="notification-link">配置文件状态</a>.</div>
									<span class="notification-date"><time class="entry-date updated" datetime="2004-07-24T18:18">3 月 2 日晚上 8：29</time></span>
								</div>
									<span class="notification-icon">
										<svg class="olymp-heart-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon"></use></svg>
									</span>

								<div class="more">
									<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
									<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
								</div>
							</li>
						</ul>
					</div>

					<a href="#" class="view-all bg-primary">查看所有通知</a>
				</div>
			</div>
			
			<div id="czrk"><a href="/StarBBS/star/huiyuan.jsp" style="color:#f7ce00">充值入口</a></div>
			<div id="v" style="position:relative; left: 82px;top:13px;z-index: 9999" >
			<img src="/StarBBS/img/V.jfif" width="10px" height="10px"></img>
			</div>

			<div class="author-page author vcard inline-items more">
				<div class="author-thumb">
					<img alt="author" src="/StarBBS/img/author-page.jpg" class="avatar">
					<span class="icon-status online"  id ="color"></span>
					<div class="more-dropdown more-with-triangle">
						<div class="mCustomScrollbar" data-mcs-theme="dark">
							<div class="ui-block-title ui-block-title-small">
								<h6 class="title">您的帐户</h6>
							</div>

							<ul class="account-settings">
								<li>
									<a href="/StarBBS/star/util.jsp">

										<svg class="olymp-menu-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-menu-icon"></use></svg>

										<span>配置文件设置</span>
									</a>
								</li>
								
								<li>
									<a href="../login.jsp">
										<svg class="olymp-logout-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-logout-icon"></use></svg>
 
										<span>注销</span>
									</a>
								</li>
							</ul>

							<div class="ui-block-title ui-block-title-small">
								<h6 class="title">聊天设置</h6>
							</div>

							<ul class="chat-settings">
								<li onclick="ZT(0)">
										<span class="icon-status online"></span>
										<span>在线</span>
								</li>
								<li onclick="ZT(1)">
										<span class="icon-status away"></span>
										<span>离开</span>
								</li>
								<li  onclick="ZT(2)">
										<span class="icon-status disconected"></span>
										<span>断开</span>
								</li>

								<li onclick="ZT(3)">
										<span class="icon-status status-invisible"></span>
										<span>隐藏</span>
								</li>
							</ul>

							
							<div class="ui-block-title ui-block-title-small">
								<h6 class="title">关于star</h6>
							</div>

						</div>

					</div>
				</div>
				<a href="/StarBBS/star/list.jsp" class="author-name fn">
					<div class="author-title">
						${nicheng}<svg class="olymp-dropdown-arrow-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-dropdown-arrow-icon"></use></svg>
					</div>
					<span class="author-subtitle">太空牛仔</span>
				</a>
			</div>

		</div>
	</div>

</header>
<!-- <div style="position: absolute; left: 60px ;top -1000px; z-index: 777"><div id="he-plugin-standard" ></div></div> -->

<!-- ... end Header-BP -->