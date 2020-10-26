<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->

<head>
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
    <script src="assets/js/vendor/html5shiv.js"></script>
    <script src="assets/js/vendor/respond.min.js"></script>
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
                <h1>사원게시판</h1>
                <div class="breadcrumb-wrapper hidden-xs">
                    
                    <ol class="breadcrumb">
                        <li><a href="index.html">메인</a>
                        </li>
                        <li>운영관리</li>
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
                                            <table id="example" class="table table-striped table-bordered" cellspacing="0" width="100%" style="table-layout:fixed">
                                                <thead>
                                                    <tr>
                                                        <th width="50">공지번호</th>
                                                        <th width="40">작성자</th>
                                                        <th width="100">제목</th>
                                                        <th width="300">내용</th>
                                                        <th width="70">등록일시</th>
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
														<th width="400"></th>	                                                                
													</tr>
													<tr>
													<td align="right">
														<c:if test="${loginUserInfo.posDvcd>=20 }">
															<button type="button" class="btn btn-success" id="writeBtn">글쓰기</button>
														</c:if>
													</td>
													<td></td>
													<td>
														<select class="form-control input-lg" style="height: 40px; font-size: 15px;" name="search" id="search">
															<option value="NOTICE_NO">공지번호</option>
															<option value="REG_EMPNO">작성자</option>
															<option value="TITLE" selected="selected">제목</option>
															<option value="CONTENT">내용</option>
														</select>
													</td>
													<td></td>
													<td>
													<input type="text" class="form-control" style="height: 40px;" name="keyword" id="keyword"/>
														</td>
														<td></td>
														<td>
															<button type="button" class="btn btn-success" id="searchBtn">검색</button>
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
            <!-- 글쓰기 모달 -->
			<c:import url="/WEB-INF/views/notice/notice_write.jsp">
				<c:param name="notice_write" value="notice_write"></c:param>
			</c:import>
			<!-- //글쓰기모달 -->
            <!-- 수정 모달 -->
			<c:import url="/WEB-INF/views/notice/notice_modify.jsp">
				<c:param name="notice_modify" value="notice_modify"></c:param>
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
		    			html+="<tr>";
		    			html+="<td>"+this.noticeNo+"</td>";
		    			html+="<td>"+this.employeeVo.empNm+"</td>";
		    			html+="<td><div style='text-overflow:ellipsis; overflow:hidden; white-space:nowrap'>"+this.title+"</div></td>";
		    			html+="<td><div style='text-overflow:ellipsis; overflow:hidden; white-space:nowrap'><a href='javascript:update("+this.noticeNo+")'>"+this.content+"</a></div></td>";
		    			html+="<td>"+date.substring(0,10)+"</td>";
		    			if(userStat>=20){
			    		html+="<td><span><a href='javascript:noticeDelete("+this.noticeNo+")'style='color:red;'>삭제</a></span></td>";	    				
		    			}
		    			html+="</tr>";
	    			}
	    		});
	    		if(html==""){
	    			if(userStat>=20){
	    				html="<tr><td style='text-align: center;' colspan='6'><게시글이 없습니다></td></tr>";	    				
		    		} else {
	    				html="<tr><td style='text-align: center;' colspan='5'><게시글이 없습니다></td></tr>";
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
	
    //글쓰기 버튼
    $("#writeBtn").click(function(){
    	$(".update").val("");
    	$("#modify").hide();
    	
    	$("#write").show(200);
    }); 
    //글작성 버튼
    $("#insertBtn").click(function(){
    	var title=$("#insertTitle").val();
    	var content=$("#insertContent").val();
    	var regEmpNo=$("#insertregEmpNo").val();
    	
    	if(title==""){
    		alert("제목을 입력해주세요");
    		return;
    	}
    	if(content==""){
    		alert("내용을 입력해주세요");
    		return;
    	}
    	
    	$.ajax({
    		type: "POST",
    		url: "notice_add",
    		headers: {"content-type":"application/json"},
    		data: JSON.stringify({"title" : title, "content" : content, "regEmpNo" : regEmpNo}),
    		dataType:"text",
    		success: function(text){
    			if(text=="success"){
    				$(".insert").val("");
    				$("#write").hide(300);
    				
    				display(1);
    			}
    		},
    		error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
    	});
    });
    
    //수정창띄우기
    function update(noticeNo) {
    	$(".insert").val("");
    	$("#write").hide();
    	
    	$("#noticeNo").val(noticeNo);
    	$("#updateDiv").show(200);
    	
    	$.ajax({
    		type: "GET",
    		url: "notice_modify/"+noticeNo,
    		dataType: "json",
    		success: function(json){
    			$("#updateTitle").val(json.title);
    			$("#updateContent").val(json.content);
    		},
    		error: function(xhr) {
				alert("에러코드 = "+xhr.status);
			}
    	});
    }
    //수정버튼
    $("#updateBtn").click(function(){
    	var title=$("#updateTitle").val();
    	var content=$("#updateContent").val();
    	var noticeNo=$("#noticeNo").val();
    	
    	if(title==""){
    		alert("작성자를 입력해 주세요.");
			return;
    	}
    	
    	if(content==""){
    		alert("작성자를 입력해 주세요.");
			return;
    	}
    	
    	$.ajax({
    		type: "PUT",
    		url: "notice_modify",
    		headers: {"content-type":"application/json","X-HTTP-Method-override":"PUT"},
    		data: JSON.stringify({"title":title,"content":content,"noticeNo":noticeNo}),
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
    	$(".insert").val("");
    	$("#write").hide(200);
    	$(".update").val("");
    	$("#updateDiv").hide(200);
    });
    
    function noticeDelete(num){
    	if(confirm("정말로 삭제 하시겠습니까?")){
    		$.ajax({
    			type:"DELETE",
    			url: "notice_remove/"+num,
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
    
    $("#searchBtn").click(function(){
    	var search=$("#search").val();
    	var keyword=$("#keyword").val();
    	
    	if(keyword==""){
    		alert("검색어를 입력해주세요")
    		return;
    	}
		
    	$.ajax({
    		type: "POST",
    		url: "notice_search",
    		data: {"search":search, "keyword":keyword},
    		dataType: "json",
    		success: function(json){
    			var html="";
	    		$(json.restNoticeList).each(function(){
	    			if(this.delYn==stat){
		    			var date=this.regDttm
		    			html+="<tr>";
		    			html+="<td>"+this.noticeNo+"</td>";
		    			html+="<td>"+this.employeeVo.empNm+"</td>";
		    			html+="<td><div style='text-overflow:ellipsis; overflow:hidden; white-space:nowrap'>"+this.title+"</div></td>";
		    			html+="<td><div style='text-overflow:ellipsis; overflow:hidden; white-space:nowrap'><a href='javascript:update("+this.noticeNo+")'>"+this.content+"</a></div></td>";
		    			html+="<td>"+date.substring(0,10)+"</td>";
		    			if(userStat>=20){
			    		html+="<td><span><a href='javascript:noticeDelete("+this.noticeNo+")'style='color:red;'>삭제</a></span></td>";	    				
		    			}
		    			html+="</tr>";
	    			}
	    		});
	    		if(html==""){
    				html="<tr><td style='text-align: center;' colspan='5'><검색된 게시글이 없습니다></td></tr>";
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
