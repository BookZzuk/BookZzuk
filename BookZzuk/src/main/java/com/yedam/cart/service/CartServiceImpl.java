package com.yedam.cart.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.mapper.CartMapper;
import com.yedam.cart.vo.CartVO;
import com.yedam.common.DataSource;

public class CartServiceImpl implements CartService {
	SqlSession session = DataSource.getInstance().openSession(true);
	CartMapper mapper = session.getMapper(CartMapper.class);
	
	@Override
	public int cartAdd(CartVO vo) {
		return mapper.cartAdd(vo);
	}

	@Override
	public List<BookVO> getCartList(String uid) {
		return mapper.getCartList(uid);
	}
}