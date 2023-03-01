package com.yedam.book.service;

import java.util.HashMap;
import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.review.vo.ReviewVO;

public interface BookService {
	
	public List<BookVO> getBookList(HashMap<String, Object> map);//책 리스트 조회
	public BookVO getBook(int item_id);//책 상세조회
	public int addBook(BookVO Book);//책 등록
	public int modBook(BookVO Book);//책정보 수정.
	public int remBook(int item_id);//책 삭제.
	public List<BookVO> getRelatedBook(int bid); //연관 책리스트 조회
	public List<BookVO> getAllBook();
	public int modifyRating(int itemId);
	public List<BookVO> recomanList(String uid);
	public List<BookVO> muchSellList();
	public List<BookVO> newBookList();
	public List<ReviewVO> getReview();
}
