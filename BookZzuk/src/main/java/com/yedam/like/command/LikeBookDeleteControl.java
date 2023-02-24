package com.yedam.like.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.like.service.LikeService;
import com.yedam.like.service.LikeServiceImpl;

public class LikeBookDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		//String uid = (String) session.getAttribute("uid");
		String uid = "admin"; // 임시로 가정
		String itemId = req.getParameter("itemId");
		
		LikeService service = new LikeServiceImpl();
		int r = service.delLike(uid, itemId);
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	}

}
