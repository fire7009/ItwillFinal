package com.js.pjt.mapper;

import java.util.List;

import com.js.pjt.vo.ProductVO;

public interface ProductMapper {
<<<<<<< HEAD
	public int insertProduct(ProductVO product);
	public ProductVO selectProductVO(int prod_No);
	public List<ProductVO> selectListProduct();
	public int updateProduct(String prod_detl);
	public int deleteProduct(int prodNo);
=======
	List<ProductVO> selectProductList();
>>>>>>> branch 'master' of https://github.com/fire7009/ItwillFinal
}
