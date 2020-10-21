package com.js.pjt.exception;

//ȸ�� �α��ο� ���� ���� ���н� �߻��Ǵ� ����Ŭ����
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
