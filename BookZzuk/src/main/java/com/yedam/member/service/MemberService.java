package com.yedam.member.service;

import com.yedam.member.vo.MemberVO;


public interface MemberService {
	public MemberVO login(MemberVO member);
	public int addMember(MemberVO member);
	public List<MemberVO> memberList();
	public MemberVO getMember(String id); //회원정보 조회
	public int modifyMember(MemberVO member);  //회원정보 수정
	public int removeMember(String mid);
}
