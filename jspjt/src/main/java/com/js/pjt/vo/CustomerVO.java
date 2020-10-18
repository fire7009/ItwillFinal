package com.js.pjt.vo;
/*
 	CREATE TABLE customer(cust_no number(8) not null primary key, cust_nm varchar2(30));
 	이름      널?       유형           
	------- -------- ------------ 
	CUST_NO NOT NULL NUMBER(8)    
	CUST_NM          VARCHAR2(30) 
 */
public class CustomerVO {
	int custNo;
	String custNm;
	
	public CustomerVO() {
		// TODO Auto-generated constructor stub
	}

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
	
	
}
