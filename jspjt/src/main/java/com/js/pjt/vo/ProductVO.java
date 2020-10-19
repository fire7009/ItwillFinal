package com.js.pjt.vo;
<<<<<<< HEAD

public class ProductVO {
	private int prod_no;//상품번호
	private String prod_nm;//상품명
	private String prod_detl;//상품상세
	private int prod_price;//상품단가
	private int stck_qty;//재고수량
	private String sales_yn;//판매여부
	private String so_yn;//품절여부
	private String reg_dttm;//등록일시
	private String del_yn;//삭제여부
	private String del_dttm;//삭제일시
	public int getProd_no() {
		return prod_no;
	}
	public void setProd_no(int prod_no) {
		this.prod_no = prod_no;
	}
	public String getProd_nm() {
		return prod_nm;
	}
	public void setProd_nm(String prod_nm) {
		this.prod_nm = prod_nm;
	}
	public String getProd_detl() {
		return prod_detl;
	}
	public void setProd_detl(String prod_detl) {
		this.prod_detl = prod_detl;
	}
	public int getProd_price() {
		return prod_price;
	}
	public void setProd_price(int prod_price) {
		this.prod_price = prod_price;
	}
	public int getStck_qty() {
		return stck_qty;
	}
	public void setStck_qty(int stck_qty) {
		this.stck_qty = stck_qty;
	}
	public String getSales_yn() {
		return sales_yn;
	}
	public void setSales_yn(String sales_yn) {
		this.sales_yn = sales_yn;
	}
	public String getSo_yn() {
		return so_yn;
	}
	public void setSo_yn(String so_yn) {
		this.so_yn = so_yn;
	}
	public String getReg_dttm() {
		return reg_dttm;
	}
	public void setReg_dttm(String reg_dttm) {
		this.reg_dttm = reg_dttm;
	}
	public String getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(String del_yn) {
		this.del_yn = del_yn;
	}
	public String getDel_dttm() {
		return del_dttm;
	}
	public void setDel_dttm(String del_dttm) {
		this.del_dttm = del_dttm;
	}
=======
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
	
>>>>>>> branch 'master' of https://github.com/fire7009/ItwillFinal
	
}
