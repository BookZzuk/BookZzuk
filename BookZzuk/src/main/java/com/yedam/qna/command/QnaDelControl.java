package com.yedam.qna.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;

public class QnaDelControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String articleNum = req.getParameter("articleNum");

		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");

		QnaService service = new QnaServiceImpl();
		int r = service.delQna(Integer.parseInt(articleNum));
		req.setAttribute("qnaList", service.qnaList(id));
		
	
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}

		//return "qna/qnaList.tiles";

	}

}
