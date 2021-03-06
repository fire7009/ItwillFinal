package com.js.pjt.vo;

public class ProductVO {
	private int prodNo;//상품번호
	private String prodNm;//상품명
	private String prodDetl;//상품상세
	private int prodPrice;//상품단가
	private int stckQty;//재고수량
	private String salesYn;//판매여부
	private String soYn;//품절여부
	private String regDttm;//등록일시
	private String delYn;//삭제여부
	private String delDttm;//삭제일시
	
	
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
	public String getProdDetl() {
		return prodDetl;
	}
	public void setProdDetl(String prodDetl) {
		this.prodDetl = prodDetl;
	}
	public int getProdPrice() {
		return prodPrice;
	}
	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}
	public int getStckQty() {
		return stckQty;
	}
	public void setStckQty(int stckQty) {
		this.stckQty = stckQty;
	}
	public String getSalesYn() {
		return salesYn;
	}
	public void setSalesYn(String salesYn) {
		this.salesYn = salesYn;
	}
	public String getSoYn() {
		return soYn;
	}
	public void setSoYn(String soYn) {
		this.soYn = soYn;
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
