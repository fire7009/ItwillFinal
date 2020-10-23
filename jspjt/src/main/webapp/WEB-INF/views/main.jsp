<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif] -->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>메인</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<!-- Favicon -->
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico"
	type="image/x-icon">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Fonts  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/simple-line-icons.css">
<!-- Switchery -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/switchery/switchery.min.css">
<!-- iCheck-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/icheck/css/all.css">
<!-- CSS Animate -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
<!-- Custom styles for this theme -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<!-- Feature detection -->
<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/css/fullcalendar.min.css" />
</head>

<body>
	<section id="main-wrapper" class="theme-default">
		<header id="header">
			<!--logo start-->
			<input type="hidden" id="empNo" value="${loginUserInfo.empNo }">
			<div class="brand">
				<a href="index.html" class="logo"> <i class="icon-layers"></i> <span>NEU</span>BOARD
				</a>
			</div>
			<!--logo end-->
			<ul class="nav navbar-nav navbar-left">
				<li class="toggle-navigation toggle-left">
					<button class="sidebar-toggle" id="toggle-left">
						<i class="fa fa-bars"></i>
					</button>
				</li>
				<li class="toggle-profile hidden-xs">
					<button type="button" class="btn btn-default" id="toggle-profile">
						<i class="icon-user"></i>
					</button>
				</li>
				<li class="hidden-xs hidden-sm"><input type="text"
					class="search" placeholder="Search project...">
					<button type="submit" class="btn btn-sm btn-search">
						<i class="fa fa-search"></i>
					</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown profile hidden-xs"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-toggle="dropdown"> <span class="meta"> <span
							class="avatar"> <img src="" class="img-circle" alt="">
						</span> <span class="text">Mike Adams</span> <span class="caret"></span>
					</span>
				</a>
					<ul class="dropdown-menu animated fadeInRight" role="menu">
						<li><span class="arrow top"></span>
							<h5>
								<span>80%</span> <small class="text-muted">Profile
									complete</small>
							</h5>
							<div class="progress progress-xs">
								<div class="progress-bar progress-bar" style="width: 80%">
								</div>
							</div></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-user"></i> </span>My Account
						</a></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-envelope"></i> </span>Messages
						</a></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-cog"></i> </span>Settings
						</a></li>
						<li class="divider"></li>
						<li><a href="/pjt/emp/logout"> <span class="icon"><i
									class="fa fa-sign-out"></i> </span>Logout
						</a></li>
					</ul></li>
				<li class="toggle-fullscreen hidden-xs">
					<button type="button" class="btn btn-default expand"
						id="toggle-fullscreen">
						<i class="fa fa-expand"></i>
					</button>
				</li>
				<li class="toggle-navigation toggle-right">
					<button class="sidebar-toggle" id="toggle-right">
						<i class="fa fa-indent"></i>
					</button>
				</li>
			</ul>
		</header>
		<!--sidebar left start-->
		<c:import url="/WEB-INF/views/leftSidebar.jsp">
			<c:param name="leftSidebar" value="leftSidebar"></c:param>
		</c:import>
		<!--sidebar left end-->
		<!--main content start-->
		<section class="main-content-wrapper">
			<section id="main-content" class="animated fadeInUp">
			<div class="col-md-12 col-lg-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="panel panel-solid-success widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-bar-chart"></i>
                                        <span class="total text-center">$3,200</span>
                                        <span class="title text-center">Earnings</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-support"></i>
                                        <span class="total text-center">2</span>
                                        <span class="title text-center">대기중인 결제</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-envelope-open"></i>
                                        <span class="total text-center">10</span>
                                        <span class="title text-center">새메일</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="panel panel-solid-info widget-mini">
                                    <div class="panel-body">
                                        <i class="icon-user"></i>
                                        <span class="total text-center">12,680</span>
                                        <span class="title text-center">Signups</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                   <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3">
                        <div class="panel panel-default browser-chart">
                            <div class="panel-heading">
                                <h3 class="panel-title">판매 순위</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                        <ul>
                                            <li><i class="fa fa-circle success-color"></i> 진로</li>
                                            <li><i class="fa fa-circle primary-color"></i> 처음처럼</li>
                                            <li><i class="fa fa-circle warning-color"></i> 참이슬 후레쉬</li>
                                            <li><i class="fa fa-circle info-color"></i> 카스</li>
                                            <li><i class="fa fa-circle default-color"></i> Other</li>
                                        </ul>
                                    </div>
                                    <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
                                        <div id="doughnut-canvas-holder">
                                            <canvas id="doughnut-chart-area" width="137" height="137"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="col-xs-12 col-sm-6 col-md-6 col-lg-3" >
						<div class="panel">
							<div class="panel-body">
								<header>
									<h2>weather</h2>
								</header>

								<div class="col-md-12">
									<div class="panel panel panel-default">
										<div class="panel-heading">
											<div class="actions pull-right">
											
											</div>
										</div>

										<div class="panel-body widget-weather">
											<div class="row">
												<div class="col-xs-6 col-sm-6 col-md-6">
													<h3 class="text-center title">Today</h3>
													<div class="CurrIcon"></div>

												</div>
												<div class="col-xs-6 col-sm-6 col-md-6">
													
													<div class="text-center">
													<div class="City"></div>
														<div class="CurrTemp"></div>
													</div>

												</div>
											</div>

										</div>
									</div>


								</div>

							</div>

						</div>

					</div>
					
					<div class="col-md-12">
						<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>공지사항</b>
								<div class="actions pull-right">
                                    <a href="/pjt/notice">더보기</a>
                                </div>
							</div>
							<div class="panel-body" >
								<table class="table">
                                    
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
                                    </tbody>
                                </table>
							</div>
						</div>	
						</div>
						<div class="col-md-6">
						<div class="panel panel-default">
							<div class="panel-heading">
								<b>일정</b>
							</div>
							<div class="panel-body" >
								<div id="calendar"></div>
							</div>
						</div>	
						</div>
					</div>
					
						
					
				
				

				<!--mail wrapper end-->
			</section>
		</section>
		<!--main content end-->
	</section>
	<!--sidebar right start-->

	<!--sidebar right end-->
	<!--Config demo-->

	<!--/Config demo-->
	<!--Global JS-->

	
	<script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/src/app1.js"></script>
	
    <script src="${pageContext.request.contextPath}/resources/vendor/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/weather/js/skycons.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/vendor/js/fullcalendar.min.js"></script>
   	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/gcal.js"></script>
    <!--<script src="resources/vendor/js/gcal.js"></script>-->
    
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/chartjs/Chart.min.js"></script>
    
   <!-- <script src="${pageContext.request.contextPath}/resources/vendor/js/bootstrap.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/js/bootstrap-datetimepicker.min.js"></script>
    
    
    
    <script src="${pageContext.request.contextPath}/resources/js/main1.js"></script>  
    <script src="${pageContext.request.contextPath}/resources/js/addEvents.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/etcSetting.js"></script>
	<!--Page Level JS-->

	<script>
		$(document).ready(function() {
				

				var weatherIcon = {
					'01d' : 'clear-day',
					'01n' : 'clear-night',
					'02d' : 'partly-cloudy-day',
					'02n' : 'partly-cloudy-night',
					'03d' : 'cloudy',
					'03n' : 'cloudy',
					'04d' : 'snow',
					'04n' : 'snow',
					'09d' : 'rain',
					'09n' : 'rain',
					'10d' : 'rain',
					'10n' : 'rain',
					'11d' : 'fas fa-poo-storm',
					'11n' : 'fas fa-poo-storm',
					'13d' : 'snow',
					'13n' : 'snow',
					'50d' : 'cloudy',
					'50n' : 'cloudy'
							};
				$.ajax({
					url : 'http://api.openweathermap.org/data/2.5/weather?q=Seoul&appid=4bdb3115eb76375e0090b06fd5623a1f&units=metric',
					dataType : 'json',
					type : "GET",
					success : function(data) {
						
						
					var Icon = (data.weather[0].icon).substr(0, 3);
					var Temp = Math.floor(data.main.temp)+ '℃';
					var city = data.name;
					alert(weatherIcon[Icon]);
					$('.CurrIcon').append('<canvas id='+weatherIcon[Icon]+'></canvas>');
					$('.CurrTemp').append('<h1>'+Temp+'</h1>');
					$('.City').append('<h1><b>' + city+ '</b></h1>');
					app.weather();
					
					}
						});
				app.chartJs();

				});
	</script>

</body>

</html>
