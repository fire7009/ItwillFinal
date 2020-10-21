<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>NeuBoard</title>
<meta name="description" content="">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />	 
	 
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"> 	 
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
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    <script src="assets/js/vendor/html5shiv.js"></script>
    <script src="assets/js/vendor/respond.min.js"></script>
    <![endif]-->
    
    
    
    
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendor/css/fullcalendar.min.css" />

    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='${pageContext.request.contextPath}/resources/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	
    
 

     
</head>

<body>
	<section id="main-wrapper" class="theme-default">
		<header id="header">
			<!--logo start-->
			<div class="brand">
				<a href="index.html" class="logo"> <span>APP</span>NAME
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
				<li class="hidden-xs"><input type="text" class="search"
					placeholder="Search project...">
					<button type="submit" class="btn btn-sm btn-search">
						<i class="fa fa-search"></i>
					</button></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
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
		<div class="container" style="padding: 50px">

			<!-- 일자 클릭시 메뉴오픈 -->
			<div id="contextMenu" class="dropdown clearfix">
				<ul class="dropdown-menu dropNewEvent" role="menu"
					aria-labelledby="dropdownMenu"
					style="display: block; position: static; margin-bottom: 5px;">
					<li><a tabindex="-1" href="#">일정추가</a></li>
					<li class="divider"></li>
					<li><a tabindex="-1" href="#" data-role="close">닫기</a></li>
				</ul>
			</div>

			<div id="wrapper">
				<div id="loading"></div>
				<div id="calendar"></div>
			</div>


			<!-- 일정 추가 MODAL -->
			<div class="modal fade" tabindex="-1" role="dialog" id="eventModal">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<h4 class="modal-title"></h4>
						</div>
						<div class="modal-body">

							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-allDay">하루종일</label> <input
										class='allDayNewEvent' id="edit-allDay" type="checkbox"
										checked="checked"></label>
								</div>
							</div>

							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-title">일정명</label> <input
										class="inputModal" type="text" name="edit-title"
										id="edit-title" required="required" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-start">시작</label> <input
										class="inputModal" type="text" name="edit-start"
										id="edit-start" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-end">끝</label> <input
										class="inputModal" type="text" name="edit-end" id="edit-end" />
								</div>
							</div>
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-type">구분</label> 
									<select class="inputModal" name="edit-type" id="edit-type">
										<option value="10">사내일정</option>
										<option value="20" selected="selected">개인일정</option>
									</select>
								</div>
							</div>
							
							<div class="row">
								<div class="col-xs-12">
									<label class="col-xs-4" for="edit-desc">설명</label>
									<textarea rows="4" cols="50" class="inputModal"
										name="edit-desc" id="edit-desc"></textarea>
								</div>
							</div>
						</div>
						<div class="modal-footer modalBtnContainer-addEvent">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary" id="save-event">저장</button>
						</div>
						<div class="modal-footer modalBtnContainer-modifyEvent">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">닫기</button>

							<button type="button" class="btn btn-danger" id="deleteEvent">삭제</button>
							<button type="button" class="btn btn-primary" id="updateEvent">저장</button>

						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
		
		</div>
		<!--main content end-->
	</section>
	<!--sidebar right start-->
	<aside id="sidebar-right">
		<h4 class="sidebar-title">contact List</h4>
		<div id="contact-list-wrapper">
			<div class="heading">
				<ul>
					<li class="new-contact"><a href="javascript:void(0)"><i
							class="fa fa-plus"></i></a></li>
					<li><input type="text" class="search" placeholder="Search">
						<button type="submit" class="btn btn-sm btn-search">
							<i class="fa fa-search"></i>
						</button></li>
				</ul>
			</div>
			<div id="contact-list"></div>
			<div id="contact-user">
				<div class="chat-user active">
					<span><i class="icon-bubble"></i></span>
				</div>
				<div class="email-user">
					<span><i class="icon-envelope-open"></i></span>
				</div>
				<div class="call-user">
					<span><i class="icon-call-out"></i></span>
				</div>
			</div>
		</div>
	</aside>
	<!--/sidebar right end-->
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
	<!-- <script src="${pageContext.request.contextPath}/resources/vendor/js/jquery.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/vendor/js/moment.min.js"></script>
  	<script src="${pageContext.request.contextPath}/resources/vendor/js/fullcalendar.min.js"></script>
   	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.9.0/gcal.js"></script>
    <!--<script src="resources/vendor/js/gcal.js"></script>-->
   <!-- <script src="${pageContext.request.contextPath}/resources/vendor/js/bootstrap.min.js"></script>-->
    <script src="${pageContext.request.contextPath}/resources/vendor/js/ko.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/js/select2.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/vendor/js/bootstrap-datetimepicker.min.js"></script>
    
    
    
    <script src="${pageContext.request.contextPath}/resources/js/main1.js"></script>  
    <script src="${pageContext.request.contextPath}/resources/js/addEvents.js"></script>
     <script src="${pageContext.request.contextPath}/resources/js/editEvent.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/etcSetting.js"></script>
    
    
    
  
    
    
    
    <script type="text/javascript">
    /* ****************
     *  일정 편집
     * ************** */
    var editEvent = function (event, element, view) {
    	
    	
        $('#deleteEvent').data('id', event._id); //클릭한 이벤트 ID

        $('.popover.fade.top').remove();
        $(element).popover("hide");

        if (event.allDay === true) {
            editAllDay.prop('checked', true);
        } else {
            editAllDay.prop('checked', false);
        }

        if (event.end === null) {
            event.end = event.start;
        }
        //event.allDay === true && 
        
        if (event.end.format('YYYY-MM-DD') !== event.start.format('YYYY-MM-DD')) {
        
            editEnd.val(moment(event.end).subtract(1, 'days').format('YYYY-MM-DD HH:mm'));
        } else {
            editEnd.val(event.end.format('YYYY-MM-DD HH:mm'));
        }

        modalTitle.html('일정 수정');
        editTitle.val(event.title);
        editStart.val(event.start.format('YYYY-MM-DD HH:mm'));
        alert(event.type);
        editType.val(event.type);
        editDesc.val(event.description);
       

        addBtnContainer.hide();
        modifyBtnContainer.show();
        eventModal.modal('show');
        
    	
    	 var eventData = {
                _id: event._id,
                title: editTitle.val(),
                start: editStart.val(),
                end: editEnd.val(),
                description: editDesc.val(),
                //type: editType.val(),
                
                allDay: false
            };
    	
        //업데이트 버튼 클릭시
        $('#updateEvent').unbind();
        $('#updateEvent').on('click', function () {

            if (editStart.val() > editEnd.val()) {
                alert('끝나는 날짜가 앞설 수 없습니다.');
                return false;
            }

            if (editTitle.val() === '') {
                alert('일정명은 필수입니다.')
                return false;
            }

            var statusAllDay;
            var startDate;
            var endDate;
            var displayDate;

            if (editAllDay.is(':checked')) {
                statusAllDay = true;
                startDate = moment(editStart.val()).format('YYYY-MM-DD');
                endDate = moment(editEnd.val()).format('YYYY-MM-DD');
                displayDate = moment(editEnd.val()).add(1, 'days').format('YYYY-MM-DD');
            } else {
                statusAllDay = false;
                startDate = editStart.val();
                endDate = editEnd.val();
                displayDate = endDate;
            }

            eventModal.modal('hide');

            event.allDay = statusAllDay;
            event.title = editTitle.val();
            event.start = startDate;
            event.end = displayDate;
            event.type = editType.val();
           
            event.description = editDesc.val();
            
           

            //$("#calendar").fullCalendar('updateEvent', event);
    		
            //일정 업데이트
            $.ajax({
                type: "get",
                url: "editEvent",
                data: eventData,
                success: function (response) {
                    alert('수정되었습니다.')
                }
            });

        });
    };

    // 삭제버튼
    $('#deleteEvent').on('click', function () {
        
        $('#deleteEvent').unbind();
        $("#calendar").fullCalendar('removeEvents', $(this).data('id'));
        eventModal.modal('hide');

        //삭제시
        $.ajax({
            type: "get",
            url: "",
            data:eventData,
            success: function (response) {
                alert('삭제되었습니다.');
            }
        });

    });
    </script>	

</body>

</html>
