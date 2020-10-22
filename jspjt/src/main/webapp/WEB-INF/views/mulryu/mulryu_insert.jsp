<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
       <div class="row">
			<div class="col-md-12">
				<ul class="nav nav-tabs">
				<li class="">
						<a data-toggle="tab" href="#default-tab-3">물류 입력</a>
					</li>
				</ul>
			</div>
		</div>
<div class="panel-body">
								<div class="col-md-12">
									<div class="m-b-30">
									등록을 누를시 데이터베이스에 해당 값 저장.
									</div>
								<div class="panel-body">
								<div class="col-md-12">
									<form name="insertProduct">
									
									<div class="form-group">
											<label class="col-md-3 control-label">상품코드</label>
											<div class="col-md-9">
												<input class="form-control" name="prodNo" placeholder="" type="text" value="${product.prodNo }">
											</div>
										</div>
										
										<div class="form-group">
											<label class="col-md-3 control-label">상품명</label>
											<div class="col-md-9">
												<input class="form-control" name="prodNm" placeholder="" type="text" value="${product.prodNm }">
											</div>
										</div>
										
											<div class="form-group">
											<label class="col-md-3 control-label">상품설명</label>
											<div class="col-md-9">
												<input class="form-control" name="prodDetl" placeholder="" type="text" value="${product.prodDetl }">
											</div>
										</div>
										
											<div class="form-group">
											<label class="col-md-3 control-label">상품가격</label>
											<div class="col-md-9">
												<input class="form-control" name="prodPrice" placeholder="" type="text" value="${product.prodPrice }">
											</div>
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
       									<script type="text/javascript">
											function insert() {	
												insertProduct.method="POST";
												insertProduct.action="${pageContext.request.contextPath}/mulryu_insert";
												insertProduct.submit();
											}
											</script>
</body>
</html>