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
import com.yedam.qnaReply.vo.QnaReplyVO;

public class ReplyAddProcessControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String articleNum = req.getParameter("articleNum");
		String userId = req.getParameter("userId");
		String contents = req.getParameter("contents");

		QnaReplyVO vo = new QnaReplyVO();

		vo.setArticleNum(Integer.parseInt(articleNum));
		vo.setUserId(userId);
		vo.setContents(contents);

		QnaReplyService service = new QnaReplyServiceImpl();
		service.addReply(vo);

		QnaService qnaService = new QnaServiceImpl();
		req.setAttribute("articeDetail", qnaService.getQna(Integer.parseInt(articleNum)));

		QnaReplyService replyService = new QnaReplyServiceImpl();
		req.setAttribute("qnaReplyDetail", replyService.getQnaReply(Integer.parseInt(articleNum)));

		return "admin/qnaAllListDetail.tiles";
	}

}
