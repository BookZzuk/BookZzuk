package com.yedam.qna.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;
import com.yedam.qnaReply.service.QnaReplyService;
import com.yedam.qnaReply.service.QnaReplyServiceImpl;

public class qnaAllDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String articleNum = req.getParameter("articleNum");

		QnaService service = new QnaServiceImpl();
		req.setAttribute("articeDetail", service.getQna(Integer.parseInt(articleNum)));

		QnaReplyService replyService = new QnaReplyServiceImpl();
		req.setAttribute("qnaReplyDetail", replyService.getQnaReply(Integer.parseInt(articleNum)));

		return "admin/qnaAllListDetail.tiles";
	}

}
