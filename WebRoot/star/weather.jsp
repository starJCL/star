<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

	<title>天气</title>

	<!-- Required meta tags always come first -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="x-ua-compatible" content="ie=edge">

	<!-- Main Font -->
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


<jsp:include page="../left.jsp"></jsp:include>


<!-- Fixed Sidebar Right -->

<!-- ... end Fixed Sidebar Right -->
<jsp:include page="../right.jsp"></jsp:include>


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
										<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
										<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
									</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
											<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
										</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
											<svg class="olymp-chat---messages-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-chat---messages-icon"></use></svg>
										</span>
						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
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
											<svg class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
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
											<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
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
											<svg class="olymp-comments-post-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-comments-post-icon"></use></svg>
										</span>

						<div class="comment-photo">
							<img src="/StarBBS/img/comment-photo1.jpg" alt="photo">
							<span>“She looks incredible in that outfit! We should see each...”</span>
						</div>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
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
											<svg class="olymp-happy-face-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-happy-face-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
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
											<svg class="olymp-heart-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-heart-icon"></use></svg>
										</span>

						<div class="more">
							<svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg>
							<svg class="olymp-little-delete"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-little-delete"></use></svg>
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
<div class="header-spacer header-spacer-small"></div>


<!-- Main Header Weather -->

<div class="main-header main-header-weather">
	<div class="content-bg-wrap bg-weather"></div>

	<div class="date-and-place">
		<div class="date">Saturday, March 26th</div>
		<div class="place">San Francisco, CA</div>
	</div>

	<div class="wethear-update">
		Updated: 20/10 6:32pm
		<svg class="olymp-weather-refresh-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-weather-refresh-icon"></use></svg>
	</div>
	<div class="container">
		<div class="row">
			<div class="m-auto col-lg-4 col-md-8 col-sm-12 col-12">
				<div class="wethear-content">
					<div class="wethear-now">
						<svg class="olymp-weather-partly-sunny-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-partly-sunny-icon"></use></svg>

						<div class="temperature-sensor">64°F</div>
						<div class="max-min-temperature">
							<span>Low: 58°</span>
							<span>High: 76°</span>
						</div>
					</div>


					<div class="climate">Partly Sunny</div>

					<div class="wethear-now-description">
						<div>
							<svg class="olymp-weather-thermometer-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-thermometer-icon"></use></svg>
							<div>Real Feel</div>
							<span>67°</span>
						</div>

						<div>
							<svg class="olymp-weather-rain-drops-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-rain-drops-icon"></use></svg>
							<div>Chance of Rain</div>
							<span>5%</span>
						</div>

						<div>
							<svg class="olymp-weather-wind-icon-header icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-wind-icon-header"></use></svg>
							<div>Wind Speed</div>
							<span>20MPH</span>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>

	<img class="img-bottom" src="/StarBBS/img/weather-bottom.png" alt="friends">
</div>

<!-- ... end Main Header Weather -->



<!-- Widget Weather -->

