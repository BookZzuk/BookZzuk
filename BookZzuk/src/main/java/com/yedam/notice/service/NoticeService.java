package com.yedam.notice.service;

import java.util.List;

import com.yedam.common.PagingVO;
import com.yedam.notice.vo.NoticeVO;

public interface NoticeService {
	public List<NoticeVO> noticeList();
	public NoticeVO getNotice(int noticeNum);
	public int countNotice();
	public List<NoticeVO> selectNotice(PagingVO vo);
	

}
