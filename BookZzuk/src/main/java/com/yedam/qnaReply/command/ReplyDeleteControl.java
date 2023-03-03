package com.yedam.qnaReply.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.qna.service.QnaService;
import com.yedam.qna.service.QnaServiceImpl;
import com.yedam.qnaReply.service.QnaReplyService;
import com.yedam.qnaReply.service.QnaReplyServiceImpl;

public class ReplyDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String replyNum = req.getParameter("replyNum");
		String articleNum = req.getParameter("articleNum");

		QnaReplyService service = new QnaReplyServiceImpl();
		int r=service.delReply(Integer.parseInt(replyNum));

		QnaService QnaService = new QnaServiceImpl();
		req.setAttribute("articeDetail", QnaService.getQna(Integer.parseInt(articleNum)));
		
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	

		//return "admin/qnaAllListDetail.tiles";
	}

}
