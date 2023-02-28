package com.yedam.order.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.order.service.OrderService;
import com.yedam.order.service.OrderServiceImpl;
import com.yedam.order.vo.OrderDetailVO;
import com.yedam.order.vo.OrderVO;

public class OrderAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String userId = (String) session.getAttribute("uid");
		userId = "admin";
		String orderNum = req.getParameter("orderNum");
		String orderAddr = req.getParameter("orderAddr");
		String orderPhone = req.getParameter("orderPhone");
		int totalPrice = Integer.parseInt(req.getParameter("totalPrice"));
		String request = req.getParameter("request");
		String payNumber = req.getParameter("payNumber");
		String orderName = req.getParameter("orderName");
		
		OrderService service = new OrderServiceImpl();
		OrderVO vo = new OrderVO();
		
		vo.setOrderNum(orderNum);
		vo.setUserId(userId);
		vo.setOrderAddr(orderAddr);
		vo.setOrderPhone(orderPhone);
		vo.setTotalPrice(totalPrice);
		vo.setRequest(request);
		vo.setPayNumber(payNumber);
		vo.setOrderName(orderName);
		
		int r = service.addOrder(vo);
		
		String[] itemId    = req.getParameter("itemId").split(",");
		String[] itemCnt   = req.getParameter("itemQty").split(",");
		String[] itemPrice = req.getParameter("itemPrice").split(",");
		int s = 0;
		for(int i = 0; i < itemId.length; i++) {
			OrderDetailVO detailVo = new OrderDetailVO();
			
			detailVo.setOrderNum(orderNum);
			detailVo.setItemId(Integer.parseInt(itemId[i]));
			detailVo.setItemCnt(Integer.parseInt(itemCnt[i]));
			detailVo.setPrice(Integer.parseInt(itemPrice[i]));
			
			s += service.addDetail(detailVo);
		}
		
		if( r > 0 && s > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	}
}