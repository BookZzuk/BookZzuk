package com.yedam.member.vo;

import lombok.Data;

@Data
public class MemberVO {

	private String userId; //소문자
	private String userPw;
	private String name;
	private String addr;
	private String email;
	private String phone;
	private int age;
	private String grade;
}
