package com.yedam.qna.service;

import java.util.List;

import com.yedam.qna.vo.QnaVO;

public interface QnaService {
	public List<QnaVO> qnaList(String id); //1:1문의 조회
	public QnaVO getQna(int articleNum); //1:1문의 상세조회
	public int addQna(QnaVO qna); //문의글 작성
	public int delQna(int articleNum); //문의글 삭제
}
