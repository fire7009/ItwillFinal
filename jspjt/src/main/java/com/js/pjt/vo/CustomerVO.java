package com.js.pjt.vo;
/*         
	이름           널?       유형            
------------ -------- ------------- 
CUST_NO      NOT NULL NUMBER(8)     
CUST_NM      NOT NULL VARCHAR2(30)  
CONTACT_ADDR NOT NULL VARCHAR2(100) 
POST_CD      NOT NULL VARCHAR2(5)   
BASE_ADDR    NOT NULL VARCHAR2(100) 
DETL_ADDR             VARCHAR2(50)  
REG_DTTM     NOT NULL DATE          
DEL_YN       NOT NULL CHAR(1)       
DEL_DTTM              DATE
	
 */
public class CustomerVO {
	private int custNo;
	private String custNm;
	private String delYn;
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
	public String getDelYn() {
		return delYn;
	}
	public void setDelYn(String delYn) {
		this.delYn = delYn;
	}

	
}
