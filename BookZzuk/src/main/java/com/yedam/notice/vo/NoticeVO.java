package com.yedam.notice.vo;

import java.util.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private int noticeNum;
	private String title;
	private String userId;
	private Date writeDate;
	private String noticeSubject;
	
}
