package com.yedam.notice.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.common.DataSource;
import com.yedam.common.PagingVO;
import com.yedam.notice.mapper.NoticeMapper;
import com.yedam.notice.vo.NoticeVO;

public class NoticeServiceImpl implements NoticeService {
	SqlSession session = DataSource.getInstance().openSession(true);
	NoticeMapper mapper = session.getMapper(NoticeMapper.class);
	@Override
	public List<NoticeVO> noticeList() {
		return mapper.noticeList();
	}
	@Override
	public NoticeVO getNotice(int noticeNum) {
		return mapper.getNotice(noticeNum);
	}
	@Override
	public int countNotice() {
		return mapper.countNotice();
	}
	@Override
	public List<NoticeVO> selectNotice(PagingVO vo) {
		return mapper.selectNotice(vo);
	}
	
	

	
	
}