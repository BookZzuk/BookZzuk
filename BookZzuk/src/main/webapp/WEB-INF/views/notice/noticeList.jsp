<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
padding-top: 200px;
display: inline;
  width: 130px;
  position: fixed;
  z-index: 1;
  top: 20px;
  left: 10px;
  background: #eee;
  overflow-x: hidden;
  padding: 8px 0;
}

.sidenav a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 25px;
  color: #2196F3;
  display: block;
}

.sidenav a:hover {
  color: #064579;
}

.main {
  margin-left: 140px; /* Same width as the sidebar + left position in px */
  font-size: 28px; /* Increased text to enable scrolling */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.a {
padding-left: 20%;
width : 80%;
display: inline-block;
}

</style>

	<div class="sidenav">
  <a href="#about">About</a>
  <a href="#services">Services</a>
  <a href="#clients">Clients</a>
  <a href="#contact">Contact</a>
</div>
	
<div class="a">
<div class="shoping-cart shoping__cart__table">
	<table >
		<thead><tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일자</th>
		</tr></thead>
		<tbody>
			<c:forEach var="notice" items="${noticeList}">
				<tr onclick="location.href='NoticeDetail.do?noticeNum=${notice.noticeNum}'" >
					<td>${notice.noticeNum}</td>
					<td>${notice.title}</td>
					<td>${notice.userId}</td>
					<td>${notice.writeDate}</td>
				</tr>
			  </c:forEach>	
		</tbody>
	</table>
</div>