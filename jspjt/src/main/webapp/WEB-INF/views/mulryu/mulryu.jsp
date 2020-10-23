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
		<h1>물류관리</h1>
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
												<form class="form-horizontal" id="searchForm" method="post"  action="mulryu_search">
													<div class="col-md-9">
														<div class="form-group">
															<label class="control-label col-md-3">상품번호</label>
															<div class="col-md-9">
																<input class="form-control" type="text" name="prodNo" id="prodNo"  value="">
															</div>
														</div>
														<div class="form-group">
															<label class="control-label col-md-3">상품명</label>
															<div class="col-md-9">
																<input class="form-control" type="text" name="prodNm" id="empNm" value="">
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
											<th>상품번호</th>
											<th>상품명</th>
											<th>상품상세</th>
											<th>상품단가</th>
											<th>재고수량</th>
											<th>등록일시</th>
										
	
										</tr>
									</thead>
										<tbody>
									<!-- 테이블 출력 -->
									<c:forEach var="product" items="${productList}">
									<c:if test="${product.delYn eq 'N'}">
                                                    <tr>
                                                        <td>${product.prodNo }</td>
                                                        <td>${product.prodNm }</td>
                                                        <td>${product.prodDetl }</td>
                                                        <td>${product.prodPrice }</td>
                                                        <td>${product.stckQty }</td>
                                                        <td>${product.regDttm }</td>

                                                       
                                                        <td>
                    											<button type="button" class="btn btn-primary m-r-5" onclick="update(${product.prodNo});">수정</button>
                                                            /<button type="button" class="btn btn-default" onclick="deleteBtn(${product.prodNo });">삭제</button>
                                                        </td>
                                                    </tr>            
                                                 </c:if>                                  
                                                </c:forEach>
						
									</tbody>
								</table>
							</div>
						</div>
					</div>
					
					 <!-- 수정 모달 -->
			<div class="modal fade in" id="updateDiv" style="display:hidden; padding-right:17px;">
				<div class="modal-dialog">
					<form action="" class="form-horizontal">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" class="close closeDiv" data-dismiss="modal" type="button">×</button>
								<h4 class="modal-title">수정 내용</h4>
							</div>
							<div class="modal-body">
								<table style="width:450px; margin:0 auto;">
									<tbody id="modifyBody">
										<tr>                                                            
											<th width="100" ></th>
											<th width="30" ></th>
											<th ></th>
										</tr>
										
										<tr>
											<td>
												공지번호
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control update" style="height: 40px;" name="title" id="prodNo" value="" readonly="readonly"/>
											</td>
										</tr>
										
										<tr>
											<td>
												상품명
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control update"  name="title" id="updateProdNm" value=""/>
											</td>
										</tr>
										
										<tr>
											<td>
												상품상세
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control update"  name="title" id="updateProdDetl" value=""/>
											</td>
										</tr>
										
										<tr>
											<td>
												상품단가
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control update"  name="title" id="updateProdPrice" value=""/>
											</td>
										</tr>
										
											<tr>
											<td>
												재고수량
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control update"  name="title" id="updatestckQty" value=""/>
											</td>
										</tr>
										
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button class="btn btn-sm btn-success" type="button" id="updateBtn" data-dismiss="modal">수정</button>
								<a class="btn btn-sm btn-white closeDiv" data-dismiss="modal">닫기</a>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- //수정모달 -->
					

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

<script type="text/javascript">

		$("#searchBtn").click(function(){
			$("#searchForm").submit();
		});
		function deleteBtn(prodNo){
			var chk=confirm("정말 삭제하시겠습니까?");
			if(chk){
				location.href="${pageContext.request.contextPath}/mulryu_delete/"+prodNo;
			}
		}
		
		
	    function update(prodNo) {
	    	$("#prodNo").val(prodNo);
	    	$("#updateDiv").show(200);
	    	
	    	$.ajax({
	    		type: "GET",
	    		url: "mulryu_update/"+prodNo,
	    		dataType: "json",
	    		success: function(json){
	    			$("#prodNo").val(json.prodNo);
	    			$("#updateProdNm").val(json.prodNo);
	    			$("#updateProdDetl").val(json.prodDetl);
	    			$("#updateProdPrice").val(json.prodPrice);
	    			$("#updatestckQty").val(json.stckQty);
	    		},
	    		error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
	    	});
	    	
	    }
	    //수정버튼
	    $("#updateBtn").click(function(){
	    	var prodNo=$("#prodNo").val();
	    	var prodNm=$("#updateProdNm").val();
	    	var prodDetl=$("#updateProdDetl").val();
	    	var prodPrice=$("#updateProdPrice").val();
	    	var stckQty=$("#updatestckQty").val();
	    	
	    	if(prodNm==""){
	    		alert("상품이름을 입력해주세요.");
				return;
	    	}
	    	
	    	if(prodDetl==""){
	    		alert("상품상세내용을 입력해주세요.");
				return;
	    	}
	    	if(prodPrice==""){
	    		alert("상품가격을 입력해주세요.");
				return;
	    	}
	    	if(stckQty==""){
	    		alert("상품수량을 입력해주세요.");
				return;
	    	}
	    	
	    	$.ajax({
	    		type: "PUT",
	    		url: "mulryu_update",
	    		headers: {"content-type":"application/json","X-HTTP-Method-override":"PUT"},
	    		data: JSON.stringify({"prodNo":prodNo,"prodNm":prodNm,"prodDetl":prodDetl,"prodPrice":prodPrice,"stckQty":stckQty}),
	    		dataType: "text",
	    		success: function(text){
	    			if(text=="success"){
	    				$(".update").val("");
		    	    	$("#updateDiv").hide(200);
		    	    	location.href="${pageContext.request.contextPath}/mulryu";
	    			}
	    		},
	    		error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
	    	});
	    });
	    
	    //닫기버튼
	    $(".closeDiv").click(function(){
	    	$(".update").val("");
	    	$("#updateDiv").hide(200);
	    });
	    
	 
	</script>
</body>

</html>