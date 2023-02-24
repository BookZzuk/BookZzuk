package com.yedam.like.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.yedam.book.vo.BookVO;

public interface LikeMapper {

	public List<BookVO> getLikeList(String uid);

	public int delLike(@Param("uid") String uid, @Param("itemId") String itemId);
}
