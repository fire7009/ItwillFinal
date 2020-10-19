package com.js.pjt.service_serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.ProductDAO;
import com.js.pjt.vo.ProductVO;

@Service
public class ProdectServiceImp implements ProductService {
	@Autowired
	private ProductDAO productDAO;
	
	@Transactional
	@Override
	public List<ProductVO> selectProductList() {
		return productDAO.selectProductList();
	}

}
