package com.yedam.qna.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;
import com.yedam.qna.vo.QnaVO;

public class QnaAddProcessControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");

		String title = req.getParameter("title");
		String userId = req.getParameter("userId");
		String contents = req.getParameter("contents");

		QnaVO vo = new QnaVO();

		vo.setTitle(title);
		vo.setUserId(userId);
		vo.setContents(contents);

		QnaService service = new QnaServiceImpl();

		service.addQna(vo);

		req.setAttribute("qnaList", service.qnaList(id));

		return "qna/qnaList.tiles";
	}

}
