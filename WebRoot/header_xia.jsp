<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<div class="container">
	<div class="row">
		<div class="col col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
			<div class="ui-block">
				<div class="top-header">
					<div class="top-header-thumb">
						<img src="/StarBBS/img/${bagJpg}" alt="nature">
					</div>
					<div class="profile-section">
						<div class="row">
							<div class="col col-lg-5 col-md-5 col-sm-12 col-12">
								<ul class="profile-menu">
									
									<li>
										<a href="/StarBBS/star/list.jsp?ll=wz">文章</a>
									</li>
									<li>
										<a href="/StarBBS/star/list.jsp?ll=yy">音乐</a>
									</li>
								</ul>
							</div>
							<div class="col col-lg-5 ml-auto col-md-5 col-sm-12 col-12">
								<ul class="profile-menu">
									<li>
										<a href="/StarBBS/star/list.jsp?ll=zp">照片</a>
									</li>
									<li>
										<a href="/StarBBS/star/list.jsp?ll=sp">视频</a>
									</li>
									<li>
										<div class="more">
											<svg class="olymp-three-dots-icon"><use xlink:href="svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
											<ul class="more-dropdown more-with-triangle">
												<li>
													<a href="#">报告简介</a>
												</li>
												<li>
													<a href="#">块配置文件</a>
												</li>
											</ul>
										</div>
									</li>
								</ul>
							</div>
						</div>

						<div class="control-block-button">
							<a href="35-YourAccount-FriendsRequests.html" class="btn btn-control bg-blue">
								<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
							</a>

							<a href="#" class="btn btn-control bg-purple">
								<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
							</a>

							<div class="btn btn-control bg-primary more">
								<svg class="olymp-settings-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-settings-icon"></use></svg>

								<ul class="more-dropdown more-with-triangle triangle-bottom-right">
									<li>
										<a href="#" onclick="upjpg()" id="sc">更新个人照片</a>
									     <form action="/StarBBS/user/userimg" method="post" enctype="multipart/form-data" style="display: none;" id="upjpg">
			                             <input type="text" value="更新头像"/>
			                             <input  type="text" value="${id}" name="id"/>
			                             <input type="file" name="f1"/>
			                             <input type="submit"/>
			                             </form>
									</li>
									<li>
										<a href="#" onclick="bageimg()">更新标题照片</a>
									     <form action="/StarBBS/user/bageimg" method="post" enctype="multipart/form-data" style="display: none;" id="bage">
			                            <input type="text" value="更新背景图"/>
			                             <input  type="text" value="${id}" name="id"/>
			                             <input type="file" name="f1"/>
			                             <input type="submit"/>
			                             </form>
									</li>
									<li>
										<a href="29-YourAccount-AccountSettings.html">账号绑定</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="top-header-author">
						<a href="/StarBBS/star/Personal.jsp" class="author-thumb">
							<img src="/StarBBS/img/${headJpg}" alt="author" style="width: 124px ;">
						</a>
						<div class="author-content">
							<a href="/StarBBS/star/Personal.jsp" class="h4 author-name">${nicheng}</a>
							<div class="country">中国</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="/StarBBS/js/jQuery/jquery-3.4.1.js"></script>
<<script type="text/javascript">
   function upjpg(){
	$("#upjpg").show();
	}
	function bageimg(){
	$("#bage").show();
	}
	
</script>
