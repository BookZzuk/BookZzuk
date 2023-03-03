package com.yedam.qna.mapper;

import java.util.List;

import com.yedam.common.PagingVO;
import com.yedam.qna.vo.QnaVO;

public interface QnaMapper {
	public List<QnaVO> qnaList(String id); //1:1문의 조회
	public QnaVO getQna(int articleNum); //1:1문의 상세조회
	public int addQna(QnaVO qna); //문의글 작성
	public int delQna(int articleNum); //문의글 삭제
	public List<QnaVO> qnaAllList(); //1:1문의 전체조회(관리자)
	public int countQnaAll();
	public List<QnaVO> selectQnaAll(PagingVO vo);
	//테스트
	public int countQnaAllCon(String con);
	public List<QnaVO> selectQnaAllCon(PagingVO vo);
}
