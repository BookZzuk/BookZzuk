package com.yedam.book.service;

import java.util.List;

import com.yedam.book.vo.BookVO;

public interface BookService {
	
	public List<BookVO> bookList(String keyword,String sortMod);//책 리스트 조회
	public BookVO getBook(int item_id);//책 상세조회
	public int addBook(BookVO Book);//책 등록
	public int modBook(BookVO Book);//책정보 수정.
	public int remBook(int item_id);//책 삭제.
	public List<BookVO> getBookList();//책 전체 조회
}
