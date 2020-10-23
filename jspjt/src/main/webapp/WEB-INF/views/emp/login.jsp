<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html class="no-js">

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
    <style>
    .magDiv{color: red; margin-top: 10px; margin-left: 5px;}
    .msg{display: none;}
    </style>
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
                           	로그인	
                        </h3>
                        </div>
                        <div class="panel-body">
                            <p> Login to access your account.</p>
                            <form class="form-horizontal" name="f" action="${pageContext.request.contextPath}/emp/login" method="post" role="form">
                            	<input type="hidden" name="empNo" value="0">
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <i class="fa fa-user"></i>
                                        <input type="text" class="form-control" id="email" name="lgnId" placeholder="Id">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                        <i class="fa fa-lock"></i>
                                        <input type="password" class="form-control" onkeyup="enterkey();" id="password" name="passwd" placeholder="Password">
                                        <div class="magDiv"><span id="passwdMsg" class="msg d"></span></div>
                                    </div>
                                </div>
                                <div class="magDiv"><span id="lgnMsg" class="msg d"></span></div>
                                <div class="form-group">
                                    <div class="col-md-12">
                                       	<button type="button" class="btn btn-primary btn-block" onclick="userLogin();">로그인</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<script type="text/javascript">
		function userLogin() {
			var msg="";
			var lgnId=f.lgnId.value;
			if ( f.lgnId.value == "" ) {
				msg="아이디를 입력해주세요";
				$("#lgnMsg").removeClass("msg");
				$("#lgnMsg").text(msg);
				f.lgnId.focus();
				f.submitResult=false;
				return;
			}			
			
			if ( f.passwd.value == "" ) {
				msg="비밀번호를 입력하십시요.";
				$("#passwdMsg").removeClass("msg");
				$("#passwdMsg").text(msg);
				f.passwd.focus();
				f.submitResult=false;
				return;
			}
			
			var passwd=f.passwd.value;
			$.ajax({
				type: "POST",
				url: "lgncheck",
				data: {"lgnId" : lgnId,"passwd" : passwd},
				dataType: "text",
				success: function(text){
					if(text == "none" || text == "pwmiss"){
						msg="아이디가 존재하지 않거나 비밀번호가 일치하지 않습니다."
						$("#lgnMsg").removeClass("msg");
						$("#lgnMsg").text(msg);
						submitResult=false;
					} else if(text=="success"){
						submit();
					}
				},
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
			});
		}
		function enterkey(){
			if(window.event.keyCode==13){
				userLogin();
			}
		}
	</script>
    </section>
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
</body>

</html>
