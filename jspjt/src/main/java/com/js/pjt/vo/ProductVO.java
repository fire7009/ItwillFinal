package com.js.pjt.vo;
/*
 	CREATE TABLE product1(prod_no number(8) not null primary key, prod_nm varchar2(300));
 	
 	PROD_NO NOT NULL NUMBER(8)     
	PROD_NM          VARCHAR2(300)
 */
public class ProductVO {
	int prodNo;
	String prodNm;
	
	public ProductVO() {
		// TODO Auto-generated constructor stub
	}

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public String getProdNm() {
		return prodNm;
	}

	public void setProdNm(String prodNm) {
		this.prodNm = prodNm;
	}
	
	
}
