package com.yedam.order.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.order.service.OrderService;
import com.yedam.order.service.OrderServiceImpl;

public class DeliveryDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String orderNum = req.getParameter("orderNum");
		
		OrderService service = new OrderServiceImpl();
		req.setAttribute("orderDetailList", service.getOrder(Integer.parseInt(orderNum)));
		
		return "member/deliveryDetail.tiles";
	}

}
