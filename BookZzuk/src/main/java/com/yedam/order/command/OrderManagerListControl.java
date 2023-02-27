package com.yedam.order.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.order.service.OrderService;
import com.yedam.order.service.OrderServiceImpl;

public class OrderManagerListControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		OrderService service = new OrderServiceImpl();
		service.getAllOrder();
		return "order/orderManagerList.tiles";
	}

}
