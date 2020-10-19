package com.js.pjt.vo;

public class DeliveryVO {
	private int dlvr_no;//운송번호
	private int ord_no;//주문번호
	private int dlvr_empno;//배송자사원번호
	private String dlvr_strt_dttm;//배송시작일시
	private String dlvr_cmpl_yn;//배송완료여부
	private String dlvr_cmpl_dttm;//배송완료일시
	
	
	public int getDlvr_no() {
		return dlvr_no;
	}
	public void setDlvr_no(int dlvr_no) {
		this.dlvr_no = dlvr_no;
	}
	public int getOrd_no() {
		return ord_no;
	}
	public void setOrd_no(int ord_no) {
		this.ord_no = ord_no;
	}
	public int getDlvr_empno() {
		return dlvr_empno;
	}
	public void setDlvr_empno(int dlvr_empno) {
		this.dlvr_empno = dlvr_empno;
	}
	public String getDlvr_strt_dttm() {
		return dlvr_strt_dttm;
	}
	public void setDlvr_strt_dttm(String dlvr_strt_dttm) {
		this.dlvr_strt_dttm = dlvr_strt_dttm;
	}
	public String getDlvr_cmpl_yn() {
		return dlvr_cmpl_yn;
	}
	public void setDlvr_cmpl_yn(String dlvr_cmpl_yn) {
		this.dlvr_cmpl_yn = dlvr_cmpl_yn;
	}
	public String getDlvr_cmpl_dttm() {
		return dlvr_cmpl_dttm;
	}
	public void setDlvr_cmpl_dttm(String dlvr_cmpl_dttm) {
		this.dlvr_cmpl_dttm = dlvr_cmpl_dttm;
	}
	
	
	
}
