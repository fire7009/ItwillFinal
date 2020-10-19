package com.js.pjt.mapper;

import java.util.List;

import com.js.pjt.vo.ProductVO;

public interface ProductMapper {
	public int insertProduct(ProductVO product);
	public ProductVO selectProductVO(int prod_No);
	public List<ProductVO> selectListProduct();
	public int updateProduct(String prod_detl);
	public int deleteProduct(int prodNo);
}
