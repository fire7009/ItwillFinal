package com.js.pjt.service_serviceimp;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.NoticeVO;

public interface NoticeService {
	void addNotice(NoticeVO notice);
	void modifyNotice(NoticeVO notice);
	void removeNotice(int noticeNo);
	NoticeVO getNotice(int noticeNo);
	int getNoticeCount(Map<String, Object> map);
	List<NoticeVO> getNoticeList(Map<String, Object> map);
}
