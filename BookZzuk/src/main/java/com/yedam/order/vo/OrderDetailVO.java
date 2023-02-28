package com.yedam.order.vo;

import lombok.Data;

@Data
public class OrderDetailVO {
	private int detailNum;
	private String orderNum;
	private int itemId ;
	private int itemCnt;
	private int price;
	private String title;
	private String author;
	private String publisher;
	private int totalPrice;
	private String cover;
}
