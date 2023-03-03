<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<style>
.a {
	margin-top: -50px;
}

.shoping-cart {
	padding-top: 50px;
}

h2 {
	text-align: center;
}

table {
	width: 100%;
}

#outter {
	display: block;
	width: 60%;
	margin: auto;
}

a {
	text-decoration: none;
}

.nice-select {
	position: relative;
	top: 20px;
	right: -50px;
}
</style>

<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "qnaAllListPaging.do?nowPage=${paging.nowPage}&cntPerPage="
				+ sel;
	}
</script>

<div class="container">
	<div class="checkout__form">
		<h4>1:1문의내역(관리자)</h4>
		<div class="a">
			<div class="shoping-cart shoping__cart__table">
				<div style="float: right;">
					<select id="cntPerPage" name="sel" onchange="selChange()">
						<option value="5"
							<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄
							보기</option>
						<option value="10"
							<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄
							보기</option>
						<option value="15"
							<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄
							보기</option>
						<option value="20"
							<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄
							보기</option>
					</select>
				</div>
				<table>
					<div id="outter">
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일자</th>
								<th>답변여부</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${viewAll }" var="list">
								<tr
									onclick="location.href='qnaAllDetail.do?articleNum=${list.articleNum}'">
									<td>${list.articleNum }</td>
									<td>${list.title}</a></td>
									<td>${list.userId }</td>
									<td>${list.writeDate}</td>
									<c:choose>
										<c:when test="${list.replyNum != 0}">
											<td>답변완료</td>
										</c:when>
										<c:otherwise>
											<td>답변 대기중</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
				</table>
			</div>
		</div>
		<div style="display: block; text-align: center;">
			<c:if test="${paging.startPage != 1 }">
				<a
					href="http://localhost:8081/TilesApp/qnaAllListPaging.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
			</c:if>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<a
							href="http://localhost:8081/TilesApp/qnaAllListPaging.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${paging.endPage != paging.lastPage}">
				<a
					href="http://localhost:8081/TilesApp./qnaAllListPaging.do?nowPage=${pagingendPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
			</c:if>
		</div>

	</div>
</div>
