package com.yedam.review.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.review.mapper.ReviewMapper;
import com.yedam.review.vo.ReviewVO;

public class ReviewServiceImpl implements ReviewService {
	SqlSession session = DataSource.getInstance().openSession(true);
	ReviewMapper mapper = session.getMapper(ReviewMapper.class);
	
	@Override
	public List<ReviewVO> getReview(int bid, int nowPage) {
		return mapper.getReview(bid, nowPage);
	}
	@Override
	public List<ReviewVO> getReviewTotal(int bid) {
		return mapper.getReviewTotal(bid);
	}
	@Override
	public int addReview(ReviewVO vo) {
		return mapper.addReview(vo);
	}
	@Override
	public int deleteReview(String delNum) {
		return mapper.deleteReview(delNum);
	}
}