<div class="container">
	<div class="row">
		<div class="col col-xl-9 order-xl-2 col-lg-12 order-lg-1 col-md-12 col-sm-12 col-12">
			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">Widget Preview</h6>
				</div>
				<div class="ui-block-content">

					
					<!-- Form Weather -->
					
					<form>
						<div class="row">
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<fieldset class="form-group label-floating is-select">
									<label class="control-label">Country and Timezone</label>
									<select class="selectpicker form-control">
										<option value="AL">United States (UTC-8)</option>
										<option value="2">Ontario (UTC−6)</option>
										<option value="WY">Alberta (UTC−6)</option>
									</select>
								</fieldset>
					
								<fieldset class="form-group label-floating is-select">
									<label class="control-label">Extended Forecast Days</label>
									<select class="selectpicker form-control">
										<option value="AL">Show Next 7 days</option>
										<option value="2">Show Next 10 days</option>
										<option value="WY">Show Next 14 days</option>
									</select>
								</fieldset>
					
								<a href="#" class="btn btn-secondary btn-md full-width">Restore all Attributes</a>
							</div>
					
							<div class="col col-lg-6 col-md-6 col-sm-12 col-12">
								<fieldset class="form-group label-floating is-select">
									<label class="control-label">Temperature Unit</label>
									<select class="selectpicker form-control">
										<option value="AL">F° (Farenheit)</option>
										<option value="2">C° (Celsius)</option>
									</select>
								</fieldset>
					
								<div class="switcher-block">
									<div class="h6 title">Show Extended Forecast on Widget</div>
									<div class="togglebutton blue">
										<label>
											<input type="checkbox" checked="">
										</label>
									</div>
								</div>
					
								<a href="#" class="btn btn-blue btn-md full-width">Save all Changes</a>
							</div>
						</div>
					</form>
					
					<!-- ... end Form Weather -->
				</div>
			</div>

			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">Extended Forecast</h6>
				</div>

				
				<!-- Slider Weather -->
				
				<div class="swiper-container pagination-bottom" data-slide="fade">
					<div class="swiper-wrapper">
						<div class="swiper-slide swiper-slide-weather" data-swiper-parallax="-500">
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tomorrow</div>
				
								<svg class="olymp-weather-sunny-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-sunny-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">60°</div>
									<div class="max-min-temperature">
										<span>55°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Monday 28</div>
								<svg class="olymp-weather-wind-icon-header icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-wind-icon-header"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">58°</div>
									<div class="max-min-temperature">
										<span>52°</span>
										<span class="high">64°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tuesday 29</div>
				
								<svg class="olymp-weather-cloudy-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-cloudy-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">67°</div>
									<div class="max-min-temperature">
										<span>62°</span>
										<span class="high">77°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Wednesday 30</div>
								<svg class="olymp-weather-rain-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-rain-icon"></use></svg>
								<div class="wethear-now">
									<div class="temperature-sensor">70°</div>
									<div class="max-min-temperature">
										<span>65°</span>
										<span class="high">82°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Thursday 31</div>
								<svg class="olymp-weather-storm-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-storm-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">73°</div>
									<div class="max-min-temperature">
										<span>68°</span>
										<span class="high">79°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Friday 1</div>
								<svg class="olymp-weather-snow-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-snow-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">68°</div>
									<div class="max-min-temperature">
										<span>56°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
						</div>
						<div class="swiper-slide swiper-slide-weather" data-swiper-parallax="-500">
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tomorrow</div>
				
								<svg class="olymp-weather-sunny-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-sunny-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">60°</div>
									<div class="max-min-temperature">
										<span>55°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Monday 28</div>
								<svg class="olymp-weather-wind-icon-header icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-wind-icon-header"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">58°</div>
									<div class="max-min-temperature">
										<span>52°</span>
										<span class="high">64°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tuesday 29</div>
				
								<svg class="olymp-weather-cloudy-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-cloudy-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">67°</div>
									<div class="max-min-temperature">
										<span>62°</span>
										<span class="high">77°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Wednesday 30</div>
								<svg class="olymp-weather-rain-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-rain-icon"></use></svg>
								<div class="wethear-now">
									<div class="temperature-sensor">70°</div>
									<div class="max-min-temperature">
										<span>65°</span>
										<span class="high">82°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Thursday 31</div>
								<svg class="olymp-weather-storm-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-storm-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">73°</div>
									<div class="max-min-temperature">
										<span>68°</span>
										<span class="high">79°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Friday 1</div>
								<svg class="olymp-weather-snow-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-snow-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">68°</div>
									<div class="max-min-temperature">
										<span>56°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
						</div>
						<div class="swiper-slide swiper-slide-weather" data-swiper-parallax="-500">
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tomorrow</div>
				
								<svg class="olymp-weather-sunny-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-sunny-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">60°</div>
									<div class="max-min-temperature">
										<span>55°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Monday 28</div>
								<svg class="olymp-weather-wind-icon-header icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-wind-icon-header"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">58°</div>
									<div class="max-min-temperature">
										<span>52°</span>
										<span class="high">64°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Tuesday 29</div>
				
								<svg class="olymp-weather-cloudy-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-cloudy-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">67°</div>
									<div class="max-min-temperature">
										<span>62°</span>
										<span class="high">77°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Wednesday 30</div>
								<svg class="olymp-weather-rain-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-rain-icon"></use></svg>
								<div class="wethear-now">
									<div class="temperature-sensor">70°</div>
									<div class="max-min-temperature">
										<span>65°</span>
										<span class="high">82°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Thursday 31</div>
								<svg class="olymp-weather-storm-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-storm-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">73°</div>
									<div class="max-min-temperature">
										<span>68°</span>
										<span class="high">79°</span>
									</div>
								</div>
							</div>
							<div class="day-wethear-item" data-mh="wethear-item">
								<div class="title">Friday 1</div>
								<svg class="olymp-weather-snow-icon icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-snow-icon"></use></svg>
				
								<div class="wethear-now">
									<div class="temperature-sensor">68°</div>
									<div class="max-min-temperature">
										<span>56°</span>
										<span class="high">69°</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				
					<!-- If we need pagination -->
					<div class="swiper-pagination pagination-blue"></div>
				</div>
				
				<!-- ... end Slider Weather -->

			</div>

		</div>

		<div class="col col-xl-3 order-xl-1 col-lg-12 order-lg-2 col-md-12 col-sm-12 col-12">
			<div class="ui-block">
				<div class="ui-block-title">
					<h6 class="title">Widget Preview</h6>
				</div>

				
				<!-- W-Weather -->
				
				<div class="widget w-wethear">
					<a href="#" class="more"><svg class="olymp-three-dots-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons.svg#olymp-three-dots-icon"></use></svg></a>
				
					<div class="wethear-now inline-items">
						<div class="temperature-sensor">64°</div>
						<div class="max-min-temperature">
							<span>58°</span>
							<span>76°</span>
						</div>
				
						<svg class="olymp-weather-partly-sunny-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-partly-sunny-icon"></use></svg>
					</div>
				
					<div class="wethear-now-description">
						<div class="climate">Partly Sunny</div>
						<span>Real Feel: <span>67°</span></span>
						<span>Chance of Rain: <span>49%</span></span>
					</div>
				
					<ul class="weekly-forecast">
				
						<li>
							<div class="day">sun</div>
							<svg class="olymp-weather-sunny-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-sunny-icon"></use></svg>
				
							<div class="temperature-sensor-day">60°</div>
						</li>
				
						<li>
							<div class="day">mon</div>
							<svg class="olymp-weather-partly-sunny-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-partly-sunny-icon"></use></svg>
							<div class="temperature-sensor-day">58°</div>
						</li>
				
						<li>
							<div class="day">tue</div>
							<svg class="olymp-weather-cloudy-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-cloudy-icon"></use></svg>
				
							<div class="temperature-sensor-day">67°</div>
						</li>
				
						<li>
							<div class="day">wed</div>
							<svg class="olymp-weather-rain-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-rain-icon"></use></svg>
				
							<div class="temperature-sensor-day">70°</div>
						</li>
				
						<li>
							<div class="day">thu</div>
							<svg class="olymp-weather-storm-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-storm-icon"></use></svg>
				
							<div class="temperature-sensor-day">58°</div>
						</li>
				
						<li>
							<div class="day">fri</div>
							<svg class="olymp-weather-snow-icon"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-snow-icon"></use></svg>
				
							<div class="temperature-sensor-day">68°</div>
						</li>
				
						<li>
							<div class="day">sat</div>
				
							<svg class="olymp-weather-wind-icon-header"><use xlink:href="/StarBBS/svg-icons/sprites/icons-weather.svg#olymp-weather-wind-icon-header"></use></svg>
				
							<div class="temperature-sensor-day">65°</div>
						</li>
				
					</ul>
				
					<div class="date-and-place">
						<h5 class="date">Saturday, March 26th</h5>
						<div class="place">San Francisco, CA</div>
					</div>
				
				</div>
				
				<!-- W-Weather -->
			</div>
		</div>
	</div>
</div>

<!-- ... end Widget Weather -->




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
							<img src="/StarBBS/img/author-page.jpg" alt="author" class="mCS_img_loaded">
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