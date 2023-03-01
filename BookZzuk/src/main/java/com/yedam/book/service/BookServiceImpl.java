package com.yedam.book.service;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.book.vo.BookVO;
import com.yedam.common.DataSource;
import com.yedam.review.vo.ReviewVO;

public class BookServiceImpl implements BookService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
	@Override
	public List<BookVO> getBookList(HashMap<String, Object> map) {
		// TODO Auto-generated method stub
		return mapper.getBookList(map);
	}
	@Override
	public BookVO getBook(int item_id) {
		// TODO Auto-generated method stub
		return mapper.getBook(item_id);
	}
	@Override
	public int addBook(BookVO Book) {
		// TODO Auto-generated method stub
		return mapper.modBook(Book);
	}
	@Override
	public int modBook(BookVO Book) {
		// TODO Auto-generated method stub
		return mapper.modBook(Book);
	}
	@Override
	public int remBook(int item_id) {
		// TODO Auto-generated method stub
		return mapper.remBook(item_id);
	}
	@Override
	public List<BookVO> getRelatedBook(int bid) {
		// TODO Auto-generated method stub
		return mapper.getRelatedBook(bid);
	}
	@Override
	public List<BookVO> getAllBook() {
		return mapper.getAllBook();
	}
	@Override
	public int modifyRating(int itemId) {
		return mapper.modifyRating(itemId);
	}
	@Override
	public List<BookVO> recomanList(String uid) {
		return mapper.recomanList(uid);
	}
	@Override
	public List<BookVO> muchSellList() {
		return mapper.muchSellList();
	}
	@Override
	public List<BookVO> newBookList() {
		return mapper.newBookList();
	}
	@Override
	public List<ReviewVO> getReview() {
		return mapper.getReview();
	}
	
}