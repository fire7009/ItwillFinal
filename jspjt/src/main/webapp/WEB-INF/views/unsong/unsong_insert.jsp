<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   

<!DOCTYPE html>

<html class="no-js">
<!--<![endif]-->

<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
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
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/respond.min.js"></script>
    <![endif]-->
</head>

<body>

      	<c:import url="/WEB-INF/views/header.jsp">
       		<c:param name="header" value="header"></c:param>
		</c:import>
        <!-- header -->
       	<c:import url="/WEB-INF/views/leftSidebar.jsp">
       		<c:param name="leftSidebar" value="leftSidebar"></c:param>
		</c:import>
        <!--sidebar left -->
        
        <!--main content start-->
        <section class="main-content-wrapper">
            <div class="pageheader">
                <h1>Dashboard</h1>
                <p class="description">Welcome to NEUBOARD Responsive Admin Theme</p>
                <div class="breadcrumb-wrapper hidden-xs">
                    <span class="label">You are here:</span>
                    <ol class="breadcrumb">
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>
            <section id="main-content">
                <div class="row">
                        <div class="col-md-12 col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body ng-binding">
              	<section class="animated fadeInUp" id="main-content">
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="active" id="mainTab">
						<a data-toggle="tab" href="#default-tab-1">데이터 입력</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade active in" id="default-tab-1">
						<div class="panel panel-default panel-sales">
							<div class="panel-heading">
								<div class="actions pull-right">
									<i class="fa fa-expand"></i> <i class="fa fa-chevron-down"></i> <i class="fa fa-times"></i>
								</div>
							</div>
				<div class="panel-body">
								<div class="col-md-12">
									<div class="m-b-30">
									등록을 누를시 데이터베이스에 해당 값 저장.
									</div>
								<div class="panel-body">
								<div class="col-md-12">
									<form name="insertDelivery">
									
									</div>
											<div class="form-group">
											<label class="col-md-3 control-label">사원이름</label>
											<div class="col-md-9">
												<input class="form-control" name="dlvrEmpno" placeholder="" type="text" value="${loginUserInfo.empNo}" readonly="readonly">
											</div>
											
									</div>
											<div class="form-group">
											<label class="col-md-3 control-label">사원이름</label>
											<div class="col-md-9">
												<input class="form-control" name="dlvrEmpNm" placeholder="" type="text" value="${loginUserInfo.empNm}" readonly="readonly">
											</div>
											
								
										
										<div class="form-group">
											<label class="col-md-3 control-label">주문번호</label>
											<div class="col-md-9">
												<input class="form-control" name="ordNo" placeholder="" type="text" value="${ordEmpno }">
												
											</div>
										
									
										<div class="col-md-12 center">
											<button class="btn btn-primary m-r-5" type="button"onclick="insert();">등록</button>
											<button class="btn btn-default" type="reset">초기화</button>		
										</div>
									</form>
								</div>
								</div>
								</div>
							</div>
							
							
							<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
    
       										<script type="text/javascript">
											function insert() {	
												insertDelivery.method="POST";
												insertDelivery.action="${pageContext.request.contextPath}/unsong_insert";
												insertDelivery.submit();
											}
											</script>
</body>
</html>