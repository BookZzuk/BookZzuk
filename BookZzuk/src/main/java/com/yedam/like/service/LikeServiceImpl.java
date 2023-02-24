package com.yedam.like.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.vo.BookVO;
import com.yedam.common.DataSource;
import com.yedam.like.mapper.LikeMapper;

public class LikeServiceImpl implements LikeService {
	SqlSession session = DataSource.getInstance().openSession(true);
	LikeMapper mapper = session.getMapper(LikeMapper.class);
	
	@Override
	public List<BookVO> getLikeList(String uid) {
		return mapper.getLikeList(uid);
	}

	@Override
	public int delLike(String uid, String itemId) {
		return mapper.delLike(uid, itemId);
	}
}