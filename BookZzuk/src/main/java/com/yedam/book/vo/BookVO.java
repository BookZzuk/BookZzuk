package com.yedam.book.vo;

import java.util.Date;

import lombok.Data;

@Data
public class BookVO {
	public int itemId;
	public String title;
	public String author;
	public Date pubDate;
	public String description;
	public String isbn;
	public int salePrice;
	public int stdPrice;
	public String cover;
	public String category;
	public String publisher;
	public String adult;
}
