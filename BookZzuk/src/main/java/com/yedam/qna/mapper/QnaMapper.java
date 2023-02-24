package com.yedam.qna.mapper;

import java.util.List;

import com.yedam.qna.vo.QnaVO;

public interface QnaMapper {
	public List<QnaVO> qnaList(String id); //1:1문의 조회
	public QnaVO getQna(int articleNum); //1:1문의 상세조회
}
