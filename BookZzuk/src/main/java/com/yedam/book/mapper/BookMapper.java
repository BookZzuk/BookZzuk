package com.yedam.book.mapper;

import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.order.vo.OrderVO;

public interface BookMapper {
	
	public List<BookVO>getBookList(String keyword,String SortmMod);

	public List<BookVO> getLikeList(String uid);

	public List<OrderVO> getAllOrder();
	
}
