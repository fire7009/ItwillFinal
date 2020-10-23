package com.js.pjt.vo;
/*
 	CREATE TABLE customer(cust_no number(8) not null primary key, cust_nm varchar2(30));
 	�̸�      ��?       ����           
	------- -------- ------------ 
	CUST_NO NOT NULL NUMBER(8)    
	CUST_NM          VARCHAR2(30) 
 */
public class CustomerVO {
	private int custNo;
	private String custNm;
	private String contactAddr;
	public int getCustNo() {
		return custNo;
	}
	public void setCustNo(int custNo) {
		this.custNo = custNo;
	}
	public String getCustNm() {
		return custNm;
	}
	public void setCustNm(String custNm) {
		this.custNm = custNm;
	}
	public String getContactAddr() {
		return contactAddr;
	}
	public void setContactAddr(String contactAddr) {
		this.contactAddr = contactAddr;
	}

	
}
