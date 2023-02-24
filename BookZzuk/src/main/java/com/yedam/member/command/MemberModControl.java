package com.yedam.member.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MemberModControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");
		String name = req.getParameter("name");
		String addr = req.getParameter("addr");
		String phone = req.getParameter("phone");
		String email= req.getParameter("email");
		
		MemberVO vo = new MemberVO();
		
		vo.setUserId(userId);
		vo.setUserPw(userPw);
		vo.setName(name);
		vo.setAddr(addr);
		vo.setPhone(phone);
		vo.setEmail(email);
		
		
		MemberService service = new MemberServiceImpl();
		service.updateMember(vo);
		
//		Map<String, Object> resultMap = new HashMap<>();
//		resultMap.put("member",vo);
//		Gson gson = new GsonBuilder().create();
//		
//		
//		if(service.updateMember(vo)>0) {
//			resultMap.put("retCode", "Success");
//		}
//		else {
//			resultMap.put("retCode", "Fail");
//		}
		
//		return gson.toJson(resultMap) + ".json";
		

		
		MemberVO member = service.getMember("abcd");	
		req.setAttribute("vo", member);
		
		//return "member/mypage.tiles";
	
			return "memberInfo.do";
	
	
	}

}
