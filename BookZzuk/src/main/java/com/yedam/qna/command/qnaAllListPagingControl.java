package com.yedam.qna.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.common.PagingVO;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;

public class qnaAllListPagingControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		QnaService service = new QnaServiceImpl();
		String nowPage = req.getParameter("nowPage");
		String cntPerPage = req.getParameter("cntPerPage");
		String con = req.getParameter("con");
		
		int total = service.countQnaAll();

		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		PagingVO vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		req.setAttribute("paging", vo);
		req.setAttribute("viewAll", service.selectQnaAll(vo));
		req.setAttribute("con", con);
		
		return "admin/qnaAllList.tiles";
	}

}
