package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO Product) throws Exception;
	public ProductVO selectProduct(int prodNo) throws Exception;
	public List<ProductVO> selectListProduct() throws Exception;
	public int updateProduct(int prodNo) throws Exception;
	public int deleteProduct(int prodNo) throws Exception;
}
