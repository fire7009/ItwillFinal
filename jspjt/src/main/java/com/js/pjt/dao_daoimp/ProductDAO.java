package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.OrderVO;
import com.js.pjt.vo.ProductVO;

public interface ProductDAO {
	List<ProductVO> selectProductList();
}
