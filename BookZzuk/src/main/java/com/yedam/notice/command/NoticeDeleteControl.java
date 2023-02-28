package com.yedam.notice.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;

public class NoticeDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("utf-8");
		
		int nno = Integer.parseInt(req.getParameter("nno"));
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Notice notice = new Notice();
		notice.set
		// 클래스 겟터(getter) 셋터(setter)
		
		int result = new NoticeService().updateNotice(notice);
		
		if(result > 0) {
			req.getSession().setAttribute("msg", "게시글이 수정되었습니다.");
			req.sendRedirect(req.getContextPath() + "/notice/list");
		}else {
			req.setAttribute("msg", "게시글 수정이 실패하였습니다.");
			req.getRequestDispatcher("/WEB-INF/views/common/errorpage/jsp").forward(request, response);
		}
		
	


		return null;
	}

}
