package com.yedam.book.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.book.vo.BookVO;
import com.yedam.common.DataSource;

public class BookServiceImpl implements BookService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
	@Override
	public List<BookVO> bookList(String keyword, String sortMod) {
		// TODO Auto-generated method stub
		return mapper.getBookList(keyword, sortMod);
	}
	@Override
	public BookVO getBook(int item_id) {
		// TODO Auto-generated method stub
		return mapper.getBook(item_id);
	}
	@Override
	public int addBook(BookVO Book) {
		// TODO Auto-generated method stub
		return mapper.addBook(Book);
	}
	@Override
	public int modBook(BookVO Book) {
		// TODO Auto-generated method stub
		return mapper.modBook(book);
	}
	@Override
	public int remBook(int item_id) {
		// TODO Auto-generated method stub
		return mapper.remBook(item_id);
	}
	@Override
	public List<BookVO> getBookList() {
		// TODO Auto-generated method stub
		return mapper.getAllList();
	}
	
}