<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- Fixed Sidebar Left -->

<div class="fixed-sidebar">
	<div class="fixed-sidebar-left sidebar--small" id="sidebar-left">

		<a href="/StarBBS/star/list.jsp" class="logo">
			<div class="img-wrap">
				<img src="/StarBBS/img/logo.png" alt="星小白">
			</div>
		</a>

		<div class="mCustomScrollbar " data-mcs-theme="dark">
			<ul class="left-menu">
				<li>
					<a href="#" class="js-sidebar-open">
						<svg class="olymp-menu-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="打开菜单"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-menu-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/insert.jsp">
						<svg class="olymp-newsfeed-icon left-menu-icon" data-toggle="tooltip" data-placement="right"   data-original-title="发布文章"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-newsfeed-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/shouName?id=${id}">
						<svg class="olymp-star-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="收藏夹"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="17-FriendGroups.html">
						<svg class="olymp-happy-faces-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="朋友组"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-faces-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="18-MusicAndPlaylists.html">
						<svg class="olymp-headphones-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="音乐和播放列表"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-headphones-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/weather.jsp">
						<svg class="olymp-weather-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="天气 APP"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-weather-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="20-CalendarAndEvents-MonthlyCalendar.html">
						<svg class="olymp-calendar-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="日历和活动"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-calendar-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="24-CommunityBadges.html">
						<svg class="olymp-badge-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="社区徽章"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-badge-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="25-FriendsBirthday.html">
						<svg class="olymp-cupcake-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="朋友生日"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-cupcake-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/statistics.jsp">
						<svg class="olymp-stats-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="账户统计"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-stats-icon"></use></svg>
					</a>
				</li>
				<li>
					<a href="27-ManageWidgets.html">
						<svg class="olymp-manage-widgets-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="管理小部件"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-manage-widgets-icon"></use></svg>
					</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="fixed-sidebar-left sidebar--large" id="sidebar-left-1">
		<a href="/StarBBS/star/list.jsp" class="logo">
			<div class="img-wrap">
				<img src="/StarBBS/img/logo.png" alt="star">
			</div>
			<div class="title-block">
				<h6 class="logo-title">star</h6>
			</div>
		</a>

		<div class="mCustomScrollbar" data-mcs-theme="dark">
			<ul class="left-menu">
				<li>
					<a href="#" class="js-sidebar-open">
						<svg class="olymp-close-icon left-menu-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-close-icon"></use></svg>
						<span class="left-menu-title">折叠菜单</span>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/insert.jsp">
						<svg class="olymp-newsfeed-icon left-menu-icon" data-toggle="tooltip" data-placement="right"   data-original-title="NEWSFEED"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-newsfeed-icon"></use></svg>
						<span class="left-menu-title">发布文章</span>
					</a>
				</li>
				<li>
					<a href="/StarBBS/star/favorite.jsp">
						<svg class="olymp-star-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="FAV PAGE"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-star-icon"></use></svg>
						<span class="left-menu-title">收藏夹</span>
					</a>
				</li>
				<li>
					<a href="17-FriendGroups.html">
						<svg class="olymp-happy-faces-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="FRIEND GROUPS"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-faces-icon"></use></svg>
						<span class="left-menu-title">朋友组</span>
					</a>
				</li>
				<li>
					<a href="18-MusicAndPlaylists.html">
						<svg class="olymp-headphones-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="MUSIC&PLAYLISTS"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-headphones-icon"></use></svg>
						<span class="left-menu-title">音乐和播放列表</span>
					</a>
				</li>
				<li>
					<a href="19-WeatherWidget.html">
						<svg class="olymp-weather-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="WEATHER APP"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-weather-icon"></use></svg>
						<span class="left-menu-title">天气应用程序</span>
					</a>
				</li>
				<li>
					<a href="20-CalendarAndEvents-MonthlyCalendar.html">
						<svg class="olymp-calendar-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="CALENDAR AND EVENTS"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-calendar-icon"></use></svg>
						<span class="left-menu-title">日历和事件</span>
					</a>
				</li>
				<li>
					<a href="24-CommunityBadges.html">
						<svg class="olymp-badge-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="Community Badges"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-badge-icon"></use></svg>
						<span class="left-menu-title">社区徽章</span>
					</a>
				</li>
				<li>
					<a href="25-FriendsBirthday.html">
						<svg class="olymp-cupcake-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="Friends Birthdays"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-cupcake-icon"></use></svg>
						<span class="left-menu-title">朋友生日</span>
					</a>
				</li>
				<li>
					<a href="26-Statistics.html">
						<svg class="olymp-stats-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="Account Stats"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-stats-icon"></use></svg>
						<span class="left-menu-title">帐户统计数据</span>
					</a>
				</li>
				<li>
					<a href="27-ManageWidgets.html">
						<svg class="olymp-manage-widgets-icon left-menu-icon"  data-toggle="tooltip" data-placement="right"   data-original-title="Manage Widgets"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-manage-widgets-icon"></use></svg>
						<span class="left-menu-title">管理小部件</span>
					</a>
				</li>
			</ul>

			<div class="profile-completion">

				<div class="skills-item">
					<div class="skills-item-info">
						<span class="skills-item-title">配置文件完成</span>
						<span class="skills-item-count"><span class="count-animate" data-speed="1000" data-refresh-interval="50" data-to="76" data-from="0"></span><span class="units">76%</span></span>
					</div>
					<div class="skills-item-meter">
						<span class="skills-item-meter-active bg-primary" style="width: 76%"></span>
					</div>
				</div>

				<span>完成 <a href="#">您的个人资料</a> ，以便人们能够更多地了解您！</span>

			</div>
		</div>
	</div>
</div>

<!-- ... end Fixed Sidebar Left -->

