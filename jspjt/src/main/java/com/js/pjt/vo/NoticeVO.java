package com.js.pjt.vo;
/*
�̸�        ��?       ����             
--------- -------- -------------- 
NOTICE_NO NOT NULL NUMBER(8)      ������ȣ
REG_EMPNO NOT NULL NUMBER(4)      ��ϻ����ȣ
TITLE     NOT NULL VARCHAR2(300)  ����
CONTENT   NOT NULL VARCHAR2(4000) ����
VIEW_CNT  NOT NULL NUMBER         ��ȸ��
NOTICE_YN NOT NULL CHAR(1)        ��������
REG_DTTM  NOT NULL DATE           ����Ͻ�
DEL_YN    NOT NULL CHAR(1)        ��������
DEL_DTTM           DATE  		  �����Ͻ�
 */
public class NoticeVO {
	private int noticeNo; 
	private int regEmpNo;
	private String title;
	private String content;
	private int viewCnt;
	private String noticeYn;
	private String regDttm;
	private String delYn;
	private String delDttm;
	
	private EmployeeVO employeeVo; 

	public EmployeeVO getEmployeeVo() {
		return employeeVo;
	}

	public void setEmployeeVo(EmployeeVO employeeVo) {
		this.employeeVo = employeeVo;
	}

	public NoticeVO() {
		// TODO Auto-generated constructor stub
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public int getRegEmpNo() {
		return regEmpNo;
	}

	public void setRegEmpNo(int regEmpNo) {
		this.regEmpNo = regEmpNo;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getViewCnt() {
		return viewCnt;
	}

	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}

	public String getNoticeYn() {
		return noticeYn;
	}

	public void setNoticeYn(String noticeYn) {
		this.noticeYn = noticeYn;
	}

	public String getRegDttm() {
		return regDttm;
	}

	public void setRegDttm(String regDttm) {
		this.regDttm = regDttm;
	}

	public String getDelYn() {
		return delYn;
	}

	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	public String getDelDttm() {
		return delDttm;
	}

	public void setDelDttm(String delDttm) {
		this.delDttm = delDttm;
	}

	
}
