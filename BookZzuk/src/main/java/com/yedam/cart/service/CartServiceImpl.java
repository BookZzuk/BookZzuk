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

	@Override
	public int addCnt(String uid, String itemId, String itemCnt) {
		return mapper.addCnt(uid, itemId, itemCnt);
	}

	@Override
	public int delCart(String uid, String itemId) {
		return mapper.delCart(uid, itemId);
	}

	@Override
	public int allDelete(String uid) {
		return mapper.allDelete(uid);
	}
}