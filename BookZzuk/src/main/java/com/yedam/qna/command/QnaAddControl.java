package com.yedam.qna.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;

public class QnaAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		HttpSession session = req.getSession();
//		String id = (String) session.getAttribute("id")
		
		
		req.setAttribute("id", "abcd");
		
		return "qna/qnaAdd.tiles";
	}

}
