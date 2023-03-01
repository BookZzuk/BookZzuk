package com.yedam.common;

import java.util.List;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.book.vo.BookVO;

public class BillInfoJob implements Job {

	public void execute(JobExecutionContext context) throws JobExecutionException {
		BookService service = new BookServiceImpl();
		List<BookVO> list = service.getAllBook();
		
		for(BookVO temp : list) {
			service.modifyRating(temp.getItemId());
		}
	}
}