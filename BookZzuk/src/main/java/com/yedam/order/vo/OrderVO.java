package com.yedam.order.vo;

import lombok.Data;

@Data
public class OrderVO {
	private String orderNum; 
	private String userId ;
	private String orderDate;
	private String orderAddr;
	private String orderPhone;
	private int totalPrice;
	private String request;
	private String progress;
	private String payNumber;
	
}
