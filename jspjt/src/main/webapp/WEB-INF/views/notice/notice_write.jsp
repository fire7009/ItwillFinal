<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="modal fade in" id="write" style="display:none; padding-right:17px;">
				<div class="modal-dialog">
					<form action="" class="form-horizontal">
						<div class="modal-content">
							<div class="modal-header">
								<button aria-hidden="true" class="close closeDiv" data-dismiss="modal" type="button">×</button>
								<h4 class="modal-title">공지작성</h4>
							</div>
							<div class="modal-body">
								<table style="width:400px; margin:0 auto;">
									<tbody id="writeBody">
										<tr>                                                            
											<th width="50" ></th>
											<th width="20" ></th>
											<th ></th>
										</tr>
										<tr>
											<td>
												제목
											</td>
											<td></td>
											<td>
												<input type="text" class="form-control insert" style="height: 40px;" name="title" id="insertTitle"/>
											</td>
										</tr>
										<tr style="height: 20px">
											<td></td>
											<td><input type="hidden" id="insertregEmpNo" class="insert" value="${loginUserInfo.empNo }"><!-- ${userInfo.empNm} --></td>
										</tr>
										<tr>
											<td style="vertical-align: top;">
												내용
											</td>
											<td></td>
											<td>
												<textarea class="form-control insert" rows="10" cols="40" name="content" id="insertContent" style="resize: none;"></textarea>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="modal-footer">
								<button class="btn btn-sm btn-success" type="button" id="insertBtn" data-dismiss="modal">작성</button>
								<a class="btn btn-sm btn-white closeDiv" data-dismiss="modal">닫기</a>
							</div>
						</div>
					</form>
				</div>
			</div>