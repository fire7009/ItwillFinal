package com.js.pjt.exception;

import com.js.pjt.vo.EmployeeVO;

//ȸ����Ͻ� ����ڰ� �Է��� ���̵� �̹� ������ ��� �߻��Ǵ� ����Ŭ����
public class EmployeeExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	//���� ó�� �޼ҵ�(ExceptionHandler)���� ���� ���� ������ �����ϱ� ���� �ʵ�
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
