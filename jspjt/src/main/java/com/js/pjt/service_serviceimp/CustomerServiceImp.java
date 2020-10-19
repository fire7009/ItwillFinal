package com.js.pjt.service_serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.CustomerDAO;
import com.js.pjt.vo.CustomerVO;

@Service
public class CustomerServiceImp implements CustomerService {
	@Autowired
	private CustomerDAO CustomerDAO;
	
	@Transactional
	@Override
	public List<CustomerVO> selectCustomerList() {
		return CustomerDAO.selectCustomerList();
	}

}
