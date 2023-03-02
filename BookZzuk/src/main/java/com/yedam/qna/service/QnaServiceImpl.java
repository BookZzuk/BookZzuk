package com.yedam.qna.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.qna.mapper.QnaMapper;
import com.yedam.common.DataSource;
import com.yedam.common.PagingVO;
import com.yedam.qna.vo.QnaVO;

public class QnaServiceImpl implements QnaService {
	SqlSession session = DataSource.getInstance().openSession(true);
	QnaMapper mapper = session.getMapper(QnaMapper.class);
	@Override
	public List<QnaVO> qnaList(String id) {
		return mapper.qnaList(id);
	}
	@Override
	public QnaVO getQna(int articleNum) {
		return mapper.getQna(articleNum);
	}
	@Override
	public int addQna(QnaVO qna) {
		return mapper.addQna(qna);
	}
	@Override
	public int delQna(int articleNum) {
		return mapper.delQna(articleNum);
	}
	@Override
	public List<QnaVO> qnaAllList() {
		return mapper.qnaAllList();
	}
	@Override
	public int countQnaAll() {
		return mapper.countQnaAll();
	}
	@Override
	public List<QnaVO> selectQnaAll(PagingVO vo) {
		return mapper.selectQnaAll(vo);
	}

	
	
}