package com.yedam.notice.service;

import java.util.List;

import com.yedam.notice.vo.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> noticeList();
	public NoticeVO getNotice(String noticeNum);
	public Object getBook(int bid);
	

}
