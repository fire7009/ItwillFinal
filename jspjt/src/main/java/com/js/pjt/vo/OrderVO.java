package com.js.pjt.vo;

/*
 * 이름            널?       유형           
------------- -------- ------------ 
ORD_NO        NOT NULL NUMBER(8)   주문번호
ORD_CUSTNM    NOT NULL VARCHAR2(30) 고객명
ORD_PRODNM    NOT NULL VARCHAR2(30) 상품명
ORD_SUM_QTY   NOT NULL NUMBER      주문총수량
ORD_SUM_AMT   NOT NULL NUMBER      주문총금액
ORD_STAT_DVCE NOT NULL NUMBER(4)   주문구분코드
ORD_DTTM      NOT NULL DATE        주문일시
ORD_CNCL_YN   NOT NULL VARCHAR2(1) 주문취소여부  0이 취소
ORD_CNCL_DTTM          DATE		   주문취소일시
PROD_NO							   상품번호

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
