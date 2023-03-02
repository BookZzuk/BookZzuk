package com.yedam.like.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.vo.BookVO;
import com.yedam.common.Command;
import com.yedam.like.service.LikeService;
import com.yedam.like.service.LikeServiceImpl;
import com.yedam.like.vo.LikeVO;

public class LikeBookAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");
		
		String[] itemArr = req.getParameter("itemId").split(",");
		LikeService service = new LikeServiceImpl();
		

		int r = 0;
		int duplication = 0;
		Outter: for(int i = 0; i < itemArr.length; i++) {
			List<BookVO> list = service.getLikeList(uid);
			String itemId = itemArr[i];
			
			for(int j = 0; j < list.size(); j++) {
				if(Integer.parseInt(itemId) == list.get(j).getItemId()) {
					duplication ++;
					continue Outter;
				}
			}
			
			LikeVO vo = new LikeVO();
			vo.setItemId(Integer.parseInt(itemId));
			System.out.println(itemId);
			vo.setUserId(uid);
			
			r += service.likeAdd(vo);
		}
		
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			if( duplication != 0) {
				return "{\"duplication\":\"duplication\"}" + ".json";
			} else {
				return "{\"retCode\":\"Fail\"}" + ".json";
			}
		}
	}

}
