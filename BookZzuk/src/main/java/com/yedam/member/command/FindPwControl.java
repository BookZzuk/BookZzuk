package com.yedam.member.command;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.vo.MemberVO;

public class FindPwControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String em = req.getParameter("email");
		String na = req.getParameter("name");
		String id = req.getParameter("id");

		MemberVO vo = new MemberVO();
		vo.setUserId(id);
		vo.setUserPw(na);
		vo.setUserPw(em);

		
		return ".tiles";
		}
	}
	
