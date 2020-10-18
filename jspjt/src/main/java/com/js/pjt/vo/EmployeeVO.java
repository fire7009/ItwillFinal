package com.js.pjt.vo;

import org.springframework.web.multipart.MultipartFile;

/*
 create table employee(emp_no number(4) not null primary key,dept_no number(2) not null
,pos_dvcd number(4) not null,lgn_id varchar2(15) not null,passwd varchar2(20) not null
,file_path varchar2(100) not null,file_nm varchar2(50) not null,emp_nm varchar2(30) not null
,birth_dt varchar2(10) not null,gender varchar2(5) not null,mobile_phn_no varchar2(13) not null
,email_addr varchar2(50) not null,hire_dt varchar2(10) not null,resgn_yn varchar2(5) not null
,resgn_dt varchar2(10) not null,reg_dttm varchar2(15) not null);

이름            널?       유형            
------------- -------- ------------- 
EMP_NO        NOT NULL NUMBER(4)     사원번호
DEPT_NO       NOT NULL NUMBER(2)     부서번호
POS_DVCD      NOT NULL NUMBER(4)     직급구분코드
LGN_ID        NOT NULL VARCHAR2(15)  로그인아이디
PASSWD        NOT NULL VARCHAR2(20)  비밀번호
FILE_PATH     NOT NULL VARCHAR2(100) 파일경로
FILE_NM       NOT NULL VARCHAR2(50)  파일이름
EMP_NM        NOT NULL VARCHAR2(30)  사원명
BIRTH_DT      NOT NULL VARCHAR2(10)  생일
GENDER        NOT NULL VARCHAR2(5)   성별
MOBILE_PHN_NO NOT NULL VARCHAR2(13)  핸드폰번호
EMAIL_ADDR    NOT NULL VARCHAR2(50)  이메일주소
HIRE_DT       NOT NULL VARCHAR2(10)  입사일
RESGN_YN      NOT NULL VARCHAR2(5)   퇴사여부
RESGN_DT      NOT NULL VARCHAR2(10)  퇴사일
REG_DTTM      NOT NULL VARCHAR2(15)  등록일시
 */
public class EmployeeVO {
	private int empNo;
	private int deptNo;
	private int posDvcd;
	private String lgnId;
	private String passwd;
	private String filePath;
	private String fileNm;
	private String empNm;
	private String birthDt;
	private String gender;
	private String mobilePhnNo;
	private String emailAddr;
	private String hireDt;
	private String resgnYn;
	private String resgnDt;
	private String regDttn;
	private MultipartFile file;
	
	
	public EmployeeVO() {
		// TODO Auto-generated constructor stub
	}
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getEmpNo() {
		return empNo;
	}

	public void setEmpNo(int empNo) {
		this.empNo = empNo;
	}

	public int getDeptNo() {
		return deptNo;
	}

	public void setDeptNo(int deptNo) {
		this.deptNo = deptNo;
	}

	public int getPosDvcd() {
		return posDvcd;
	}

	public void setPosDvcd(int posDvcd) {
		this.posDvcd = posDvcd;
	}

	public String getLgnId() {
		return lgnId;
	}

	public void setLgnId(String lgnId) {
		this.lgnId = lgnId;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileNm() {
		return fileNm;
	}

	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}

	public String getEmpNm() {
		return empNm;
	}

	public void setEmpNm(String empNm) {
		this.empNm = empNm;
	}

	public String getBirthDt() {
		return birthDt;
	}

	public void setBirthDt(String birthDt) {
		this.birthDt = birthDt;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMobilePhnNo() {
		return mobilePhnNo;
	}

	public void setMobilePhnNo(String mobilePhnNo) {
		this.mobilePhnNo = mobilePhnNo;
	}

	public String getEmailAddr() {
		return emailAddr;
	}

	public void setEmailAddr(String emailAddr) {
		this.emailAddr = emailAddr;
	}

	public String getHireDt() {
		return hireDt;
	}

	public void setHireDt(String hireDt) {
		this.hireDt = hireDt;
	}

	public String getResgnYn() {
		return resgnYn;
	}

	public void setResgnYn(String resgnYn) {
		this.resgnYn = resgnYn;
	}

	public String getResgnDt() {
		return resgnDt;
	}

	public void setResgnDt(String resgnDt) {
		this.resgnDt = resgnDt;
	}

	public String getRegDttn() {
		return regDttn;
	}

	public void setRegDttn(String regDttn) {
		this.regDttn = regDttn;
	}
}
