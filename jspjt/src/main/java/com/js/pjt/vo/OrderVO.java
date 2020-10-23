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
PROD_NO							   ��ǰ��ȣ

*/
public class OrderVO {
	private int ordNo;
	private String ordCustNm;
	private String ordProdNm;
	private int ordSumQty;
	private int ordSumAmt;
	private int ordStatDvce;
	private String ordDttm;
	private String ordCnclYn;
	private String ordCnclDttm;
	private int prodNo;
	private ProductVO productVO;
	private CustomerVO customerVO;
	
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
	public int getProdNo() {
		return prodNo;
	}
	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public CustomerVO getCustomerVO() {
		return customerVO;
	}
	public void setCustomerVO(CustomerVO customerVO) {
		this.customerVO = customerVO;
	}
	

	
}
