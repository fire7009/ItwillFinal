package com.js.pjt.exception;

//회원정보의 변경,삭제,검색시 아이디의 회원정보가 존재하지 않을 경우 발생되는 예외클래스
public class EmployeeNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public EmployeeNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public EmployeeNotFoundException(String message) {
		super(message);
	}
}
