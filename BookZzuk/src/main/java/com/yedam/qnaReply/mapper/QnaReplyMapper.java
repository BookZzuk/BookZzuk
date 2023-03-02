package com.yedam.qnaReply.mapper;

import java.util.List;

import com.yedam.common.PagingVO;
import com.yedam.notice.vo.NoticeVO;
import com.yedam.qna.vo.QnaVO;
import com.yedam.qnaReply.vo.QnaReplyVO;

public interface QnaReplyMapper {
	public QnaReplyVO getQnaReply(int articleNum); //문의글 답변
	public List<QnaReplyVO> qnaReplyList(String id); //문의글 답변 전체조회
	public int addReply(QnaReplyVO qnaReply); //문의글 작성
	public int delReply(int replyNum); //문의글 삭제
}
