package com.js.pjt.vo;


public class DeliveryVO {
	private int dlvrNo;//운송번호
	private int ordNo;//주문번호
	private int dlvrEmpno;//배송자사원번호
	private String dlvrStrtDttm;//배송시작일시
	private String dlvrCmplYn;//배송완료여부
	private String dlvrCmplDttm;//배송완료일시
	private OrderVO orderVO;
	private EmployeeVO employeeVO;
	private CustomerVO customerVO;
	private ProductVO productVO;
	private int ordSumQty;
	private int stckQty;
	
	
	
	public int getOrdSumQty() {
		return ordSumQty;
	}
	public void setOrdSumQty(int ordSumQty) {
		this.ordSumQty = ordSumQty;
	}
	public int getStckQty() {
		return stckQty;
	}
	public void setStckQty(int stckQty) {
		this.stckQty = stckQty;
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
	public int getDlvrNo() {
		return dlvrNo;
	}
	public void setDlvrNo(int dlvrNo) {
		this.dlvrNo = dlvrNo;
	}
	public int getOrdNo() {
		return ordNo;
	}
	public void setOrdNo(int ordNo) {
		this.ordNo = ordNo;
	}
	public int getDlvrEmpno() {
		return dlvrEmpno;
	}
	public void setDlvrEmpno(int dlvrEmpno) {
		this.dlvrEmpno = dlvrEmpno;
	}
	public String getDlvrStrtDttm() {
		return dlvrStrtDttm;
	}
	public void setDlvrStrtDttm(String dlvrStrtDttm) {
		this.dlvrStrtDttm = dlvrStrtDttm;
	}
	public String getDlvrCmplYn() {
		return dlvrCmplYn;
	}
	public void setDlvrCmplYn(String dlvrCmplYn) {
		this.dlvrCmplYn = dlvrCmplYn;
	}
	public String getDlvrCmplDttm() {
		return dlvrCmplDttm;
	}
	public void setDlvrCmplDttm(String dlvrCmplDttm) {
		this.dlvrCmplDttm = dlvrCmplDttm;
	}
	
	public OrderVO getOrderVO() {
		return orderVO;
	}
	public void setOrderVO(OrderVO orderVO) {
		this.orderVO = orderVO;
	}
	public EmployeeVO getEmployeeVO() {
		return employeeVO;
	}
	public void setEmployeeVO(EmployeeVO employeeVO) {
		this.employeeVO = employeeVO;
	}
	
}

