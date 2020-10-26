<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NeuBoard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts  -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/simple-line-icons.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
    <!-- Feature detection -->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="assets/js/vendor/html5shiv.js"></script>
    <script src="assets/js/vendor/respond.min.js"></script>
    <![endif]-->
</head>

<section id="main-wrapper" class="theme-default">
		<header id="header">
			<!--logo start-->
			<input type="hidden" id="empNo" value="${loginUserInfo.empNo }">
			<div class="brand">
				<a href="/pjt/main" class="logo"> <i class="icon-layers"></i> <span>ABC</span>ERP
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
		
			</ul>
		</header>