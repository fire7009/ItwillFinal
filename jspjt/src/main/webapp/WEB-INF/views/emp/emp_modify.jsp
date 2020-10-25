<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="modal fade in " id="updateDiv" style="display:hidden; padding-right:17px; overflow: scroll;">
	<div class="modal-dialog">
		<form action="" class="form-horizontal" enctype="multipart/form-data" >
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" class="close closeDiv" data-dismiss="modal" type="button">×</button>
					<h4 class="modal-title none">사원정보수정</h4>
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">사원번호</label>
				    <input type="text" class="form-control resetMsg" name="empNo" id="empNo" value="${empNo }" readonly="readonly">
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">부서</label>
				    <select class="form-control resetMsgs input-lg" id="deptNo" name="deptNo">
                           <option value="10">인사팀</option>
                           <option value="20">운영팀</option>
                           <option value="30">운송팀</option>
                           <option value="40">회계팀</option>
                           <option value="50">영업팀</option>                                
       				</select>
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">직급구분코드</label>
				    <select class="form-control resetMsgs input-lg" id="posDvcd" name="posDvcd">
                           <option value="10">사원</option>
                           <option value="20">대리</option>
                           <option value="30">과장</option>
                           <option value="40">팀장</option>
       				</select>
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">아이디</label>
				    <input type="text" class="form-control resetMsg" name="lgnId" id="lgnId" readonly="readonly">
				</div>
				 <div class="modal-body">
				    <label for="exampleInputPassword1">비밀번호</label>
				    <input type="password" class="form-control resetMsg" name="passwd" id="passwd" >
				</div>
				  <div class="modal-body">
				    <label for="exampleInputPassword1">비밀번호 확인</label>
				    <input type="password" class="form-control resetMsg" name="passwd2" id="passwd2" >
				    <div class="magDiv"><span id="passwd2Msg" class="msg d"></span></div>
				</div>
				<div class="modal-body">
				    <label for="exampleInputEmail1">이름</label>
				    <input type="text" class="form-control resetMsg" name="empNm" id="empNm" readonly="readonly">
				</div>
				<div class="modal-body">
				    <label for="exampleInputEmail1">생일</label>
				    <input type="text" class="form-control resetMsg" name="birthDt" id="birthDt" readonly="readonly">
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">핸드폰번호</label>
				    <input type="text" class="form-control resetMsg" name="mobilePhnNo" id="mobilePhnNo" >
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">이메일</label>
				    <input type="email" class="form-control resetMsg" name="emailAddr" id="emailAddr" >
				</div>
				<div class="modal-body">
				    <label for="exampleInputPassword1">입사일</label>
				    <input type="text" class="form-control resetMsg" name="hireDt" id="hireDt"  readonly="readonly">
				</div>
				<div class="modal-body">
				    <label for="exampleInputEmail1">성별</label>
				    <div id="radioDiv">
					    <input type="text" class="form-control resetMsg" name="gender" id="gender" readonly="readonly">
				    </div>
				</div>
				<div class="modal-body">
				    <label for="exampleInputFile" id="modifyFile">사진수정</label>
				    <input type="file" id="file" name="file" >
				</div>
				<div class="modal-footer">
					<button class="btn btn-sm btn-success" type="button" id="updateBtn" data-dismiss="modal">작성</button>
					<a class="btn btn-sm btn-white closeDiv" data-dismiss="modal">닫기</a>
				</div>
			</div>
		</form>
	</div>
</div>