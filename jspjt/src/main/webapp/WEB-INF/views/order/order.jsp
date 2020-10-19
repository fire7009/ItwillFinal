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
                <h1>발주현황</h1>
                <div class="breadcrumb-wrapper hidden-xs">
                    
                    <ol class="breadcrumb">
                        <li><a href="index.html">메인</a>
                        </li>
                        <li>주문관리</li>
                        <li class="active">발주현황</li>
                    </ol>
                </div>
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#table" aria-expanded="true" id="tableBtn">발주현황</a>
                            </li>
                            <li class="">
                                <a data-toggle="tab" href="#cancle" aria-expanded="false" id="cancleBtn">취소현황</a>
                            </li>
                        </ul>

                        <div class="panel panel-info">
                            <div class="">
                                <div class="actions pull-right">
                                    <i class="fa fa-expand"></i>
                                    <i class="fa fa-chevron-up"></i>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="tab-wrapper tab-primary">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="table">
                                            <div class="panel panel-info">
                                                <div class="panel-heading" style="position: relative;">
                                                    <h3 class="panel-title">상세검색</h3>
                                                    <div class="actions pull-right">
                                                        <i class="fa fa-expand"></i>
                                                        <i class="fa fa-chevron-down"></i>
                                                    </div>
                                                </div>
                                                <div class="panel-body" style="display: none;">
                                                    <div class="select-group" style="width: 500px; margin: 0 auto; margin-top: 30px;">
                                                    
	                                                        <table>
	                                                            <tr>
	                                                                <th style="width: 100px;"></th>
	                                                                <th style="width: 400px;"></th>
	                                                            </tr>
	                                                            <tr>
	                                                                <td>
	                                                                    업체명
	                                                                </td>
	                                                                <td>
	                                                                    <select class="form-control input-lg" name="ordCustNm" id="ordCustNm">
	                                                                        <option value="">업체명을 선택하세요</option>
	                                                                        <c:forEach var="custom" items="${customerList }">
	                                                                        <c:if test="${custom.custNm==customer}">
	                                                                        <option value="${custom.custNm }" selected="selected">${custom.custNm }</option>
	                                                                        </c:if>
	                                                                        <c:if test="${custom.custNm!=customer}">
	                                                                        <option value="${custom.custNm }">${custom.custNm }</option>
	                                                                        </c:if>
	                                                                        </c:forEach>
	                                                                    </select>
	                                                                </td>	
	                                                            </tr>
	                                                            <tr>
	                                                                <td>
	                                                                    상품명
	                                                                </td>
	                                                                <td>
	                                                                    <select class="form-control input-lg" name="ordProdNm" id="ordProdNm">
	                                                                        <option value="">상품명을 선택하세요</option>
	                                                                        <c:forEach var="prod" items="${productList }">
	                                                                        <c:if test="${prod.prodNm==product }">
	                                                                        <option value="${prod.prodNm }" selected="selected">${prod.prodNm }</option>
	                                                                        </c:if>
	                                                                        <c:if test="${prod.prodNm!=product }">
	                                                                        <option value="${prod.prodNm }">${prod.prodNm }</option>
	                                                                        </c:if>
	                                                                        </c:forEach>
	                                                                    </select>
	                                                                </td>
	                                                            </tr>
	                                                        </table>
	                                                        <div style="width: 500px; text-align: center; margin-top: 30px;">
	                                                            <button type="button" class="btn btn-success" onclick="search();">검색</button>
	                                                            <button type="button" class="btn btn-success" id="reset">초기화</button>
	                                                        </div>
                                
                                                    </div>
                                                </div>
                                            </div>
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>날짜</th>
                                                        <th>주문번호</th>
                                                        <th>업체명</th>
                                                        <th>상품명</th>
                                                        <th>수량</th>
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
			    function orderCancle(ordNo){
			    	if(confirm("정말로 취소하시겠습니까?")){
			    		location.href="order_delete/"+ordNo;
			    	}
			    }
			    </script>
			    <script type="text/javascript">
			    display();
			    var stat=1;
			    function display(){
				    $.ajax({
				    	type: "GET",
				    	url: "order_list",
				    	dataType: "json",
				    	success: function(json) {
				    		var html="";
				    		$(json).each(function(){
				    			if(this.ordCnclYn==stat){
					    			var date=this.ordDttm
					    			html+="<tr style='text-align: right;'>";
					    			html+="<td>"+date.substring(0,10)+"</td>";
					    			html+="<td>"+this.ordNo+"</td>";
					    			html+="<td>"+this.ordCustNm+"</td>";
					    			html+="<td>"+this.ordProdNm+"</td>";
					    			html+="<td>"+this.ordSumQty+"</td>";
					    			html+="<td><span><a href='javascript:orderCancle("+this.ordNo+")'style='color:red;'>발주취소</a></span></td>";
				    			}
				    		html+="</tr>";
				    		});
				    		if(html==""){
			    				html="<tr><td style='text-align: center;' colspan='6'><검색된 항목이 없습니다></td></tr>";
					    		$('#tbody').html(html);
			    				return;
			    			}
				    		$('#example').dataTable().fnDestroy();
				    		$('#tbody').html(html);
				    		$('#example').dataTable();
				    	},
				    	error:function(xhr) {
				    		$('#tbody').text("응답오류 = "+xhr.status);
				    	}
				    });
			    }
			    
			    function search() {
			    	var ordCustNm=$("#ordCustNm").val();
			    	var ordProdNm=$("#ordProdNm").val();
			    	$.ajax({
			    		type: "POST",
			    		url: "search_order",
			    		data: {"ordCustNm":ordCustNm, "ordProdNm":ordProdNm},
			    		dataType: "json",
		    			success: function(json) {
					    	//alert("성공"+ordProdNm);
		    				//alert("성공"+ordCustNm);
				    		var html="";
				    		$(json).each(function(){
				    			if(this.ordCnclYn==stat){
					    			var date=this.ordDttm
					    			html+="<tr style='text-align: right;'>";
					    			html+="<td>"+date.substring(0,10)+"</td>";
					    			html+="<td>"+this.ordNo+"</td>";
					    			html+="<td>"+this.ordCustNm+"</td>";
					    			html+="<td>"+this.ordProdNm+"</td>";
					    			html+="<td>"+this.ordSumQty+"</td>";
					    			if(this.ordCnclYn==1){
					    			html+="<td><span><a href='javascript:orderCancle("+this.ordNo+")'style='color:red;'>발주취소</a></span></td>";
					    			} else if(this.ordCnclYn==0){
					    				html+="<td><span>취소완료</span></td>";
					    			}
						    		html+="</tr>";
				    			}
				    		});
				    		if(html==""){
			    				html+="<tr><td style='text-align: center;' colspan='6'><검색된 항목이 없습니다></td></tr>";
					    		$('#tbody').html(html);
			    				return;
			    			}
				    		$('#example').dataTable().fnDestroy();
				    		$('#tbody').html(html);
				    		$('#example').dataTable();
				    	},
				    	error:function(xhr) {
				    		$('#tbody').text("응답오류 = "+xhr.status);
				    	}
				    });
			    }
			    
			    $("#cancleBtn").on('click', function(){
			    	$('#ordProdNm').find('option').removeAttr('selected');
			    	$('#ordProdNm').find('option:first').attr('selected','selected');
			    	$('#ordCustNm').find('option').removeAttr('selected');
			    	$('#ordCustNm').find('option:first').attr('selected','selected');
			    	stat=0;
			    	display();
			    })
			    $("#tableBtn").on('click', function(){
			    	$('#ordProdNm').find('option').removeAttr('selected');
			    	$('#ordProdNm').find('option:first').attr('selected','selected');
			    	$('#ordCustNm').find('option').removeAttr('selected');
			    	$('#ordCustNm').find('option:first').attr('selected','selected');
			    	stat=1;
			    	display();
			    })
			    $("#reset").on('click', function(){
			    	$('#ordProdNm').find('option').removeAttr('selected');
			    	$('#ordProdNm').find('option:first').attr('selected','selected');
			    	$('#ordCustNm').find('option').removeAttr('selected');
			    	$('#ordCustNm').find('option:first').attr('selected','selected');
			    	stat=1;
			    	display();
			    })
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
    });
    
    </script>
    
</body>

</html>
