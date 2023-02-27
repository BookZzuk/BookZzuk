package com.yedam.order.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.service.CartService;
import com.yedam.cart.service.CartServiceImpl;
import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;

public class OrderFormControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("uid");
		uid = "admin"; // 임시로 가정
		
		CartService cartService = new CartServiceImpl();
		List<BookVO> list = cartService.getCartList(uid);
		for(BookVO temp : list) {
			int bookId = temp.getItemId();
			String itemId = req.getParameter(bookId+"Id");
			String itemCnt = req.getParameter(bookId+"Cnt");
			cartService.addCnt(uid, itemId, itemCnt);
		}
		
		MemberService memberService = new MemberServiceImpl();
		req.setAttribute("user", memberService.getMember(uid));
		List<BookVO> cartList = cartService.getCartList(uid);
		req.setAttribute("list", cartList);
		
		return "order/orderForm.tiles";
		
	}

}
