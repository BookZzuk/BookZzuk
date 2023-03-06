<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.a {
	margin-top: -50px;
}
</style>

<div class="container">
	<div class="checkout__form">
		<h4>공지사항</h4>
		<div class="a">
			<div class="shoping-cart shoping__cart__table">
				<table>
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="notice" items="${noticeList}">
							<tr 
								onclick="location.href='noticeDetail.do?noticeNum=${notice.noticeNum}'"
								>
								<td>${notice.noticeNum}</td>
								<td>${notice.title}</td>
								<td>${notice.userId}</td>
								<td>${notice.writeDate}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>