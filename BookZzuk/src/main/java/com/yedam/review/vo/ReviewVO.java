package com.yedam.review.vo;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	
	private int reviewNum;
	private int itemId;
	private String userId;
	private String orderNum;
	private Date reviewDate;
	private int rating;
	private String reviewSubject;
	private String title;
	private String cover;
}
