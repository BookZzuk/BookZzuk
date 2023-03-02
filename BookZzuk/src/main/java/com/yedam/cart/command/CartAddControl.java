package com.yedam.cart.command;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.vo.BookVO;
import com.yedam.cart.service.CartService;
import com.yedam.cart.service.CartServiceImpl;
import com.yedam.cart.vo.CartVO;
import com.yedam.common.Command;

public class CartAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("logId");
		String[] itemArr = req.getParameter("itemId").split(",");
		CartService service = new CartServiceImpl();
		
		int r = 0;
		int duplication = 0;
		Outter: for(int i = 0; i < itemArr.length; i++) {
			List<BookVO> list = service.getCartList(uid);
			String itemId = itemArr[i];
			
			for(int j = 0; j < list.size(); j++) {
				if(Integer.parseInt(itemId) == list.get(j).getItemId()) {
					duplication ++;
					continue Outter;
				}
			}
			
			CartVO vo = new CartVO();
			vo.setItemId(Integer.parseInt(itemId));
			vo.setUserId(uid);
			
			r += service.cartAdd(vo);
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
