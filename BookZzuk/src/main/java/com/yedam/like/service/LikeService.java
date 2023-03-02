package com.yedam.like.service;

import java.util.List;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.vo.CartVO;
import com.yedam.like.vo.LikeVO;

public interface LikeService {

	public List<BookVO> getLikeList(String uid);

	public int delLike(String uid, String itemId);

	public int likeAdd(LikeVO vo);
}
