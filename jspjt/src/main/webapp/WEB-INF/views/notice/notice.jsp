<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
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
                                <img src="${pageContext.request.contextPath}/resources/assets/img/profile.jpg" class="img-circle" alt="">
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
                <h1>사원게시판</h1>
                <div class="breadcrumb-wrapper hidden-xs">
                    
                    <ol class="breadcrumb">
                        <li><a href="index.html">메인</a>
                        </li>
                        <li>주문관리</li>
                        <li class="active">공지사항</li>
                    </ol>
                </div>
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#table" aria-expanded="true" id="tableBtn">공지사항</a>
                            </li>
                        </ul>

                        <div class="panel panel-info">
                            <div class="panel-body">
                                <div class="tab-wrapper tab-primary">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="table">
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th width="50">공지번호</th>
                                                        <th width="50">작성자</th>
                                                        <th width="80">제목</th>
                                                        <th width="200">내용</th>
                                                        <th width="50">등록일시</th>
                                                        <th width="50">삭제</th>
                                                    </tr>
                                                </thead>

                                                <tbody id="tbody">

                                                </tbody>
                                            </table>
                                            <!-- 페이징 처리 박스 -->
                                            <div id="pageDiv" style="width: 1000px; margin: 0 auto; text-align: center;"></div>
                                            <div style="width: 1200px; margin: 0 auto; margin-top: 30px; margin-bottom: 10px">
												<table>
													<tr>
														<th width="350" ></th>
														<th width="20" ></th>
														<th width="130"></th>
														<th width="20"></th>
														<th width="340"></th>
														<th width="20"></th>
														<th width="400"></th>	                                                                
													</tr>
													<tr>
													<td align="right">
														<button type="button" class="btn btn-success" onclick="write();">글쓰기</button>
													</td>
													<td></td>
													<td>
														<select class="form-control input-lg" style="height: 40px; font-size: 15px;" name="search" id="search">
															<option value="">선택</option>
															<option value="">공지번호</option>
															<option value="">작성자</option>
															<option value="">제목</option>
															<option value="">내용</option>
															<option value="">등록일시</option>
														</select>
													</td>
													<td></td>
													<td>
													<input type="text" class="form-control" style="height: 40px;" name="keyword" id="keyword"/>
														</td>
														<td></td>
														<td>
															<button type="button" class="btn btn-success" id="reset">검색</button>
														</td>
													</tr>
												</table>
											</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </section>
        </section>
        <!--main content end-->
    </section>
   
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    var page=1;
    display(page);
    var stat=0;
    function display(pageNum){
    	page=pageNum;
	    $.ajax({
	    	type: "GET",
	    	url: "notice_list?pageNum="+pageNum,
	    	dataType: "json",
	    	success: function(json) {
	    		var html="";
	    		$(json.restNoticeList).each(function(){
	    			if(this.delYn==stat){
		    			var date=this.regDttm
		    			html+="<tr style='text-align: right;'>";
		    			html+="<td>"+this.noticeNo+"</td>";
		    			html+="<td>"+this.regEmpNo+"</td>";
		    			html+="<td>"+this.title+"</td>";
		    			html+="<td>"+this.content+"</td>";
		    			html+="<td>"+date.substring(0,10)+"</td>";
		    			html+="<td><span><a href='javascript:noticeDelete("+this.noticeNo+")'style='color:red;'>삭제</a></span></td>";
		    			html+="</tr>";
	    			}
	    		});
	    		if(html==""){
    				html="<tr><td style='text-align: center;' colspan='6'><게시글이 없습니다></td></tr>";
		    		$('#tbody').html(html);
    				return;
    			}
	    		$('#tbody').html(html);
	    		
	    		pageDisplay(json.pager);
	    	},
	    	error:function(xhr) {
	    		$('#tbody').text("응답오류 = "+xhr.status);
	    	}
	    });
    }
    
    function pageDisplay(pager){
    	var html="";
    	if(pager.startPage>pager.blockSize) {
    		html+="<a href='javascript:diaplay(1);'>[처음]</a>";
    		html+="<a href='javascript:display("+pager.prevPage+");'>[이전]</a>"
    	} else {
    		html+="[처음][이전]";
    	}
    	
    	for(var i=pager.startPage; i<=pager.endPage; i++) {
    		if(pager.pageNum!=i){
    			html+="<a href='javascript:display("+i+");'>["+i+"]</a>";
    		} else{
    			html+="["+i+"]";
    		}
    	}
    	
    	if(pager.endPage!=pager.totalPage){
    		html+="<a href='javascript:diaplay("+pager.nextPage+");'>[다음]</a>";
    		html+="<a href='javascript:diaplay("+pager.totalPage+");'>[마지막]</a>";
    	} else {
    		html+="[다음][마지막]";
    	}
    	$("#pageDiv").html(html);
    }

    </script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/switchery/switchery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
      <script src="${pageContext.request.contextPath}/resources/assets/plugins/fullscreen/jquery.fullscreen-min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>
    <!--Page Leve JS -->
    <script>
    $(document).ready(function() {
    });
    
    </script>
    
</body>

</html>
