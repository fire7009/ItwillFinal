package com.js.pjt.exception;

//회원 로그인에 대한 인증 실패시 발생되는 예외클래스
public class LoginAuthFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private String lgnId;
	
	public LoginAuthFailException() {
		// TODO Auto-generated constructor stub
	}

	public LoginAuthFailException(String lgnId, String message) {
		super(message);
		this.lgnId = lgnId;
	}

	public String getLgnid() {
		return lgnId;
	}

	public void setLgnid(String lgnId) {
		this.lgnId = lgnId;
	}
}
