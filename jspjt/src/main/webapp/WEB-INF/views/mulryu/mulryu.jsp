<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
             <section class="main-content-wrapper">
	<div class="pageheader">
		<h1>매출</h1>
		<div class="breadcrumb-wrapper hidden-xs">
			<span class="label">You are here:</span>
			<ol class="breadcrumb">
				<li>
					<a href="/snack">메인</a>
				</li>
				<li>매출관리</li>
				<li class="active">매출</li>
			</ol>
		</div>
	</div>
	<section class="animated fadeInUp" id="main-content">
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="active" id="mainTab">
						<a data-toggle="tab" href="#default-tab-1">데이터 검색/조회</a>
					</li>
					
					<li class="">
						<a data-toggle="tab" href="#default-tab-3">매출 입력/정산</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade active in" id="default-tab-1">
						<div class="panel panel-default panel-sales">
							<div class="panel-heading">
								<!-- <h3 class="panel-title">매출</h3> -->
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
												<form class="form-horizontal" id="searchForm">
													<div class="col-md-9">
														<div class="form-group">
															<label class="col-md-3 control-label">거래처</label>
															<div class="col-md-9">
																<select class="form-control selectpicker" id="s_salesClient" name="salesClient" data-live-search="true" data-size="10">
																	<option selected value="">
																		거래처를 선택하세요.
																	</option>
																	
																	<option value="1">
																		GS25 강남점
																	</option>
																	
																	<option value="2">
																		CU 강남점
																	</option>
																	
																	<option value="3">
																		세븐일레븐
																	</option>
																	
																	<option value="4">
																		CU 역삼점
																	</option>
																	
																	<option value="5">
																		이마트 춘천점
																	</option>
																	
																	<option value="6">
																		아이티윌
																	</option>
																	
																</select>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">날짜/기간</label>
															<div class="col-md-9">
																<label class="radio-inline"><input checked id="dateOptions-date" name="dateOptions" type="radio" value="date"> 날짜별</label>
																<label class="radio-inline"><input id="dateOptions-range" name="dateOptions" type="radio" value="range"> 기간별</label>
															</div>
														</div>
														<div class="form-group form-date">
															<label class="col-md-3 control-label">&nbsp;</label>
															<div class="col-md-9">
																<input class="form-control" id="datepicker-date" placeholder="날짜 선택..." type="text" data-date-format="yyyy-mm-dd">
															</div>
														</div>
														<div class="form-group form-daterange disabled">
															<label class="col-md-3 control-label">&nbsp;</label>
															<div class="col-md-9">
																<div class="input-group">
																	<input class="form-control" id="datepicker-startRange" name="start" placeholder="날짜 선택..." type="text" data-date-format="yyyy-mm-dd">
																	<span class="input-group-addon">~</span>
																	<input class="form-control" id="datepicker-endRange" name="end" placeholder="날짜 선택..." type="text" data-date-format="yyyy-mm-dd">
																</div>
															</div>
														</div>
													</div>
													<div class="col-md-12 center">
														<button class="btn btn-primary m-r-5" type="button" id="searchBtn">검색</button>
														<button class="btn btn-default" type="reset">초기화</button>
														<button class="btn btn-primary m-r-5" type="button"><a href="${pageContext.request.contextPath}/mulryu_insert">물류추가</a></button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<table class="table table-striped table-bordered" id="example">
									<thead>
										<tr>
											<th>상품번호</th>
											<th>상품명</th>
											<th>상품상세</th>
											<th>상품단가</th>
											<th>재고수량</th>
											<th>판매여부</th>
											<th>품절여부</th>
											<th>등록일시</th>
											<th>삭제여부</th>
											<th>삭제일시</th>
	
										</tr>
									</thead>
										<tbody>
									<!-- 테이블 출력 -->
									<c:forEach var="product" items="${productList}">
                                                    <tr>
                                                        <td>${product.prod_no }</td>
                                                        <td>${product.prod_nm }</td>
                                                        <td>${product.prod_detl }</td>
                                                        <td>${product.prod_price }</td>
                                                        <td>${product.stck_qty }</td>
                                                        <td>${product.sales_yn }</td>
                                                        <td>${product.so_yn }</td>
                                                        <td>${product.reg_dttm }</td>
                                                        <td>${product.del_yn }</td>
                                                        <td>${product.del_dttm }</td>
                                                       
                                                        <td>
                                                            <span><a>수정</a></span>
                                                            /<span><input type="button" value="삭제"></span>
                                                        </td>
                                                    </tr>                                                
                                                </c:forEach>
						
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					
					
					<div class="tab-pane fade" id="default-tab-3">
						<div class="panel panel-default panel-sales">
							<div class="panel-heading">
								<div class="actions pull-right">
									<i class="fa fa-expand"></i> <i class="fa fa-chevron-down"></i> <i class="fa fa-times"></i>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-12">
									<div class="m-b-30">
										<p>날짜를 지정 후 정산 버튼을 누르면 해당 일자의 거래처별 매출 기록이 계산되어 등록됩니다.
										 이미 등록된 날짜일 경우 현재의 데이터를 바탕으로 갱신됩니다.</p>
										<p>매출 기록 정산에는 다소 시간이 소요됩니다.</p>
									</div>
									<form method="post" class="form-horizontal">
										<div class="form-group">
											<label class="col-md-3 control-label">일자</label>
											<div class="col-md-6">
												<input class="form-control" id="datepicker-addSales" placeholder="날짜 선택..." type="text" data-date-format="yyyy-mm-dd">
											</div>
											<div class="col-md-3">&nbsp;</div>
										</div>
										<div class="col-md-12 center">
											<button class="btn btn-primary m-r-5" type="button" id="insertBtn">정산</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</section><!--main content end-->

             
                </div>
            </div>
        </div>
                </div>
            </section>
        </section>
        <!--main content end-->
    </section>
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

</body>

</html>
