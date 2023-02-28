package com.yedam.qnaReply.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.common.DataSource;
import com.yedam.qnaReply.mapper.QnaReplyMapper;
import com.yedam.qnaReply.vo.QnaReplyVO;

public class QnaReplyServiceImpl implements QnaReplyService {
	SqlSession session = DataSource.getInstance().openSession(true);
	QnaReplyMapper mapper = session.getMapper(QnaReplyMapper.class);
	@Override
	public QnaReplyVO getQnaReply(int articleNum) {
		return mapper.getQnaReply(articleNum);
	}
	@Override
	public List<QnaReplyVO> qnaReplyList(String id) {
		return mapper.qnaReplyList(id);
	}
}