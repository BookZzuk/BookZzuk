package com.yedam.cart.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.cart.service.CartService;
import com.yedam.cart.service.CartServiceImpl;
import com.yedam.common.Command;

public class CartDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		//String uid = (String) session.getAttribute("uid");
		String uid = "admin"; // 임시로 가정
		String itemId = req.getParameter("itemId");
		
		CartService service = new CartServiceImpl();
		int r = service.delCart(uid, itemId);
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	}

}
