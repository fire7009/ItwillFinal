package com.js.pjt.service_serviceimp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.NoticeDAO;
import com.js.pjt.vo.NoticeVO;

@Service
public class NoticeServiceimp implements NoticeService {
	@Autowired
	private NoticeDAO noticeDAO;
	
	@Transactional
	@Override
	public void addNotice(NoticeVO notice) {
		noticeDAO.insertNotice(notice);
		
	}
	
	@Transactional
	@Override
	public void modifyNotice(NoticeVO notice) {
		noticeDAO.updateNotice(notice);
		
	}

	@Transactional
	@Override
	public void removeNotice(int noticeNo) {
		noticeDAO.deleteNotice(noticeNo);
		
	}

	@Override
	public NoticeVO getNotice(int noticeNo) {
		return noticeDAO.selectNotice(noticeNo);
	}

	@Override
	public int getNoticeCount(Map<String, Object> map) {
		return noticeDAO.selectNoticeCount(map);
	}
	
	@Override
	public List<NoticeVO> getNoticeList(Map<String, Object> map) {
		return noticeDAO.selectNoticeList(map);
	}
}
