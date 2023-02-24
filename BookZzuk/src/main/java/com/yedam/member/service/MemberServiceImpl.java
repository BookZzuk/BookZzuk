package com.yedam.member.service;

import org.apache.ibatis.session.SqlSession;

import com.yedam.member.mapper.MemberMapper;
import com.yedam.common.DataSource;
import com.yedam.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService {
	SqlSession session = DataSource.getInstance().openSession(true);
	MemberMapper mapper = session.getMapper(MemberMapper.class);
	
	@Override
	public MemberVO getMember(String id) {
		return mapper.getMember(id);
	}

	@Override
	public int updateMember(MemberVO member) {
		return mapper.updateMember(member);
	}
}