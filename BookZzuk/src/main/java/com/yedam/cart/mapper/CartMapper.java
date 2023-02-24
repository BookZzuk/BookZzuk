package com.yedam.cart.mapper;

import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.vo.CartVO;

public interface CartMapper {

	public int cartAdd(CartVO vo);

	public List<BookVO> getCartList(String uid);
	
}
