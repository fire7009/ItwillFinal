package com.js.pjt.exception;

import com.js.pjt.vo.EmployeeVO;

//회원등록시 사용자가 입력한 아이디가 이미 존재할 경우 발생되는 예외클래스
public class EmployeeExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	//예외 처리 메소드(ExceptionHandler)에게 예외 관련 정보를 전달하기 위한 필드
	private EmployeeVO EmployeeVO;
	
	public EmployeeExistsException() {
		// TODO Auto-generated constructor stub
	}

	public EmployeeExistsException(EmployeeVO EmployeeVO, String message) {
		super(message);
		this.EmployeeVO = EmployeeVO;
	}

	public EmployeeVO getEmployeeVO() {
		return EmployeeVO;
	}

	public void setEmployeeVO(EmployeeVO EmployeeVO) {
		this.EmployeeVO = EmployeeVO;
	}
}
