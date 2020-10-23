<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<!--[if lt IE 7]>     <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" >
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
    <!-- CSS Animate -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
    <!-- DataTables-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/plugins/dataTables/css/dataTables.css">
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
        <!-- left sidebar start -->
       	<c:import url="/WEB-INF/views/leftSidebar.jsp">
       		<c:param name="leftSidebar" value="leftSidebar"></c:param>
		</c:import>
		 <!-- left sidebar end -->
        <!--main content start-->
        <section class="main-content-wrapper">
            <div class="pageheader">
                <h1>승인 요청 리스트</h1>
                
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12">
                      

                        <div class="panel panel-info">
                            <div class="">
                                <div class="actions pull-right">
                                  
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="tab-wrapper tab-primary">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="table">
                                          
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>날짜</th>
                                                        <th>결제번호</th>
                                                        <th>결제문서</th>
                                                        <th>요청자</th>
                                                        <th>상태</th>   
                                                    </tr>
                                                </thead>

                                                <tbody id="tbody">
								
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
			    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
                
			    <script type="text/javascript">
			  
			    	
			  
			    </script>
            </section>
        </section>
        <!--main content end-->
    </section>
   
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/switchery/switchery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/fullscreen/jquery.fullscreen-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
    <!--Page Leve JS -->
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/dataTables/js/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/dataTables/js/dataTables.bootstrap.js"></script>
    <script>
    $(document).ready(function() {
    	 var lang_kor = {
    		        "decimal" : "",
    		        "emptyTable" : "데이터가 없습니다.",
    		        "info" : "_START_ - _END_ (총 _TOTAL_ 명)",
    		        "infoEmpty" : "0명",
    		        "infoFiltered" : "(전체 _MAX_ 명 중 검색결과)",
    		        "infoPostFix" : "",
    		        "thousands" : ",",
    		        "lengthMenu" : "_MENU_ 개씩 보기",
    		        "loadingRecords" : "로딩중...",
    		        "processing" : "처리중...",
    		        "search" : "검색 : ",
    		        "zeroRecords" : "검색된 데이터가 없습니다.",
    		        "paginate" : {
    		            "first" : "첫 페이지",
    		            "last" : "마지막 페이지",
    		            "next" : "다음",
    		            "previous" : "이전"
    		        },
    		        "aria" : {
    		            "sortAscending" : " :  오름차순 정렬",
    		            "sortDescending" : " :  내림차순 정렬"
    		        }
    		    };
    	 var value=[];

    		
    	
    	alert('${loginUserInfo.empNo }');
    	 $.ajax({
             type : 'get',
             url : 'getreqApproveList',
             data:{empNo: '${loginUserInfo.empNo }'},
             dataType : 'json',
             success : function(data) {
             	 var str = "";
              	 
             	$.each(data, function(){
                     str += "<tr style='text-align: left;'>";
                     str += "<td>"+new Date(this.REQ_DTTM).toISOString().slice(0,10)+"</td>";
                    
                     str += "<td>"+this.AUTH_NO+"</td>";
                   
                     str += "<td><a href=viewApproveEsign?authNo="+this.AUTH_NO+">"+this.DOCTITLE+"</a></td>";
                    
                     str += "<td>"+this.REQ_NM+"</td>";
                   
                   
                    
                     if(this.AUTH_DVCD === 1){
                    	  str += "<td>대기</td>";
                     }else if(this.AUTH_DVCD === 2){
                    	  str += "<td>반려</td>";
                     }else{
                    	 str += "<td>승인</td>";
                     }
             
                    });
             	$('#example').dataTable().fnDestroy();
	    		$('#tbody').html(str);
	    		$('#example').dataTable({
	    			 language : lang_kor
	    		});
             },
             error : function(xhr, type) {
                 alert('server error occoured')
             }
         });
    	
    	
    	 
    	 
    	 
    });
    
    
    
    </script>
    
</body>

</html>
