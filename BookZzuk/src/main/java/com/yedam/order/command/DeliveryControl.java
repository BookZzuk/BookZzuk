package com.yedam.order.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.order.service.OrderService;
import com.yedam.order.service.OrderServiceImpl;
import com.yedam.order.vo.OrderVO;

public class DeliveryControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		HttpSession session = req.getSession();
//		String id = (String) session.getAttribute("id");
		
		OrderService service = new OrderServiceImpl();
		req.setAttribute("orderList", service.orderList("abcd"));
		
		
		
		return "member/delivery.tiles";
	}

}
