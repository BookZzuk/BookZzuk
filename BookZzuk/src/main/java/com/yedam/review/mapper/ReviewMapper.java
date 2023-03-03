package com.yedam.review.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.review.vo.ReviewVO;

public interface ReviewMapper {

	public List<ReviewVO> getReview(@Param("bid") int bid, @Param("nowPage") int nowPage);
	public List<ReviewVO> getReviewTotal(int bid);
	public int addReview(ReviewVO vo);
	public int deleteReview(String delNum);
	
}
