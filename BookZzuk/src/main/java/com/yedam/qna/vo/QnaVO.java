package com.yedam.qna.vo;

import java.util.Date;

import lombok.Data;

@Data
public class QnaVO {
	private int articleNum;
	private String title;
	private String userId;
	private Date writeDate;
	private String contents;
	private String articlePw;
	private int replyNum;
	
	
	
	
	
}
