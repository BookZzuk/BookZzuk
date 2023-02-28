package com.yedam.qnaReply.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.qnaReply.service.QnaReplyService;
import com.yedam.qnaReply.service.QnaReplyServiceImpl;

public class ReplyListControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		return null;
	}

}
