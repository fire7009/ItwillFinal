package com.js.pjt.service_serviceimp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.js.pjt.dao_daoimp.ProductDAO;
import com.js.pjt.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService{
	
	@Inject
	private ProductDAO dao;

	@Override
	public int insertProduct(ProductVO Product) throws Exception {
		return dao.insertProduct(Product);
	}

	@Override
	public ProductVO selectProduct(int prodNo) throws Exception {
		return dao.selectProduct(prodNo);
	}

	@Override
	public List<ProductVO> selectListProduct() throws Exception {
		return dao.selectListProduct();
	}

	@Override
	public int updateProduct(ProductVO vo) throws Exception {
		return dao.updateProduct(vo);
	}

	@Override
	public int deleteProduct(int prodNo) throws Exception {
		return dao.deleteProduct(prodNo);
	}

	
}
