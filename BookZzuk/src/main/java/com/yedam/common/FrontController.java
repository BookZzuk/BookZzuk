package com.yedam.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.book.command.*;
import com.yedam.cart.command.*;
import com.yedam.like.command.*;
import com.yedam.member.command.*;
import com.yedam.notice.command.*;
import com.yedam.order.command.*;
import com.yedam.qna.command.*;
import com.yedam.qnaReply.command.*;
import com.yedam.review.command.*;

public class FrontController extends HttpServlet{

	private Map<String, Command> map;
	private String charset;
	
	public FrontController() {
		map = new HashMap<>();
	}
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		charset = config.getInitParameter("charset");
				
		map.put("/main.do", new MainControl()); // 메인 페이지
		map.put("/likeBook.do", new LikeBookControl()); // 찜 목록 페이지
		map.put("/likeBookAdd.do", new LikeBookAddControl()); // 찜 추가 기능
		map.put("/likeBookDelete.do", new LikeBookDeleteControl()); // 찜 취소 기능
		map.put("/cart.do", new CartControl()); // 장바구니 페이지
		map.put("/cartAdd.do", new CartAddControl()); // 장바구니에 담기 기능
		map.put("/cartDelete.do", new CartDeleteControl()); // 장바구니에서 빼기 기능
		map.put("/orderForm.do", new OrderFormControl()); // 결제 화면 페이지
		map.put("/orderAdd.do", new OrderAddControl()); // 결제 등록 기능
		
		
		
		map.put("/bookList.do", new BookListControl()); // 도서 리스트 페이지
		map.put("/bookDetail.do", new BookDetailControl()); // 도서 상세 정보 페이지(관리자일 경우 수정/삭제 버튼)
		map.put("/bookModForm.do", new BookModFormControl()); // 도서 정보 수정 페이지
		map.put("/bookMod.do", new BookModControl()); // 도서 정보 수정 기능
		map.put("/bookDelete.do", new BookDeleteControl()); // 도서 정보 삭제 기능
		map.put("/bookAddForm.do", new BookAddFormControl()); // 도서 등록 페이지
		map.put("/bookAdd.do", new BookAddControl()); // 도서 등록 기능
		map.put("/reviewList.do", new ReviewListControl()); // 리뷰 리스트
		map.put("/reviewAdd.do", new ReviewAddControl()); // 리뷰 추가 기능
		map.put("/reviewDelete.do", new ReviewModDeletetrol()); // 리뷰 삭제 기능
		
		
		
		
		map.put("/loginForm.do", new LoginFormControl()); // 로그인 페이지
		map.put("/login.do", new LoginControl()); // 로그인 기능
		map.put("/logout.do", new LogoutControl());// 로그아웃 기능
		map.put("/findIdForm.do", new FindIdFormControl()); // 아이디 찾기 페이지
		map.put("/findId.do", new FindIdControl()); // 아이디 찾기 기능
		map.put("/findPwForm.do", new FindPwFormControl()); // 비밀번호 찾기 페이지
		map.put("/findPw.do", new FindPwControl()); // 비밀번호 찾기 기능
		map.put("/signUpForm.do", new SignUpFormControl()); // 회원가입 페이지
		map.put("/signUp.do", new SignUpControl()); // 회원가입 기능
		map.put("/idcheck.do", new IdCheckControl()); // 아이디 중복확인 기능
		
		
		
		//map.put("/noticeList.do", new NoticeListControl()); // 공지사항 목록 조회 페이지
		map.put("/noticePaging.do", new NoticePagingControl()); // 공지사항 페이징 기능
		map.put("/noticeDetail.do", new NoticeDetailControl()); // 공지사항 단건 조회 페이지
		map.put("/memberInfo.do", new MemberInfoControl()); // 회원 정보 페이지(with 수정 버튼)
		map.put("/memberInfoMod.do", new MemberInfoModControl()); // 회원 수정 페이지
		map.put("/memberMod.do", new MemberModControl()); // 회원 정보 수정 기능
		map.put("/delivery.do", new DeliveryControl()); // 배송 조회 페이지
		map.put("/deliveryDetail.do", new DeliveryDetailControl()); // 배송 상세 페이지
		map.put("/qnaList.do", new QnaListControl()); // 나의 1:1 문의 내역 페이지
		map.put("/qnaDetail.do", new QnaDetailControl()); // 1:1 문의 상세 페이지
		map.put("/qnaAdd.do", new QnaAddControl()); // 1:1 문의 등록 기능
		map.put("/qnaAddProcess.do", new QnaAddProcessControl()); // 1:1 문의 등록 처리 기능
		map.put("/qnaDel.do", new QnaDelControl()); // 1:1 문의 삭제기능
		//map.put("/replyList.do", new ReplyListControl()); // 문의글 댓글 조회 기능
		// 수정 기능 대신에 삭제 후 추가하는 식으로 진행한다고 가정했음
		map.put("/replyAdd.do", new ReplyAddControl()); // 문의글 댓글 등록 기능(관리자 답변)
		map.put("/replyAddProcess.do", new ReplyAddProcessControl()); // 문의글 댓글 등록 처리기능(관리자 답변)
		map.put("/replyDelete.do", new ReplyDeleteControl()); // 문의글 댓글 삭제 기능
		map.put("/qnaAllListPaging.do", new qnaAllListPagingControl());  //관리자 1대1문의 내역 전체조회
		map.put("/qnaAllDetail.do", new qnaAllDetailControl());  //관리자 1대1문의 내역 상세조회
		
		
		
		
		map.put("/noticeAddForm.do", new NoticeAddFormControl()); // 공지사항 등록 페이지
		map.put("/noticeAdd.do", new NoticeAddControl()); // 공지사항 등록 기능
		map.put("/noticeModForm.do", new NoticeModFormControl()); // 공지사항 수정 페이지
		map.put("/noticeMod.do", new NoticeModControl()); // 공지사항 수정 기능
		map.put("/noticeDelete.do", new NoticeDeleteControl()); // 공지사항 삭제 기능
		map.put("/orderManagerList.do", new OrderManagerListControl()); // 주문관리 목록 페이지
		map.put("/orderManagerDetail.do", new OrderManagerDetailControl()); // 주문관리 상세 페이지(with 수정 버튼)
		map.put("/orderManagerMod.do", new OrderManagerModControl()); // 주문관리 수정 기능
		map.put("/orderManagerDelete.do", new OrderManagerDeleteControl()); // 주문관리 삭제 기능
		// 도서 관리는 추가 페이지 링크만 넣고 개별 삭제/수정 기능은 도서 상세 정보 페이지에서 작동 
		map.put("/memberList.do", new MemberListControl()); // 회원 목록 페이지
		map.put("/qnaAllList.do", new QnaAllListControl()); // 전체 1:1 문의 목록 페이지
	}
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding(charset);
		resp.setCharacterEncoding(charset);
		
		String uri = req.getRequestURI();
		System.out.println(uri);
		String context = req.getContextPath();
		String page = uri.substring(context.length());
		
		Command command = map.get(page);
		String viewPage = command.exec(req,  resp);
		
		if(viewPage.endsWith(".tiles")) {
			RequestDispatcher rd = req.getRequestDispatcher(viewPage);
			rd.forward(req, resp);
		} else if(viewPage.endsWith(".do")) {
			resp.sendRedirect(viewPage);
		} else if(viewPage.endsWith(".json")) {
			resp.setContentType("text/json;charset=utf-8");
			resp.getWriter().print(viewPage.substring(0, viewPage.length() - 5));
		}
	}
}
