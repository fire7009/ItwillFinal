package com.js.pjt.dao_daoimp;

import java.util.List;

<<<<<<< HEAD

import com.js.pjt.vo.ProductVO;

public interface ProductDAO {
	public int insertProduct(ProductVO product)throws Exception;
	public ProductVO selectProductVO(int prodNo)throws Exception;
	public List<ProductVO> selectListProduct()throws Exception;
	public int updateProduct(String prodDetl)throws Exception;
	public int deleteProduct(int prodNo);
=======
import com.js.pjt.vo.OrderVO;
import com.js.pjt.vo.ProductVO;

public interface ProductDAO {
	List<ProductVO> selectProductList();
>>>>>>> branch 'master' of https://github.com/fire7009/ItwillFinal
}
