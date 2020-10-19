package com.js.pjt.service_serviceimp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.js.pjt.dao_daoimp.ProductDAO;
import com.js.pjt.vo.ProductVO;

@Repository
public class ProductServiceImp implements ProductService {

	@Inject
	private ProductDAO dao;
	
	@Override
	public void insertProduct(ProductVO product) throws Exception {
		dao.insertProduct(product);
	}

	@Override
	public ProductVO selectProduct(int prod_no) throws Exception {
		return dao.selectProductVO(prod_no);
	}

	@Override
	public List<ProductVO> selectListProduct() throws Exception {
		return dao.selectListProduct();
	}

	@Override
	public void updateProduct(String prod_detl) throws Exception {
		 dao.updateProduct(prod_detl);
	}

	@Override
	public void deleteProduct(int prod_no) throws Exception {
		 dao.deleteProduct(prod_no);
	}

}
