package com.js.pjt.vo;

public class MailVO {
	/*CREATE TABLE  EMP_MSG  (
			 MSG_NO 	NUMBER(8)	NOT NULL,
			 DISP_EMPNO 	NUMBER(4)	NOT NULL,
			 RECP_EMPNO 	NUMBER(4)	NOT NULL,
			 TITLE 	VARCHAR2(300)	NOT NULL,
			 CONTENT 	VARCHAR2(4000)	NOT NULL,
			 RECP_YN 	CHAR(1)	NOT NULL	DEFAULT N,
			 RECP_DTTM 	DATE	NULL,
			 DISP_DTTM 	DATE	NOT NULL	DEFAULT SYSDATE,
			 DEL_YN 	CHAR(1)	NOT NULL	DEFAULT N,
			 DEL_DTTM 	DATE	NULL
		);*/
	private int DISP_EMPNO;
	private int RECP_EMPNO;
	private String TITLE;
	private String CONTENT;
	
	public int getDISP_EMPNO() {
		return DISP_EMPNO;
	}
	public void setDISP_EMPNO(int dISP_EMPNO) {
		DISP_EMPNO = dISP_EMPNO;
	}
	public int getRECP_EMPNO() {
		return RECP_EMPNO;
	}
	public void setRECP_EMPNO(int rECP_EMPNO) {
		RECP_EMPNO = rECP_EMPNO;
	}
	public String getTITLE() {
		return TITLE;
	}
	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	
}
