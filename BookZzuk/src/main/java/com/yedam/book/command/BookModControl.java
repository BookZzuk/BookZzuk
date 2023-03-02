package com.yedam.book.command;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.book.vo.BookVO;
import com.yedam.common.Command;

public class BookModControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 글등록처리.
		String savePath = req.getServletContext().getRealPath("/upload");
		int maxSize = (1024 * 1024 * 10);
		String encoding = "utf-8";
		try {
			// 파일업로드 서블릿.
			MultipartRequest multi = //
					new MultipartRequest(req, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
			
			String fileName="";
			int bid=Integer.parseInt(multi.getParameter("bid"));
			System.out.println(bid);
			String title = multi.getParameter("title");
			String author = multi.getParameter("author");
			String pubDate = multi.getParameter("pubDate");
			String description = multi.getParameter("description");
			int stdPrice= Integer.parseInt(multi.getParameter("stdPrice"));
			int salePrice= Integer.parseInt(multi.getParameter("salePrice"));
			String category = multi.getParameter("category");
			String isbn = multi.getParameter("isbn");
			String publisher = multi.getParameter("publisher");
			Enumeration<?> files = multi.getFileNames();
			while (files.hasMoreElements()) {
				String file = (String) files.nextElement();
				System.out.println(file);
				fileName = multi.getFilesystemName(file);
			}

			// BookVO 생성.
			BookVO vo = new BookVO();
			vo.setItemId(bid);
			vo.setCover("upload/"+fileName);
			vo.setTitle(title);
			vo.setAuthor(author);
			vo.setPubDate(pubDate);
			vo.setDescription(description);
			vo.setStdPrice(stdPrice);
			vo.setSalePrice(salePrice);
			vo.setCategory(category);
			vo.setIsbn(isbn);
			vo.setPublisher(publisher);
			BookService service = new BookServiceImpl();
			service.modBook(vo);

			
			req.setAttribute("book", service.getBook(bid));
			req.setAttribute("related", service.getRelatedBook(bid));
			return "book/bookDetail.tiles";
		} catch (Exception e) {
			e.printStackTrace();
			return "bookList.do";
		}
	}

}
