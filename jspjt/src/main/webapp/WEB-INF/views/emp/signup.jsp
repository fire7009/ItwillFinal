<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>NeuBoard</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/img/favicon.ico" type="image/x-icon">
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
     <section class="container animated fadeInUp">
        <div class="row">
            <div class="col-md-6 col-md-offset-3">
                <div id="login-wrapper">
                    <header>
                        <div class="brand">
                            <a href="index.html" class="logo">
                                <i class="icon-layers"></i>
                                <span>NEU</span>BOARD</a>
                        </div>
                    </header>
	                <div class="panel panel-primary">
	                    <div class="panel-heading">
	                          <h3 class="panel-title">     
	                           	사원등록
	                        </h3>  
	                    </div>
	                    <div class="panel-body">
	                        
	                        <form id="singnUp" name="singnUp" method="post" enctype="multipart/form-data">
								<div class="form-group">
								    <label for="exampleInputPassword1">부서</label>
								    <select class="form-control input-lg" id="deptNo" name="deptNo">
                                          <option value="0">부서선택</option>
                                          <option value="10">인사팀</option>
                                          <option value="20">운영팀</option>
                                          <option value="30">운송팀</option>
                                          <option value="40">회계팀</option>
                                          <option value="50">영업팀</option>                                
                      				</select>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">직급구분코드</label>
								    <select class="form-control input-lg" id="posDvcd" name="posDvcd">
                                          <option value="0">직급선택</option>
                                          <option value="10">사원</option>
                                          <option value="20">대리</option>
                                          <option value="30">과장</option>
                                          <option value="40">팀장</option>
                      				</select>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">아이디</label>
								    <input type="text" class="form-control" name="lgnId" id="lgnId" placeholder="아이디">
								</div>
								 <div class="form-group">
								    <label for="exampleInputPassword1">비밀번호</label>
								    <input type="password" class="form-control" name="passwd" id="passwd" placeholder="비밀번호">
								</div>
								  <div class="form-group">
								    <label for="exampleInputPassword1">비밀번호 확인</label>
								    <input type="password" class="form-control" name="passwd2" id="passwd2" placeholder="비밀번호를 한번 더 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">이름</label>
								    <input type="text" class="form-control" name="empNm" id="empNm" placeholder="이름을 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">생일</label>
								    <input type="text" class="form-control" name="birthDt" id="birthDt" placeholder="생일을 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">핸드폰번호</label>
								    <input type="text" class="form-control" name="mobilePhnNo" id="mobilePhnNo" placeholder="핸드폰번호를 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">이메일</label>
								    <input type="email" class="form-control" name="emailAddr" id="emailAddr" placeholder="이메일을 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">입사일</label>
								    <input type="text" class="form-control" name="hireDt" id="hireDt" placeholder="입사일">
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">성별</label>
								    <input type="text" class="form-control" name="gender" id="gender" placeholder="생일을 입력해주세요">
								</div>
								<div class="form-group">
								    <label for="exampleInputFile">사원사진</label>
								    <input type="file" id="file" name="file">
								</div>
								<button type="button" class="btn btn-primary btn-block" id="signupBtn">등록</button>
	                        </form>
	                    </div>
	                </div>
                </div>
            </div>
        </div>
	
    </section>
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
	<script type="text/javascript">
		$("#signupBtn").click(function(){
			if(singnUp.deptNo.value==0){
				alert("부서를 선택해주세요");
				return;
			}
			if(singnUp.posDvcd.value==""){
				alert("직급을 선택해주세요");
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
			if(singnUp.passwd.value==""){
				alert("비밀번호를 입력하세요");
				singnUp.passwd.focus();
				return;
			}
			if(singnUp.passwd2.value==""){
				alert("비밀번호를 한번 더 입력해주세요");
				singnUp.passwd2.focus();
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
			if(singnUp.lgnId.value==""){
				alert("아이디를 입력하세요");
				singnUp.lgnId.focus();
				return;
			}
		});
	</script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
</body>

</html>
