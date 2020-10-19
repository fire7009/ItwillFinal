package com.js.pjt.dao_daoimp;

import java.util.List;


import com.js.pjt.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO product)throws Exception;
	public ProductVO selectProductVO(int prodNo)throws Exception;
	public List<ProductVO> selectListProduct()throws Exception;
	public int updateProduct(String prodDetl)throws Exception;
	public int deleteProduct(int prodNo);
}
