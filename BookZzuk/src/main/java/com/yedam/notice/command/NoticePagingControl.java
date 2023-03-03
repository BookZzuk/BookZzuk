package com.yedam.notice.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.common.PagingVO;
import com.yedam.notice.service.NoticeService;
import com.yedam.notice.service.NoticeServiceImpl;

public class NoticePagingControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		NoticeService service = new NoticeServiceImpl();
		String nowPage = req.getParameter("nowPage");
		String cntPerPage = req.getParameter("cntPerPage");

		int total = service.countNotice();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "9";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "9";
		}

		PagingVO vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		req.setAttribute("paging", vo);
		req.setAttribute("viewAll", service.selectNotice(vo));

		return "notice/noticePaging.tiles";
	}

}
