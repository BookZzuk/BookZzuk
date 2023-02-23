package com.yedam.like.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.book.vo.BookVO;
import com.yedam.common.DataSource;

public class LikeServiceImpl implements LikeService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
	
	@Override
	public List<BookVO> getLikeList(String uid) {
		return mapper.getLikeList(uid);
	}
}