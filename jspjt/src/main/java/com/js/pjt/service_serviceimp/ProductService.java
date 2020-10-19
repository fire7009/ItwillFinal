package com.js.pjt.service_serviceimp;

import java.util.List;

import com.js.pjt.vo.ProductVO;

<<<<<<< HEAD


public interface ProductService {
	public void insertProduct(ProductVO product)throws Exception;
	public ProductVO selectProduct(int prod_no)throws Exception;
	public List<ProductVO>selectListProduct()throws Exception;
	public void updateProduct(String prod_detl)throws Exception;
	public void deleteProduct(int prod_no)throws Exception;
=======
public interface ProductService {
	List<ProductVO> selectProductList();
>>>>>>> branch 'master' of https://github.com/fire7009/ItwillFinal
}
