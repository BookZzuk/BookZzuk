package com.yedam.notice.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.notice.service.NoticeService;
import com.yedam.notice.service.NoticeServiceImpl;
import com.yedam.notice.vo.NoticeVO;

public class NoticeDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String noticeNum = req.getParameter("noticeNum");
		
		NoticeService service = new NoticeServiceImpl();
		req.setAttribute("noticeDetail", service.getNotice(Integer.parseInt(noticeNum)));
		
		
		return "notice/noticeDetail.tiles";
	}

}
