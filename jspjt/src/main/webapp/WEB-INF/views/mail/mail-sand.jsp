<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif] -->

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
    <!-- Switchery -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/switchery/switchery.min.css">
    <!-- iCheck-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/icheck/css/all.css">
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
    

    <script type="text/javascript">
    
    </script>
</head>

<body>
    <section id="main-wrapper" class="theme-default">
        <header id="header">
            <!--logo start-->
            <div class="brand">
                <a href="index.html" class="logo">
                    <i class="icon-layers"></i>
                    <span>NEU</span>BOARD</a>
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
                <li class="hidden-xs hidden-sm">
                    <input type="text" class="search" placeholder="Search project...">
                    <button type="submit" class="btn btn-sm btn-search"><i class="fa fa-search"></i>
                    </button>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown profile hidden-xs">
                    <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="meta">
                            <span class="avatar">
                                <img src="assets/img/profile.jpg" class="img-circle" alt="">
                            </span>
                        <span class="text">Mike Adams</span>
                        <span class="caret"></span>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated fadeInRight" role="menu">
                        <li>
                            <span class="arrow top"></span>
                            <h5>
                                <span>80%</span>
                                <small class="text-muted">Profile complete</small>
                            </h5>
                            <div class="progress progress-xs">
                                <div class="progress-bar progress-bar" style="width: 80%">
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-user"></i>
                                </span>My Account</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-envelope"></i>
                                </span>Messages</a>
                        </li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-cog"></i>
                                </span>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="javascript:void(0);">
                                <span class="icon"><i class="fa fa-sign-out"></i>
                                </span>Logout</a>
                        </li>
                    </ul>
                </li>
                <li class="toggle-fullscreen hidden-xs">
                    <button type="button" class="btn btn-default expand" id="toggle-fullscreen">
                        <i class="fa fa-expand"></i>
                    </button>
                </li>
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
            <section id="main-content" class="animated fadeInUp">
                <!--mail wrapper start-->
                <div class="row">
                    <div class="col-md-2 col-sm-12" id="compose-wrapper">
                        <div class="panel">
                            <aside class="panel-body">
                                <a href="" class="btn btn-primary btn-block">메일쓰기</a>
                                <ul class="nav nav-pills nav-stacked compose-nav">
                                    <li class="active">
                                        <a href="mail-inbox"> <i class="fa fa-inbox"></i> 받은편지함
                                            <span class="label label-primary label-circle pull-right inbox-notification" id="count1">8</span>
                                        </a>
                                    </li>
                                  
                                    <li>
                                        <a href="send-inbox"> <i class="fa fa-envelope-o"></i> 보낸편지함</a>
                                    </li>
                                   
                                    <li>
                                        <a href="#"> <i class="fa fa-trash-o"></i>삭제편지함</a>
                                    </li>
                                </ul>
                            </aside>
                        </div>

                       

                    </div>
                      <div class="col-md-6 col-sm-12" id="view-mail-wrapper">
                        <div class="panel">
                            <div class="panel-body">
                                <header>
                                    <h2>New Message</h2>
                                </header>
                                <div class="row view-mail-header">
                                    <div class="col-md-12">
                                        <div class="view-mail-reply pull-right">
                                           
                                            
                             
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-12">
                                    <form action="" id="sendMail" method="post">
                                        <div class="panel view-compose-body">
                                            <div class="panel-body">
                                            
                                                <div class="form-group">
                                                    <select class="form-control input-lg" id="deptSelect">
                                                        <option value="0">부서선택</option>
                                                        <option value="10">인사팀</option>
                                                        <option value="20">운영팀</option>
                                                        <option value="30">운송팀</option>
                                                        <option value="40">회계팀</option>
                                                        <option value="50">영업팀</option>                                
                                    				</select>
                                                   
                                                </div>
                                                
                                                <div class="form-group">
                                                    <select class="form-control input-lg" id="memberSelect">
                                                         <option value="0">직원선택</option>
                                    				</select>
                                                   
                                                </div>
                                                
                                                <div class="form-group">
                                                    <input type="text" class="form-control" id="subject" placeholder="Subject:">
                                                </div>

                                                <textarea class="textarea form-control" rows="5" cols="40" id="contnet"  placeholder="Enter text ..." style="width: 100%; height: 200px"></textarea>
                                            </div>
                                            <div class="panel-footer">
                                            	<input type="submit" id="btn" class="btn btn-sm btn-primary " value="보내기">
                                               
                                                <button class="btn btn-default btn-sm "><i class="fa fa-times"></i> Discard</button>
                                                <input type="file" class="btn btn-default btn-sm pull-right">
                                                
                                            </div>
                                           
                                        </div>
                                        </form>
                                    </div>
                                    </div>
                                </div>
                            </div>


                        </div>
                    </div>
                   
                </div>
               
                <!--mail wrapper end-->
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
                <ul>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar3.png" class="img-circle" alt="">
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Ashley Bell </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Sarasota, FL</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Brian Johnson </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> San Francisco, CA</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Chris Jones </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Brooklyn, NY</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Erica Hill </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Palo Alto, Ca</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                        <img src="assets/img/avatar5.png" class="img-circle" alt="">
                          <i class="away animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Greg Smith </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> London, UK</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Jason Kendall</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> New York, NY </small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="on animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Kristen Davis </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Greenville, SC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Michael Shepard </div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Vancouver, BC</small>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="row">
                            <div class="col-md-3">
                                <span class="avatar">
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
                          <i class="off animated bounceIn"></i>
                        </span>
                            </div>
                            <div class="col-md-9">
                                <div class="name">Paul Allen</div>
                                <small class="location text-muted"><i class="icon-pointer"></i> Savannah, GA</small>
                            </div>
                        </div>
                    </li>
                </ul>
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
    <!--sidebar right end-->
    <!--Config demo-->
    <div id="config" class="config hidden-xs">
        <h4>Settings<a href="javascript:void(0)" class="config-link closed"><i class="icon-settings"></i></a></h4>
        <div class="config-swatch-wrap">
            <div class="row">
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-default">
                                <span class="header bg-white"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark">
                                <span class="header bg-dark"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue">
                                <span class="header bg-info"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-blue-full">
                                <span class="header bg-info"></span>
                                <span class="header bg-info"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey">
                                <span class="header bg-grey"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-grey-full">
                                <span class="header bg-grey"></span>
                                <span class="header bg-grey"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>

                    </ul>
                </div>
                <div class="col-xs-6">
                    <ul class="options">
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-full">
                                <span class="header bg-dark"></span>
                                <span class="header bg-dark"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green">
                                <span class="header bg-green"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-green-full">
                                <span class="header bg-green"></span>
                                <span class="header bg-green"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red">
                                <span class="header bg-red"></span>
                                <span class="header bg-white"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-red-full">
                                <span class="header bg-red"></span>
                                <span class="header bg-red"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                        <li>
                            <div class="theme-style-wrapper" data-theme="theme-dark-blue-full">
                                <span class="header bg-dark-blue"></span>
                                <span class="header bg-dark-blue"></span>
                                <span class="nav bg-dark"></span>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!--/Config demo-->
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/switchery/switchery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/fullscreen/jquery.fullscreen-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
    <!--Page Level JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/icheck/js/icheck.min.js"></script>
    <script>
   
    	$(document).ready(function() {
    		//alert($('#memberSelect').val()); 
    		
            $.ajax({
                type : 'get',
                url : 'getMailCount',
                data:  {empNo: '${loginUserInfo.empNo}'},
                dataType : 'json',
                success : function(data) {
                	//$("#count").text("받은편지("+data.COUNT+") ");
                	$("#count1").text(data.COUNT);
                },
                error : function(xhr, type) {
                    alert('server error occoured')
                }
            });
        }); 
    	
    	
    $("#deptSelect").bind("change",function(){
    	//alert($('#deptSelect').val());
    	$('#memberSelect').children('option:not(:first)').remove();
    	
    	var deptData = {deptNo : $('#deptSelect').val()};
    	$.ajax({
        	url: "detpMemberList",
        	type: "GET",
        	data: deptData,
        	dataType: "json",
        	success: function(result){
        		//<option value="0">부서</option>

        		var str = "";
        		$.each(result, function(){
        			str += "<option value="+this.EMP_NO+">"+this.EMP_NM+"</option>";	
        		});
        		$("#memberSelect").append(str);
        		
        		
        	},
        	error : function(xhr, type) {
                alert('server error occoured')
            }
        });

    });
		
   
    
    $("#sendMail").submit( function(event){
    	alert($('#memberSelect').val());
    	event.preventDefault();
    	 var eventData = { 
    			 DISP_EMPNO :  '${loginUserInfo.empNo }',
    			 RECP_EMPNO : $('#memberSelect').val() ,
    			 TITLE :  $('#subject').val(),
    			 CONTENT :  $('#contnet').val(),
    	        };
    	 
    	$.ajax({
    	url: "sendMail",
    	type: "POST",
    	//dataType: "json",
    	data: eventData,
    	success: function(result){
    		alert($("#memberSelect").val());
    		alert("success");
    		location.href="mail-inbox";
    	},
    	error : function(xhr, type) {
            alert('server error occoured')
        }
           });

    	});
    
    
    </script>

</body>

</html>
