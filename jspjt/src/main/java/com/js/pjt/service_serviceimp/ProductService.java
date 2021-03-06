package com.js.pjt.service_serviceimp;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.ProductVO;

public interface ProductService {
	public int insertProduct(ProductVO Product) throws Exception;
	public ProductVO selectProduct(int prodNo) throws Exception;
	public List<ProductVO> selectListProduct() throws Exception;
	public int updateProduct(ProductVO vo) throws Exception;
	public int deleteProduct(int prodNo) throws Exception;
	public List<ProductVO> searchListDO(Map<String, Object> map) throws Exception;

}
