package com.yedam.member.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.yedam.book.mapper.BookMapper;
import com.yedam.common.DataSource;
import com.yedam.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	SqlSession session = DataSource.getInstance().openSession(true);
	BookMapper mapper = session.getMapper(BookMapper.class);
	@Override
	public MemberVO login(MemberVO member) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int addMember(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<MemberVO> memberList() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public MemberVO getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int modifyMember(MemberVO member) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int removeMember(String mid) {
		// TODO Auto-generated method stub
		return 0;
	}
}

