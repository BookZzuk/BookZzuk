package com.yedam.like.service;

import java.util.List;

import com.yedam.book.vo.BookVO;

public interface LikeService {

	public List<BookVO> getLikeList(String uid);

	public int delLike(String uid, String itemId);
}
