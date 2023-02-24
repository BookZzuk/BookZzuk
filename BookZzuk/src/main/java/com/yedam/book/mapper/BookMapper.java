package com.yedam.book.mapper;

import java.util.List;

import com.yedam.book.vo.BookVO;

public interface BookMapper {
	
	public List<BookVO>getBookList(String keyword,String SortmMod);

	public List<BookVO> getLikeList(String uid);
	
}
