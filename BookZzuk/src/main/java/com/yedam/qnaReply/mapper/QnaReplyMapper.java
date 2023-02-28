package com.yedam.qnaReply.mapper;

import java.util.List;

import com.yedam.qna.vo.QnaVO;
import com.yedam.qnaReply.vo.QnaReplyVO;

public interface QnaReplyMapper {
	public QnaReplyVO getQnaReply(int articleNum); //문의글 답변
	public List<QnaReplyVO> qnaReplyList(String id); //문의글 답변 전체조회
	
}
