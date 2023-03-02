package com.yedam.qnaReply.service;

import java.util.List;

import com.yedam.common.PagingVO;
import com.yedam.qna.vo.QnaVO;
import com.yedam.qnaReply.vo.QnaReplyVO;

public interface QnaReplyService {
	public QnaReplyVO getQnaReply(int articleNum); //문의글 답변
	public List<QnaReplyVO> qnaReplyList(String id); //문의글 답변 전체조회
	public int addReply(QnaReplyVO qnaReply); //문의글 작성
	public int delReply(int replyNum); //문의글 삭제
}
