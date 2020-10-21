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
    <section id="main-wrapper" class="theme-default">
        <header id="header">
            <!--logo start-->
            <div class="brand">
                <a href="index.html" class="logo">
                    <span>APP</span>NAME</a>
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
                <li class="hidden-xs">
                    <input type="text" class="search" placeholder="Search project...">
                    <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                    </button>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
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
						<a data-toggle="tab" href="#default-tab-1">데이터 검색/조회</a>
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
								<div class="panel-group" id="accordion">
									<div class="panel panel-info overflow-hidden">
										<div class="panel-heading">
											<h3 class="panel-title search-panel-title">
												<a class="accordion-toggle accordion-toggle-styled" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
													<i class="fa fa-plus-circle pull-right"></i> 상세 검색
												</a>
											</h3>
										</div>
										<div id="collapseOne" class="panel-collapse collapse in">
											<div class="panel-body">
												<form class="form-horizontal" method="post" id="searchForm">
													<div class="col-md-9">
														<div class="form-group">
															<label class="control-label col-md-3">배송번호</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierName">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">주문번호</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierCompanyName">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">배송자사원번호</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierBranch">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">배송완료여부</label>
															<div class="col-md-9">
																<label class="radio-inline"><input checked name="carrierState" type="radio" value="2" checked> 전체</label>
																<label class="radio-inline"><input name="carrierState" type="radio" value="1"> 배송가능</label>
																<label class="radio-inline"><input name="carrierState" type="radio" value="0"> 배송중지</label>
															</div>
														</div>
													</div>
													<div class="col-md-12 center">
														<button class="btn btn-primary m-r-5" type="button" id="searchBtn">검색</button>
														<button class="btn btn-default" type="reset">초기화</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<table class="table table-striped table-bordered" id="example">
									<thead>
										<tr>
											<th>배송번호</th>
											<th>주문번호</th>
											<th>배송자사원번호</th>
											<th>배송시작일시</th>
											<th>배송완료여부</th>
											<th>배송완료일시</th>
										</tr>
									</thead>
									<tbody>
									<!-- 테이블 출력 -->
									<c:forEach var="delivery" items="${deliveryList }">
                                                    <tr>
                                                        <td>${delivery.dlvrNo }</td>
                                                        <td>${delivery.ordNo }</td>
                                                        <td>${delivery.dlvrEmpno }</td>
                                                        <td>${delivery.dlvrStrtDttm }</td>
                                                        <td>${delivery.dlvrCmplYn }</td>
                                                        <td>${delivery.dlvrCmplDttm }</td>
                                                        <td>
                   										<span><input type="button" value="수정" onclick="updateBtn(${delivery.dlvrNo });"></span>
                                                           /<span><input type="button" value="삭제" onclick="deleteBtn(${delivery.dlvrNo });"></span>
                                                        </td>
                                                        
                                                    </tr>                                                
                                    </c:forEach>
						
									</tbody>
								</table>
							</div>
						</div>
						
						
					</div>
<button class="btn btn-default" type="button"><a href="${pageContext.request.contextPath}/insert">입력</a></button>
</section>
<!--main content end-->

    <!--sidebar right start-->
    <aside id="sidebar-right">
        <h4 class="sidebar-title">contact List</h4>
        <div id="contact-list-wrapper">
            <div class="heading">
                <ul>
                    <li class="new-contact"><a href="javascript:void(0)"><i class="fa fa-plus"></i></a>
                    </li>
                    <li>
                        <input type="text" class="search" placeholder="Search">
                        <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                        </button>
                    </li>
                </ul>
            </div>
            <div id="contact-list">

            </div>
            <div id="contact-user">
                <div class="chat-user active"><span><i class="icon-bubble"></i></span>
                </div>
                <div class="email-user"><span><i class="icon-envelope-open"></i></span>
                </div>
                <div class="call-user"><span><i class="icon-call-out"></i></span>
                </div>
            </div>
        </div>
    </aside>
   
	
    <!--/sidebar right end-->
    <!--Global JS-->
   
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>

	<script type="text/javascript">
		function deleteBtn(dlvrNo){
			var chk=confirm("정말 삭제하시겠습니까?");
			if(chk){
				location.href="${pageContext.request.contextPath}/delete/"+dlvrNo;
			}
		}
		function updateBtn(dlvrNo){
			location.href="${pageContext.request.contextPath}/unsong_update/"+dlvrNo;
		}

	</script>
</body>

</html>