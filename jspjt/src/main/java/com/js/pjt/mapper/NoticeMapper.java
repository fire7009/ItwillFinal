package com.js.pjt.mapper;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.NoticeVO;

public interface NoticeMapper {
	int insertNotice(NoticeVO notice);
	int updateNotice(NoticeVO notice);
	int deleteNotice(int noticeNo);
	NoticeVO selectNotice(int noticeNo);
	int selectNoticeCount(Map<String, Object> map);
	List<NoticeVO> selectNoticeList(Map<String, Object> map);
}
