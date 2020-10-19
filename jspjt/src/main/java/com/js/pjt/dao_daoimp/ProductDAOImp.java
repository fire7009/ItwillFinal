package com.js.pjt.dao_daoimp;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.ProductMapper;
import com.js.pjt.vo.ProductVO;

@Repository
public class ProductDAOImp implements ProductDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public int insertProduct(ProductVO product) throws Exception {
		return sqlSession.getMapper(ProductMapper.class).insertProduct(product);
	}

	@Override
	public ProductVO selectProductVO(int prodNo) throws Exception {
		return sqlSession.getMapper(ProductMapper.class).selectProductVO(prodNo);
	}

	@Override
	public List<ProductVO> selectListProduct() throws Exception {
		return sqlSession.getMapper(ProductMapper.class).selectListProduct();
	}

	@Override
	public int updateProduct(String prodDetl) {
		return sqlSession.getMapper(ProductMapper.class).updateProduct(prodDetl);
	}

	@Override
	public int deleteProduct(int prodNo) {
		return sqlSession.getMapper(ProductMapper.class).deleteProduct(prodNo);
	}

}
