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
     <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    $(document).ready(function() {
     
        $.ajax({
            type : 'get',
            url : 'getSendMail',
            data:  {empNo: '${loginUserInfo.empNo}'},
            dataType : 'json',
            success : function(data) {
            	 var str = "<tr>";
             	
            	$.each(data, function(){
                    str += "<tr class='unread'>";
                    str += "<td><input type='checkbox' class='mail-checkbox icheck'></td>";
                    str += "<td><i class='fa fa-star'></i></td>";
                    str += "<td class='message'><a href='#'><span class='title'>"+this.TITLE+"</span> - "+this.CONTENT+"</a></td>";
                    str += "<td class='text-right'>"+new Date(this.DISP_DTTM).toISOString().slice(0,10)+"<i class='fa fa-paperclip'></i></td>";
                    str += "</tr>";
                   });
            	$("#mailTable").append(str);
            },
            error : function(xhr, type) {
                alert('server error occoured')
            }
        });
        
        $.ajax({
            type : 'get',
            url : 'sendMailCount',
            data:  {empNo: '${loginUserInfo.empNo}'},
            dataType : 'json',
            success : function(data) {
            	$("#count").text("보낸편지("+data.COUNT+")");
            },
            error : function(xhr, type) {
                alert('server error occoured')
            }
        });
        
        $.ajax({
            type : 'get',
            url : 'getMailCount',
            data:  {empNo: '${loginUserInfo.empNo}'},
            dataType : 'json',
            success : function(data) {
            	
            	$("#count1").text(data.COUNT);
            },
            error : function(xhr, type) {
                alert('server error occoured')
            }
        });
    }); 
    </script>
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
            <section id="main-content" class="animated fadeInUp">
                <!--mail wrapper start-->
                <div class="row">
                    <div class="col-md-2 col-sm-12" id="compose-wrapper">
                        <div class="panel">
                            <aside class="panel-body">
                                <a href="mail-sand" class="btn btn-primary btn-block">메일쓰기</a>
                                <ul class="nav nav-pills nav-stacked compose-nav">
                                    <li class="active">
                                        <a href="mail-inbox"> <i class="fa fa-inbox"></i> 받은편지함
                                            <span class="label label-primary label-circle pull-right inbox-notification" id="count1"></span>
                                        </a>
                                    </li>
                                  
                                    <li >
                                        <a href="send-inbox"> <i class="fa fa-envelope-o"></i> 보낸편지함</a>
                                    </li>
                                   
                                    <li>
                                        <a href="#"> <i class="fa fa-trash-o"></i>삭제편지함</a>
                                    </li>
                                </ul>
                            </aside>
                        </div>

                       

                    </div>
                    <div class="col-md-8 col-sm-12" id="inbox-wrapper">

                        <section class="panel">
                            <header class="panel-heading wht-bg">
                                <h4 class="gen-case" id=count>보낸편지 (83)
                        <form action="" class="pull-right mail-src-position">
                            <div class="input-append ">
                                <input type="text" class="form-control" placeholder="검색">
                            </div>
                        </form>
                       </h4>
                            </header>
                            <div class="panel-body minimal">
                                <div class="mail-option">
                                    <div class="pull-left mail-checkbox ">
                                       &nbsp; <input type="checkbox" class="mail-checkbox icheck">&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                            	전체 <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">None</a>
                                            </li>
                                            <li><a href="#">Read</a>
                                            </li>
                                            <li><a href="#">Unread</a>
                                            </li>
                                            <li><a href="#">Starred</a>
                                            </li>
                                            <li><a href="#">Unstarred</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="btn-group">
                                        <a data-original-title="Refresh" data-placement="top" data-toggle="tooltip" href="#" class="btn btn-default btn-sm tooltips">
                                            <i class=" fa fa-refresh"></i>
                                        </a>
                                    </div>

                                   
                                    

                                </div>
                                <div class="table-responsive pull">
                                    <table id='mailTable'  class="table table-inbox table-hover">
                                        <tbody>
                                          
                                 

                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </section>

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
                         <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
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
                        <!-- <img src="assets/img/profile.jpg" class="img-circle" alt="">-->
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
        app.customCheckbox();
        $('.tooltips').tooltip()

    });
    </script>

</body>

</html>
