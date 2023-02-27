package com.yedam.cart.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.vo.CartVO;

public interface CartMapper {

	public int cartAdd(CartVO vo);

	public List<BookVO> getCartList(String uid);

	public int addCnt(@Param("uid") String uid, @Param("itemId") String itemId, @Param("itemCnt") String itemCnt);

	public int delCart(@Param("uid") String uid, @Param("itemId") String itemId);
	
}
