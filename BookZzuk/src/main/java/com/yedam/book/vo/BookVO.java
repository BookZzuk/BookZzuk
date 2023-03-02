package com.yedam.book.vo;
import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	private int itemId;
	private String title;
	private String author;
	private String pubDate;
	private String description;
	private String isbn;
	private int salePrice;
	private int stdPrice;
	private String cover;
	private String category;
	private String publisher;
	private String adult;
	private double avgGrade;
	private int itemCnt;
}
