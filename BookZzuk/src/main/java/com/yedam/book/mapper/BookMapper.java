package com.yedam.book.mapper;

import java.util.HashMap;
import java.util.List;

import com.yedam.book.vo.BookVO;

public interface BookMapper {

	public List<BookVO>getBookList(HashMap<String, Object> map);

	public List<BookVO> getLikeList(String uid);
	public List<BookVO> getRelatedBook(int bid);
	public int remBook(int item_id);
	public BookVO getBook(int item_id);
	public int modBook(BookVO book);
}
