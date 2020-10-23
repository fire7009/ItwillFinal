package com.js.pjt.mapper;

import java.util.List;
import java.util.Map;


import com.js.pjt.vo.ProductVO;


public interface ProductMapper {
	public int insertProduct(ProductVO Product);
	public ProductVO selectProduct(int prodNo);
	public List<ProductVO> selectListProduct();
	public int updateProduct(ProductVO vo);
	public int deleteProduct(int prodNo);
	public List<ProductVO> searchListDO(Map<String, Object> map);
}
