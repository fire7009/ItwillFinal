package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.CustomerVO;

public interface CustomerDAO {
	List<CustomerVO> selectCustomerList();
}
