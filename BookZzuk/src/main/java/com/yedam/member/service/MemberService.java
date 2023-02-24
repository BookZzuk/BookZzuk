package com.yedam.member.service;

import com.yedam.member.vo.MemberVO;

public interface MemberService {
	public MemberVO getMember(String id); //회원정보 조회
	public int updateMember(MemberVO member); //회원정보 수정
	
}
