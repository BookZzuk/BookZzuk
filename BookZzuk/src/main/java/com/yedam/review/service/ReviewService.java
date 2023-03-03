package com.yedam.review.service;

import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.review.vo.ReviewVO;

public interface ReviewService {

	public List<ReviewVO> getReview(int bid, int nowPage);

	public List<ReviewVO> getReviewTotal(int bid);

	public int addReview(ReviewVO vo);

	public int deleteReview(String delNum);

}
