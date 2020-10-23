package com.js.pjt.vo;

/*
 * �̸�            ��?       ����           
------------- -------- ------------ 
ORD_NO        NOT NULL NUMBER(8)   �ֹ���ȣ
ORD_CUSTNM    NOT NULL VARCHAR2(30) ����
ORD_PRODNM    NOT NULL VARCHAR2(30) ��ǰ��
ORD_SUM_QTY   NOT NULL NUMBER      �ֹ��Ѽ���
ORD_SUM_AMT   NOT NULL NUMBER      �ֹ��ѱݾ�
ORD_STAT_DVCE NOT NULL NUMBER(4)   �ֹ������ڵ�
ORD_DTTM      NOT NULL DATE        �ֹ��Ͻ�
ORD_CNCL_YN   NOT NULL VARCHAR2(1) �ֹ���ҿ���  0�� ���
ORD_CNCL_DTTM          DATE		   �ֹ�����Ͻ�

*/
public class OrderVO {
	int ordNo;
	String ordCustNm;
	String ordProdNm;
	int ordSumQty;
	int ordSumAmt;
	int ordStatDvce;
	String ordDttm;
	String ordCnclYn;
	String ordCnclDttm;
	private int prodNo;

	public int getProdNo() {
		return prodNo;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public OrderVO() {
		// TODO Auto-generated constructor stub
	}

	public int getOrdNo() {
		return ordNo;
	}

	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}

	public String getOrdCustNm() {
		return ordCustNm;
	}

	public void setOrdCustNm(String ordCustNm) {
		this.ordCustNm = ordCustNm;
	}

	public String getOrdProdNm() {
		return ordProdNm;
	}

	public void setOrdProdNm(String ordProdNm) {
		this.ordProdNm = ordProdNm;
	}

	public int getOrdSumQty() {
		return ordSumQty;
	}

	public void setOrdSumQty(int ordSumQty) {
		this.ordSumQty = ordSumQty;
	}

	public int getOrdSumAmt() {
		return ordSumAmt;
	}

	public void setOrdSumAmt(int ordSumAmt) {
		this.ordSumAmt = ordSumAmt;
	}

	public int getOrdStatDvce() {
		return ordStatDvce;
	}

	public void setOrdStatDvce(int ordStatDvce) {
		this.ordStatDvce = ordStatDvce;
	}

	public String getOrdDttm() {
		return ordDttm;
	}

	public void setOrdDttm(String ordDttm) {
		this.ordDttm = ordDttm;
	}

	public String getOrdCnclYn() {
		return ordCnclYn;
	}

	public void setOrdCnclYn(String ordCnclYn) {
		this.ordCnclYn = ordCnclYn;
	}

	public String getOrdCnclDttm() {
		return ordCnclDttm;
	}

	public void setOrdCnclDttm(String ordCnclDttm) {
		this.ordCnclDttm = ordCnclDttm;
	}
}
