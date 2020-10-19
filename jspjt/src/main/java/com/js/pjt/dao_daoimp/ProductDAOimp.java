package com.js.pjt.dao_daoimp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.OrderMapper;
import com.js.pjt.mapper.ProductMapper;
import com.js.pjt.vo.OrderVO;
import com.js.pjt.vo.ProductVO;

@Repository
public class ProductDAOimp implements ProductDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<ProductVO> selectProductList() {
		return sqlSession.getMapper(ProductMapper.class).selectProductList();
	}
	
}
