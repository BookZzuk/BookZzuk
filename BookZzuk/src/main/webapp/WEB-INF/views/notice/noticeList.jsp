<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<table >
		<thead><tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr></thead>
		<tbody>
			<c:forEach var="notice" items="${noticeList}">
				<tr>
					<td><a href = "NoticeDetail.do?=${notice.noticeNum}"></a>
					</td>
					<td>${notice.title}</td>
					<td>${notice.userId}</td>
					<td>${notice.writeDate}</td>
				</tr>
			  </c:forEach>	
		</tbody>
	</table>
