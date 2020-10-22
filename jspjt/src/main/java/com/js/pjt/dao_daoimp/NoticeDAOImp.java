package com.js.pjt.dao_daoimp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.NoticeMapper;
import com.js.pjt.vo.NoticeVO;

@Repository
public class NoticeDAOImp implements NoticeDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertNotice(NoticeVO notice) {
		return sqlSession.getMapper(NoticeMapper.class).insertNotice(notice);
	}

	@Override
	public int updateNotice(NoticeVO notice) {
		return sqlSession.getMapper(NoticeMapper.class).updateNotice(notice);
	}

	@Override
	public int deleteNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).deleteNotice(noticeNo);
	}

	@Override
	public NoticeVO selectNotice(int noticeNo) {
		return sqlSession.getMapper(NoticeMapper.class).selectNotice(noticeNo);
	}
	
	@Override
	public int selectNoticeCount(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeCount(map);
	}

	@Override
	public List<NoticeVO> selectNoticeList(Map<String, Object> map) {
		return sqlSession.getMapper(NoticeMapper.class).selectNoticeList(map);
	}
}
