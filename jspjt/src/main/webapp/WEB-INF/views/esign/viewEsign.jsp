<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>NeuBoard</title>
<!-- Bootstrap core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/css/bootstrap.min.css">
<!-- Fonts  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/simple-line-icons.css">
<!-- CSS Animate -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/animate.css">
<!-- Custom styles for this theme -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<!-- Feature detection -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/vendor/modernizr-2.6.2.min.js"></script>

</head>

<body>
	<section id="main-wrapper" class="theme-default">
		<header id="header">
			<!--logo start-->
			<div class="brand">
				<a href="index.html" class="logo"> <i class="icon-layers"></i> <span>NEU</span>BOARD
				</a>
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
				<li class="hidden-xs hidden-sm"><input type="text"
					class="search" placeholder="Search project...">
					<button type="submit" class="btn btn-sm btn-search">
						<i class="fa fa-search"></i>
					</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown profile hidden-xs"><a
					href="javascript:void(0);" class="dropdown-toggle"
					data-toggle="dropdown"> <span class="meta"> <span
							class="avatar"> <img src="assets/img/profile.jpg"
								class="img-circle" alt="">
						</span> <span class="text">Mike Adams</span> <span class="caret"></span>
					</span>
				</a>
					<ul class="dropdown-menu animated fadeInRight" role="menu">
						<li><span class="arrow top"></span>
							<h5>
								<span>80%</span> <small class="text-muted">Profile
									complete</small>
							</h5>
							<div class="progress progress-xs">
								<div class="progress-bar progress-bar" style="width: 80%">
								</div>
							</div></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-user"></i> </span>My Account
						</a></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-envelope"></i> </span>Messages
						</a></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-cog"></i> </span>Settings
						</a></li>
						<li class="divider"></li>
						<li><a href="javascript:void(0);"> <span class="icon"><i
									class="fa fa-sign-out"></i> </span>Logout
						</a></li>
					</ul></li>
				<li class="toggle-fullscreen hidden-xs">
					<button type="button" class="btn btn-default expand"
						id="toggle-fullscreen">
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
				<div class="row">
					<div class="col-md-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title">결제 진행 사항</h3>
								<div class="actions pull-right"></div>
							</div>
							<div class="panel-body">
								<section class="fuelux">
									<div id="MyWizard" class="wizard">
										<ul class="steps">
											<li data-target="#step1" class="active"><span
												class="badge badge-info">1</span>결제요청<span class="chevron"></span>
											</li>
											<li data-target="#step2" id="20"><span class="badge badge-info">2</span>결제대기<span
												class="chevron"></span></li>
											<li data-target="#step3" id="30"><span class="badge badge-info">3</span>결제반려<span
												class="chevron"></span></li>
											<li data-target="#step4" id="40"><span class="badge badge-info">4</span>결제승인<span
												class="chevron"></span></li>
										</ul>
										<div class="actions">
											
											<button type="button"
												class="btn btn-primary" id="approve" >
												승인 <i class="fa fa-chevron-right"></i>
											</button>
											<button type="button"
												class="btn btn-primary" id="return" >
												반려 <i class="fa fa-chevron-right"></i>
											</button>
										</div>
									</div>
									<div class="step-content">
										<div class="step-pane active" id="step1">
											<form class="form-horizontal">
												
												
												
												<div style="text-align: center;">
																<span style="font-size: 22pt; font-weight: 700;" id="docTitle">
																	${Esign.DOCTITLE}</span>
															</div>
												<div id="form" style="margin-left: 25%">
													<div class="panel-body">
													
															<p>
																<br>
															</p>
															
															<table border="1" cellspacing="0" cellpadding="0"
																class=""
																style="border-width: 0px; width: 600px; border-collapse: collapse; height: 576px; font-size: 10pt; background-image: none; background-repeat: repeat; background-position: 0% 0%;">
																<tbody>

																	<tr>
																		<td
																			style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
																			colspan="1" rowspan="1">
																			<p>수신자 부서</p>
																		</td>
																		<td
																			style="border-width: 2px 2px 2px 1px; border-style: solid;">
																			<div class="col-md-9">
																				<label >${Esign.DEPT_NM}</label>
																			</div>
																		</td>
																	</tr>

																	<tr>
																		<td
																			style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
																			colspan="1" rowspan="1">
																			<p>수신자</p>
																		</td>
																		<td
																			style="border-width: 2px 2px 2px 1px; border-style: solid;">
																			<div class="col-md-9">
																				<label id = "member">${Esign.EMP_NM}</label>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="border-width: 2px 1px 2px 2px; border-style: solid; background-color: rgb(218, 218, 218); width: 174px; height: 37.3333px;"
																			colspan="1" rowspan="1">
																			<p>제목</p>
																		</td>
																		<td
																			style="border-width: 2px 2px 2px 1px; border-style: solid;">
																			<div class="col-md-9">
																				<label id=title>${Esign.TITLE}</label>
																			</div>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="border-width: 2px 0px; border-style: solid; width: 684px; height: 16px;"
																			colspan="2">
																			<p>
																				<br>
																			</p>
																		</td>
																	</tr>
																	<tr>
																		<td
																			style="border-width: 2px; border-style: solid; width: 682px; height: 435px;"
																			rowspan="1" colspan="2"><textarea rows="20"
																			 id="content"	cols="100" style="border-style: hidden;"placeholder="내용을 입력해주세요." >${Esign.CONTENT}</textarea></td>
																	</tr>
																</tbody>
															</table>
															<p>
																<br>
															</p>
															<div style="text-align: center;">
																<span style="font-size: 22pt; font-weight: 700;">
																	(주)참술
															</div>
															<div style="text-align: center;">
																<br>
															</div>

															<hr>
															<p style="line-height: 160%;">담당</p>
															<!-- ${member.mname} -->
															<p style="line-height: 160%;">결재</p>
															<p style="line-height: 160%;">전결</p>
															<p style="line-height: 160%;">기안일</p>
															<p style="line-height: 160%;">결제일</p>
															<p style="line-height: 160%;">
																<span style="font-size: 10pt;">문서번호</span>
															</p>
															<div class="form-group">
																<div class="col-md-9" align="right"
																	style="width: 750px;">
																	<button type="submit" id="tempSave"
																		class="btn btn-sm btn-white" style="margin: 1px;">임시저장</button>
																	<button type="submit" id="save"
																		class="btn btn-sm btn-success" style="margin: 1px;">상신</button>
																	<button type="submit" id="cancel"
																		class="btn btn-sm btn-warning" style="margin: 1px;">취소</button>
																</div>
															</div>
														

													</div>

												</div>

											</form>
										</div>
										<div class="step-pane" id="step2">
											<form class="form-horizontal">
												<div class="form-group">
													<div class="col-sm-3">
														<h2 class="title">User Address</h2>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Address</label>
													<div class="col-sm-6">
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Country</label>
													<div class="col-sm-6">
														<select class="form-control">
															<option value="">Country</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">City</label>
													<div class="col-sm-6">
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">State</label>
													<div class="col-sm-6">
														<select class="form-control">
															<option value="">State</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Zip</label>
													<div class="col-sm-1">
														<input type="text" class="form-control">
													</div>
												</div>
											</form>
										</div>
										<div class="step-pane" id="step3">
											<form class="form-horizontal">
												<div class="form-group">
													<div class="col-sm-3">
														<h2 class="title">Payment Info</h2>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Card No</label>
													<div class="col-sm-6">
														<input type="text" class="form-control">
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">Expiration</label>
													<div class="col-sm-3">
														<select class="form-control">
															<option value="">Month</option>
														</select>
													</div>
													<div class="col-sm-3">
														<select class="form-control">
															<option value="">Year</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="col-sm-3 control-label">CSV</label>
													<div class="col-sm-1">
														<input type="text" class="form-control">
													</div>
												</div>
											</form>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
				</div>
			</section>
		</section>
		<!--main content end-->
	</section>
	<!--sidebar right start-->

	<!--sidebar right end-->
	<!--Config demo-->

	<!--/Config demo-->
	<!--Global JS-->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/vendor/jquery-1.11.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/navgoco/jquery.navgoco.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/pace/pace.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/src/app.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/plugins/wizard/js/loader.min.js"></script>




	<script type="text/javascript">
		$(document).ready(function() {
			app.formWizard();
			
			if(${Esign.AUTH_DVCD}===1){
				$("#20").attr('class','active');
			}else if(${Esign.AUTH_DVCD}===2){
				$("#30").attr('class','active');
			}else if(${Esign.AUTH_DVCD}===3){
				$("#40").attr('class','active');
			}
			$("#content").attr('readonly',true);
			//var data={authNo=${authNo}}
			/*$.ajax({
	        	url: "${pageContext.request.contextPath}/esign/getEsign",
	        	type: "POST",
	        	data: esignData,
	        	success: function(result){
	        		alert("success");
	        		
	        		
	        		$("#content").attr('readonly',true);
	        		$("#20").attr('class','active');
	        	},
	        	error : function(xhr, type) {
	                alert('server error occoured')
	            }
	        });*/
			
		});
		
		
	    	
	    
		
		$("#approve").on("click",function(){
    		alert("dd");
		
    		
    		$.ajax({
	        	url: "${pageContext.request.contextPath}/esign/approve",
	        	type: "POST",
	        	success: function(result){
	        		alert("success");
	        		$("#title").attr('readonly',true);
	        		$("#content").attr('readonly',true);
	        		$("#20").attr('class','active');
	        	},
	        	error : function(xhr, type) {
	                alert('server error occoured')
	            }
	        });
    		
    	});
	</script>
</body>

</html>
