<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <!-- Fonts  -->
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/simple-line-icons.css">
    <!-- CSS Animate -->
    <link rel="stylesheet" href="assets/css/animate.css">
    <!-- Custom styles for this theme -->
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- Feature detection -->
    <script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
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
              	<section class="animated fadeInUp" id="main-content">
		<div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
					<li class="active" id="mainTab">
						<a data-toggle="tab" href="#default-tab-1">데이터 검색/조회</a>
					</li>
					<c:if test=""></c:if>
					<li class="">
						<a data-toggle="tab" href="#default-tab-2">데이터 입력</a>
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
															<label class="control-label col-md-3">배송기사명</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierName">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">운송업체명</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierCompanyName">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">지점명</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierBranch">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">지점주소</label>
															<div class="col-md-9">
																<input class="form-control" type="text" id="s_carrierCompanyAddress">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-3 control-label">상태</label>
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
											<th>코드</th>
											<th>배송기사명</th>
											<th>기사 연락처</th>
											<th>운송업체명</th>
											<th>지점명</th>
											<th>지점주소</th>
											<th>업체연락처</th>
											<th>상태</th>
											<th>비고</th>
											<th>변경</th>
										</tr>
									</thead>
									<tbody id="carrierListLine">
									
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="default-tab-2">
						<div class="panel panel-default panel-sales">
							<div class="panel-heading">
								<div class="actions pull-right">
									<i class="fa fa-expand"></i> <i class="fa fa-chevron-down"></i> <i class="fa fa-times"></i>
								</div>
							</div>
							<div class="panel-body">
								<div class="col-md-12">
									<form class="form-horizontal" method="post">
										<div class="form-group">
											<label class="col-md-3 control-label">코드</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierCode" placeholder="" type="text">
												<span class="message disabled" id="codeMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">배송기사명</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierName" placeholder="" type="text">
												<span class="message disabled" id="nameMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">기사 연락처</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierPhone" placeholder="" type="text">
												<span class="message disabled" id="phoneMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">운송업체명</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierCompanyName" placeholder="" type="text">
												<span class="message disabled" id="companyNameMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">지점명</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierBranch" placeholder="" type="text">
												<span class="message disabled" id="branchMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">지점주소</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierCompanyAddress" placeholder="" type="text">
												<span class="message disabled" id="companyAddressMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">업체연락처</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierCompanyPhone" placeholder="" type="text">
												<span class="message disabled" id="companyPhoneMsg"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-3 control-label">비고</label>
											<div class="col-md-9">
												<input class="form-control" id="carrierMemo" placeholder="기록사항이 있을 경우 입력하세요." type="text">
												<span class="message disabled" id="memoMsg"></span>
											</div>
										</div>
										<div class="col-md-12 center">
											<button class="btn btn-primary m-r-5" type="button" id="insertBtn">등록</button>
											<button class="btn btn-default" type="reset">초기화</button>
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
    <script src="assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="assets/plugins/pace/pace.min.js"></script>
    <script src="assets/js/src/app.js"></script>

</body>

</html>
