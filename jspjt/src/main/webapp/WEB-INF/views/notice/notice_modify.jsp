<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="modal fade in" id="updateDiv" style="display:hidden; padding-right:17px;">
	<div class="modal-dialog">
		<form action="" class="form-horizontal">
			<div class="modal-content">
				<div class="modal-header">
					<button aria-hidden="true" class="close closeDiv" data-dismiss="modal" type="button">×</button>
					<h4 class="modal-title">상세내용</h4>
				</div>
				<div class="modal-body">
					<table style="width:400px; margin:0 auto;">
						<tbody id="modifyBody">
							<tr>                                                            
								<th width="60" ></th>
								<th width="20" ></th>
								<th ></th>
							</tr>
							<tr>
								<td>
									공지번호
								</td>
								<td></td>
								<td>
									<input type="text" class="form-control update" style="height: 40px;" name="title" id="noticeNo" value="" readonly="readonly"/>
								</td>
							</tr>
							<tr style="height: 20px">
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td>
									제목
								</td>
								<td></td>
								<td>
									<input type="text" class="form-control update"  name="title" id="updateTitle" value=""/>
								</td>
							</tr>
							<tr style="height: 20px">
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td style="vertical-align: top;">
								내용
								</td>
								<td></td>
								<td>
									<textarea class="form-control update" rows="10" cols="40" name="content" id="updateContent" style="resize: none;"></textarea>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="modal-footer">
					<c:if test="${loginUserInfo.posDvcd>=20 }">
					<button class="btn btn-sm btn-success" type="button" id="updateBtn" data-dismiss="modal">수정</button>
					</c:if>
					<a class="btn btn-sm btn-white closeDiv" data-dismiss="modal">닫기</a>
				</div>
			</div>
		</form>
	</div>
</div>