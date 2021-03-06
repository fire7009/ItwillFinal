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
    <style>
    .magDiv{color: red; margin-top: 10px; margin-left: 5px;}
    .msg{display: none;}
    .fileMsg{height: 10px;}
    #radioDiv{position: relative;}
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
	                           	사원등록
	                        </h3>  
	                    </div>
	                    <div class="panel-body">
	                        
	                        <form id="signUp" name="signUp" method="post" enctype="multipart/form-data" onsubmit="return false;">
								<div class="form-group">
								    <label for="exampleInputPassword1">부서</label>
								    <select class="form-control resetMsgs input-lg" id="deptNo" name="deptNo">
                                          <option value="0">부서선택</option>
                                          <option value="10">인사팀</option>
                                          <option value="20">운영팀</option>
                                          <option value="30">운송팀</option>
                                          <option value="40">회계팀</option>
                                          <option value="50">영업팀</option>                                
                      				</select>
								    <div class="magDiv"><span id="deptNoMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">직급구분코드</label>
								    <select class="form-control resetMsgs input-lg" id="posDvcd" name="posDvcd">
                                          <option value="0">직급선택</option>
                                          <option value="10">사원</option>
                                          <option value="20">대리</option>
                                          <option value="30">과장</option>
                                          <option value="40">팀장</option>
                      				</select>
								    <div class="magDiv"><span id="posDvcdMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">아이디</label>
								    <input type="text" class="form-control resetMsg" name="lgnId" id="lgnId" placeholder="아이디">
								    <div class="magDiv"><span id="lgnIdMsg" class="msg d"></span></div>
								</div>
								 <div class="form-group">
								    <label for="exampleInputPassword1">비밀번호</label>
								    <input type="password" class="form-control resetMsg" name="passwd" id="passwd" placeholder="비밀번호">
								    <div class="magDiv"><span id="passwdMsg" class="msg d"></span></div>
								</div>
								  <div class="form-group">
								    <label for="exampleInputPassword1">비밀번호 확인</label>
								    <input type="password" class="form-control resetMsg" name="passwd2" id="passwd2" placeholder="비밀번호를 한번 더 입력해주세요">
								    <div class="magDiv"><span id="passwd2Msg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">이름</label>
								    <input type="text" class="form-control resetMsg" name="empNm" id="empNm" placeholder="이름을 입력해주세요">
								    <div class="magDiv"><span id="empNmMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">생일</label>
								    <input type="text" class="form-control resetMsg" name="birthDt" id="birthDt" placeholder="생일을 입력해주세요">
								    <div class="magDiv"><span id="birthDtMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">핸드폰번호</label>
								    <input type="text" class="form-control resetMsg" name="mobilePhnNo" id="mobilePhnNo" placeholder="핸드폰번호를 입력해주세요">
								    <div class="magDiv"><span id="mobilePhnNoMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">이메일</label>
								    <input type="email" class="form-control resetMsg" name="emailAddr" id="emailAddr" placeholder="이메일을 입력해주세요">
								    <div class="magDiv"><span id="emailAddrMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputPassword1">입사일</label>
								    <input type="text" class="form-control resetMsg" name="hireDt" id="hireDt" placeholder="입사일">
								    <div class="magDiv"><span id="hireDtMsg" class="msg d"></span></div>
								</div>
								<div class="form-group">
								    <label for="exampleInputEmail1">성별</label>
								    <div id="radioDiv">
									    <input type="radio" class="radio-inline" name="gender" value="남" checked="checked"> 남자
									    <input type="radio" class="radio-inline" name="gender" value="여"> 여자
								    </div>
								</div>
								<div class="form-group">
								    <label for="exampleInputFile">사원사진</label>
								    <input type="file" id="file" name="file">
								    <div class="magDiv fileMsg"><span id="fileMsg" class="msg d"></span></div>
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
		var msg="";
		var stat=0;
		$("#deptNo").blur(function(){
			if(signUp.deptNo.value==0){
				msg="부서를 선택해주세요";
				$("#deptNoMsg").removeClass("msg");
				$("#deptNoMsg").text(msg);
				return;
			}
		});
		
		$("#posDvcd").blur(function(){
			if(signUp.posDvcd.value==0){
				msg="직급을 선택해주세요";
				$("#posDvcdMsg").removeClass("msg");
				$("#posDvcdMsg").text(msg);
				return;
			}
		});
		
		$("#lgnId").blur(function(){			
			var lgnId=signUp.lgnId.value;
			var idReg=/^[a-zA-Z]\w{5,19}$/g;
			if(signUp.lgnId.value==""){
				msg="아이디를 입력해주세요";
				$("#lgnIdMsg").removeClass("msg");
				$("#lgnIdMsg").text(msg);
				return;
			} else if(!idReg.test(signUp.lgnId.value)) {
				msg="형식에 맞는 아이디를 입력해주세요";
				$("#lgnIdMsg").removeClass("msg");
				$("#lgnIdMsg").text(msg);
				return;
			} else {
				$.ajax({
					type: "GET",
					url: "id_check/"+lgnId,
					dataType: "text",
					success: function(text){
						if(text!="success"){
							msg="동일한 아이디가 존재합니다. 다시 입력해주세요";
							$("#lgnIdMsg").removeClass("msg");
							$("#lgnIdMsg").text(msg);
							return;
						}
					},
					error: function(xhr) {
						alert("실패");
						alert("에러코드 = "+xhr.status);
					}
				});
			}
		});
		
		$("#passwd").blur(function(){
			var passwdReg=/^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[~!@#$%^&*_-]).{6,20}$/g;
			if(signUp.passwd.value==""){
				msg="비밀번호를 입력해주세요";
				$("#passwdMsg").removeClass("msg");
				$("#passwdMsg").text(msg);
				return;
			} else if(!passwdReg.test(signUp.passwd.value)) {
				msg="형식에 맞는 비밀번호를 입력해주세요";
				$("#passwdMsg").removeClass("msg");
				$("#passwdMsg").text(msg);
				return;
			}
		});
		
		$("#passwd2").blur(function(){
			if(signUp.passwd2.value==""){
				msg="비밀번호를 한번 더 입력해주세요";
				$("#passwd2Msg").removeClass("msg");
				$("#passwd2Msg").text(msg);
				return;
			} else if(signUp.passwd2.value!=signUp.passwd.value){
				msg="입력하신 비밀번호와 일치하지 않습니다.";
				$("#passwd2Msg").removeClass("msg");
				$("#passwd2Msg").text(msg);
				return;
			}
		});
		
		$("#empNm").blur(function(){
			if(signUp.empNm.value==""){
				msg="이름를 입력해주세요";
				$("#empNmMsg").removeClass("msg");
				$("#empNmMsg").text(msg);
				return;
			}
		});
		
		$("#birthDt").blur(function(){
			if(signUp.birthDt.value==""){
				msg="생일를 입력해주세요";
				$("#birthDtMsg").removeClass("msg");
				$("#birthDtMsg").text(msg);
				return;
			}
		});
		
		$("#mobilePhnNo").blur(function(){
			if(signUp.mobilePhnNo.value==""){
				msg="핸드폰번호를 입력해주세요";
				$("#mobilePhnNoMsg").removeClass("msg");
				$("#mobilePhnNoMsg").text(msg);
				return;
			}
		});
		
		$("#emailAddr").blur(function(){
			var emailReg=/^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+(\.[-a-zA-Z0-9]+)+)*$/g;
			if(signUp.emailAddr.value==""){
				msg="이메일을 입력해주세요";
				$("#emailAddrMsg").removeClass("msg");
				$("#emailAddrMsg").text(msg);
				return;
			} else if(!emailReg.test(signUp.emailAddr.value)) {
				msg="형식에 맞는 이메일을 입력해주세요";
				$("#emailAddrMsg").removeClass("msg");
				$("#emailAddrMsg").text(msg);
				return;
			}
		});
			
		$("#hireDt").blur(function(){
			if(signUp.hireDt.value==""){
				msg="입사일을 입력해주세요";
				$("#hireDtMsg").removeClass("msg");
				$("#hireDtMsg").text(msg);
				return;
			}
		});
		
		$("#file").blur(function(){
			
		});

		
		//포커스될때============================
		$("#deptNo").focus(function(){
				msg="";
				$("#deptNoMsg").addClass("msg");
				$("#deptNoMsg").text(msg);
				return;
		});
		
		$("#posDvcd").focus(function(){
				msg="";
				$("#posDvcdMsg").addClass("msg");
				$("#posDvcdMsg").text(msg);
				return;
		});
		
		$("#lgnId").focus(function(){
			msg="";
			$("#lgnIdMsg").addClass("msg");
			$("#lgnIdMsg").text(msg);
			return;
		});
		
		$("#passwd").focus(function(){
			msg="";
			$("#passwdMsg").addClass("msg");
			$("#passwdMsg").text(msg);
			return;
		});
		
		$("#passwd2").focus(function(){
			msg="";
			$("#passwd2Msg").addClass("msg");
			$("#passwd2Msg").text(msg);
			return;
		});
		
		$("#empNm").focus(function(){
			msg="";
			$("#empNmMsg").addClass("msg");
			$("#empNmMsg").text(msg);
			return;
		});
		
		$("#birthDt").focus(function(){
			msg="";
			$("#birthDtMsg").addClass("msg");
			$("#birthDtMsg").text(msg);
			return;
		});
		
		$("#mobilePhnNo").focus(function(){
			msg="";
			$("#mobilePhnNoMsg").addClass("msg");
			$("#mobilePhnNoMsg").text(msg);
			return;
		});
		
		$("#emailAddr").focus(function(){
			msg="";
			$("#emailAddrMsg").addClass("msg");
			$("#emailAddrMsg").text(msg);
			return;
		});
			
		$("#hireDt").focus(function(){
			msg="";
			$("#hireDtMsg").addClass("msg");
			$("#hireDtMsg").text(msg);
			return;
		});
		$("#file").focus(function(){
			msg="";
			$("#fileMsg").addClass("msg");
			$("#fileMsg").text(msg);
			return;
		});
		
		$("#signupBtn").click(function(){
			if(signUp.file.value==""){
				msg="사원 사진을 등록해주세요";
				$("#fileMsg").removeClass("msg");
				$("#fileMsg").text(msg);
				submitResult=false;
			}
			if(signUp.file.value!=""){
				msg="";
				$("#fileMsg").addClass("msg");
				$("#fileMsg").text(msg);
				submitResult=true;
			}
			if(msg==""){
				signUp.submit();
			}			
		});
	</script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
</body>

</html>
