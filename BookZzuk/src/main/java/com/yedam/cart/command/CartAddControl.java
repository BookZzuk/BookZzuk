package com.yedam.cart.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.cart.service.CartService;
import com.yedam.cart.service.CartServiceImpl;
import com.yedam.cart.vo.CartVO;
import com.yedam.common.Command;

public class CartAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		userId = "admin"; // 임시로 지정
		String[] itemArr = req.getParameter("itemId").split(",");
		CartService service = new CartServiceImpl();
		
		int r = 0;
		for(int i = 0; i < itemArr.length; i++) {
			String itemId = itemArr[i];
			
			CartVO vo = new CartVO();
			vo.setItemId(Integer.parseInt(itemId));
			vo.setUserId(userId);
			System.out.println("vo : " + vo);
			
			r += service.cartAdd(vo);
		}
		if( r > 0 ) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	}

}
