package com.js.pjt.exception;

//ȸ�������� ����,����,�˻��� ���̵��� ȸ�������� �������� ���� ��� �߻��Ǵ� ����Ŭ����
public class EmployeeNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public EmployeeNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public EmployeeNotFoundException(String message) {
		super(message);
	}
}
