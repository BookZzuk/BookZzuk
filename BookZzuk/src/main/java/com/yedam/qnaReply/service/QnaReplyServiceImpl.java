package com.yedam.qnaReply.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.common.DataSource;

public class QnaReplyServiceImpl implements QnaReplyService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
}