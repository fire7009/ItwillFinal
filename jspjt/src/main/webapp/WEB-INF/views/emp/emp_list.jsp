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
            <div class="pageheader">
                <h1>사원관리</h1>
                <div class="breadcrumb-wrapper hidden-xs">
                    
                    <ol class="breadcrumb">
                        <li><a href="/">메인</a>
                        </li>
                        <li>운영관리</li>
                        <li class="active">사원관리</li>
                    </ol>
                </div>
            </div>
            <section id="main-content" class="animated fadeInUp">
                <div class="row">
                    <div class="col-md-12">
                        <ul class="nav nav-tabs">
                            <li class="active">
                                <a data-toggle="tab" href="#table" aria-expanded="true" id="tableBtn">사원관리</a>
                            </li>
                        </ul>

                        <div class="panel panel-info">
                            <div class="panel-body">
                                <div class="tab-wrapper tab-primary">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="table">
	                                        <select class="form-control input-lg" style="height: 40px; font-size: 15px; margin-bottom: 10px; width: 150px; display: inline-block;" name="pageSize" id="pageSize">
												<option value="10">10명씩보기</option>
												<option value="20">20명씩보기</option>
												<option value="30">30명씩보기</option>
												<option value="50">50명씩보기</option>
											</select>
											<c:if test="${loginUserInfo.deptNo==10 and loginUserInfo.posDvcd>=20}">
												<select class="form-control input-lg" style="height: 40px; font-size: 15px; margin-bottom: 10px; width: 150px; display: inline-block; float: right;" id="searchDeptNo" name="searchDeptNo">
							                           <option value="0">전체</option>
							                           <option value="10">인사팀</option>
							                           <option value="20">운영팀</option>
							                           <option value="30">운송팀</option>
							                           <option value="40">회계팀</option>
							                           <option value="50">영업팀</option>                                
							       				</select>
												<p class="form-control" style="height: 40px; font-size: 15px;  width: 100px; display: inline-block; float: right; border: 0px">부서선택</p>
											</c:if>
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%" style="table-layout:fixed; margin-top: 20px;">
                                                <thead>
                                                    <tr>
                                                        <th width="40">사원번호</th>
                                                        <th width="30">부서</th>
                                                        <th width="30">직급</th>
                                                        <th width="70">이름</th>
                                                        <th width="70">생일</th>
                                                        <th width="70">핸드폰번호</th>
                                                        <th width="70">이메일</th>
                                                        <th width="30">성별</th>
                                                        <th width="70">입사일</th>
                                                        <c:if test="${loginUserInfo.posDvcd>=20 }">
                                                        <th width="30">삭제</th>
                                                        </c:if>
                                                    </tr>
                                                </thead>

                                                <tbody id="tbody">

                                                </tbody>
                                            </table>
                                            <!-- 페이징 처리 박스 -->
                                            <div id="pageDiv" style="width: 1000px; margin: 0 auto; text-align: center;"></div>
                                            <!-- 검색 박스 -->
                                            <div style="width: 1200px; margin: 0 auto; margin-top: 30px; margin-bottom: 10px">
												<table>
													<tr>
														<th width="350" ></th>
														<th width="20" ></th>
														<th width="130"></th>
														<th width="20"></th>
														<th width="340"></th>
														<th width="20"></th>
														<th width="50"></th>
														<th width="20"></th>
														<th width="320"></th>	                                                                
													</tr>
													<tr>
													<td align="right"></td>
													<td></td>
													<td>
														<select class="form-control input-lg" style="height: 40px; font-size: 15px;" name="search" id="search">
															<option value="emp_no">사원번호</option>
															<option value="emp_nm" selected="selected">이름</option>
															<option value="birth_dt">생일</option>
														</select>
													</td>
													<td></td>
													<td>
													<input type="text" class="form-control" style="height: 40px;" onkeyup="enterkey();" name="keyword" id="keyword"/>
													</td>
													<td></td>
													<td>
														<button type="button" class="btn btn-success" id="searchBtn">검색</button>
													</td>
													<td></td>
													<td>
														<button type="button" class="btn btn-success" id="resetBtn">초기화</button>
													</td>
													</tr>
												</table>
											</div>
											<!-- //검색 박스 -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!-- 수정 모달 -->
			<c:import url="/WEB-INF/views/emp/emp_modify.jsp">
				<c:param name="modify" value="modify"></c:param>
			</c:import>
			<!-- //수정모달 -->
        </section>
        <!--main content end-->
    </section>
   
    <!--Global JS-->
    <script src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
    <script type="text/javascript">
    var page=1;
    display(page);
    var stat='N';
    var userStat=${loginUserInfo.posDvcd};
    var search;
	var keyword;
	var deptNm;
	var posDvcdNm;
	var pageSize;
	var deptNo;
    function display(pageNum){
    	page=pageNum;
    	search=$("#search").val();
    	keyword=$("#keyword").val();
    	pageSize=$("#pageSize").val();
    	deptNo=$("#searchDeptNo").val();

	    $.ajax({
	    	type: "GET",
	    	url: "emp/emp_list",
			data:{"pageNum":pageNum,"search":search,"keyword":keyword,"pageSize":pageSize,"deptNo":deptNo},
	    	dataType: "json",
	    	success: function(json) {
	    		var html="";
	    		$(json.employeeList).each(function(){
	    			if(this.resgnYn==stat){
	    				switch (this.deptNo) {
	    				case 10:
	    					deptNm='인사팀';
	    					break;
	    				case 20:
	    					deptNm='운영팀';
	    					break;
	    				case 30:
	    					deptNm='운송팀';
	    					break;
	    				case 40:
	    					deptNm='회계팀';
	    					break;
	    				case 50:
	    					deptNm='영업팀';
	    					break;
	    				}
	    				switch (this.posDvcd) {
	    				case 10:
	    					posDvcdNm="사원";
	    					break;
	    				case 20:
	    					posDvcdNm="대리";
	    					break;
	    				case 30:
	    					posDvcdNm="과장";
	    					break;
	    				case 40:
	    					posDvcdNm="팀장";
	    					break;
	    				}
		    			html+="<tr>";
		    			html+="<td>"+this.empNo+"</td>";
		    			html+="<td>"+deptNm+"</td>";
		    			html+="<td>"+posDvcdNm+"</td>";
		    			if(userStat>=20){
		    			html+="<td><a href='javascript:update("+this.empNo+")'>"+this.empNm+"</a></td>";		    				
		    			} else {
		    			html+="<td>"+this.empNm+"</td>";		    						    				
		    			}
		    			html+="<td>"+this.birthDt+"</td>";
		    			html+="<td>"+this.mobilePhnNo+"</td>";
		    			html+="<td>"+this.emailAddr+"</td>";
		    			html+="<td>"+this.gender+"</td>";
		    			html+="<td>"+this.hireDt.substring(0,10)+"</td>";
		    			if(userStat>=20){
			    		html+="<td><span><a href='javascript:empDelete("+this.empNo+")'style='color:red;'>삭제</a></span></td>";	    				
		    			}
		    			html+="</tr>";
	    			}
	    		});
	    		if(html==""){
	    			if(userStat>=20){
	    				html="<tr><td style='text-align: center;' colspan='10'><게시글이 없습니다></td></tr>";	    				
		    		} else {
	    				html="<tr><td style='text-align: center;' colspan='9'><게시글이 없습니다></td></tr>";
		    		}
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
    //수정창띄우기
    function update(empNo) {
    	
    	$.ajax({
    		type: "GET",
    		url: "emp/emp_modify/"+empNo,
    		dataType: "json",
    		success: function(json){
				$("#empNo").val(json.empNo);
				switch (json.deptNo) {
				case 10:
					$("#deptNo > option:eq(0)").prop("selected",true);
					break;
				case 20:
					$("#deptNo > option:eq(1)").prop("selected",true);
					break;
				case 30:
					$("#deptNo > option:eq(2)").prop("selected",true);
					break;
				case 40:
					$("#deptNo > option:eq(3)").prop("selected",true);
					break;
				case 50:
					$("#deptNo > option:eq(4)").prop("selected",true);
					break;
				}
				switch (json.posDvcd) {
				case 10:
					$("#posDvcd > option:eq(0)").prop("selected",true);
					break;
				case 20:
					$("#posDvcd > option:eq(1)").prop("selected",true);
					break;
				case 30:
					$("#posDvcd > option:eq(2)").prop("selected",true);
					break;
				case 40:
					$("#posDvcd > option:eq(3)").prop("selected",true);
					break;
				}
				$("#lgnId").val(json.lgnId);
				$("#empNm").val(json.empNm);
				$("#birthDt").val(json.birthDt);
				$("#mobilePhnNo").val(json.mobilePhnNo);
				$("#emailAddr").val(json.emailAddr);
				$("#hireDt").val(json.hireDt);
				$("#gender").val(json.gender);
				
				$("#updateDiv").show(200);
    		},
    		error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
    	});
    }
    
    $("#passwd2").focus(function(){
		msg="";
		$("#passwd2Msg").addClass("msg");
		$("#passwd2Msg").text(msg);
		return;
	});
    
    //수정버튼
    $("#updateBtn").click(function(){
    	var passwd=$("#passwd").val();
    	var passwd2=$("#passwd2").val();
    	if(passwd!=""){
			if(passwd2.value==""){
				msg="비밀번호를 한번 더 입력해주세요";
				$("#passwd2Msg").removeClass("msg");
				$("#passwd2Msg").text(msg);
				return;
			} else if(passwd2.value!=signUp.passwd.value){
				msg="입력하신 비밀번호와 일치하지 않습니다.";
				$("#passwd2Msg").removeClass("msg");
				$("#passwd2Msg").text(msg);
				return;
			}
    	}
    	var empNo=$("#empNo").val();
    	var deptNo=$("#deptNo").val();
    	var posDvcd=$("#posDvcd").val();
    	var mobilePhnNo=$("#mobilePhnNo").val();
    	var emailAddr=$("#emailAddr").val();
    	var file=$("#file")[0].files[0];
    	
    	$.ajax({
    		type: "PUT",
    		url: "emp/emp_modify",
    		headers: {"content-type":"application/json","X-HTTP-Method-override":"PUT"},
    		data: JSON.stringify({"empNo":empNo,"deptNo":deptNo,"posDvcd":posDvcd,"passwd":passwd,"mobilePhnNo":mobilePhnNo
    			,"emailAddr":emailAddr,"file":file}),
    		dataType: "text",
    		success: function(text){
    			if(text=="success"){
    				$(".update").val("");
	    	    	$("#updateDiv").hide(200);
	    	    	display(page);
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
    
    //삭제버튼
    function empDelete(num){
    	if(confirm("정말로 삭제 하시겠습니까?")){
    		$.ajax({
    			type:"DELETE",
    			url: "emp/emp_remove/"+num,
    			headers: {"X-HTTP-Method-override":"DELETE"},
    			dataType: "text",
    			success: function(text){
    				if(text=="success"){
    					display(1);
    				}
    			}, 
				error: function(xhr) {
					alert("에러코드 = "+xhr.status);
				}
    		});
    	}
    }
    //검색버튼
    $("#searchBtn").click(function(){
    	search=$("#search").val();
    	keyword=$("#keyword").val();

    	display(1);

		switch (search) {
		case 'emp_no':
			$("#search > option:eq(0)").prop("selected", true);
			break;
		case 'emp_nm':
			$("#search > option:eq(1)").prop("selected", true);
			break;
		case 'birthDt':
			$("#search > option:eq(2)").prop("selected", true);
			break;
		}
    	
    });
    function enterkey(){
		if(window.event.keyCode==13){
			display(1);
		}
	}
	//페이지에 출력갯수 변경
    $("#pageSize").change(function(){
    	display(1);
    	
		switch (pageSize) {
		case 10:
			$("#pageSize > option:eq(0)").prop("selected", true);
			break;
		case 20:
			$("#pageSize > option:eq(1)").prop("selected", true);
			break;
		case 30:
			$("#pageSize > option:eq(2)").prop("selected", true);
			break;
		case 50:
			$("#pageSize > option:eq(3)").prop("selected", true);
			break;
		}
    });
	$("#searchDeptNo").change(function(){
		display(1);
		
		switch(deptNo){
		case 0:
			$("#searchDeptNo > option:eq(0)").prop("selected", true);
			break;
		case 10:
			$("#searchDeptNo > option:eq(1)").prop("selected", true);
			break;
		case 20:
			$("#searchDeptNo > option:eq(2)").prop("selected", true);
			break;
		case 30:
			$("#searchDeptNo > option:eq(3)").prop("selected", true);
			break;
		case 40:
			$("#searchDeptNo > option:eq(4)").prop("selected", true);
			break;
		case 50:
			$("#searchDeptNo > option:eq(5)").prop("selected", true);
			break;
		}
	});
	$("#resetBtn").click(function(){
		stat='N';
	    userStat=${loginUserInfo.posDvcd};
		$("#search > option:eq(1)").prop("selected", true);
		$("#keyword").val("");
		$("#pageSize > option:eq(0)").prop("selected", true);
		$("#searchDeptNo > option:eq(0)").prop("selected", true);
		display(1);
	});
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
