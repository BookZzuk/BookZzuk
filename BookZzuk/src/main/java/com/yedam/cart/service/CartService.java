package com.yedam.cart.service;

import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.vo.CartVO;

public interface CartService {

	public int cartAdd(CartVO vo);

	public List<BookVO> getCartList(String uid);

	public int addCnt(String uid, String itemId, String itemCnt);

	public int delCart(String uid, String itemId);

	public int allDelete(String uid);
	
}
