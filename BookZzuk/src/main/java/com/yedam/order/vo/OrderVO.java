package com.yedam.order.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {

	private String orderNum;
	private String userId ;
	private Date orderDate;
	private String orderAddr;
	private String orderPhone;
	private int totalPrice;
	private String request;
	private String progress;
	private String payNumber;
	private String orderName;

	
}
