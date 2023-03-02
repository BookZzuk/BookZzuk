package com.yedam.cart.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.cart.service.CartService;
import com.yedam.cart.service.CartServiceImpl;
import com.yedam.common.Command;

public class CartControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");
		
		CartService service = new CartServiceImpl();
		req.setAttribute("list", service.getCartList(uid));
		
		return "cart/cart.tiles";
	}

}
