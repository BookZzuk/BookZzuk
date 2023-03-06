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

/* h2 {
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
} */
.nice-select {
	position: relative;
	top: 20px;
	right: -50px;
}

.product__pagination {
	text-align: center;
	margin: 20px;
}

.product__pagination b {
	display: inline-block;
	width: 30px;
	height: 30px;
	border: 1px solid #b2b2b2;
	font-size: 14px;
	font-weight: 700;
	line-height: 28px;
	text-align: center;
	margin-right: 16px;
	-webkit-transition: all, 0.3s;
	-moz-transition: all, 0.3s;
	-ms-transition: all, 0.3s;
	-o-transition: all, 0.3s;
	transition: all, 0.3s;
}
</style>


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
					</select> <select id="sel" onchange="test()">
					<c:choose>
						<c:when test="${con=='답변대기중'}">
						<option value="total">전체보기</option>
						<option value="wait" selected>답변대기중</option>
						<option value="com">답변완료</option>
						</c:when>
						<c:when test="${con=='답변완료'}">
						<option value="total">전체보기</option>
						<option value="wait" >답변대기중</option>
						<option value="com" selected>답변완료</option>
						</c:when>
						<c:when test="${con != '답변대기중' && con != '답변완료'}">
						<option value="total" selected>전체보기</option>
						<option value="wait" >답변대기중</option>
						<option value="com" >답변완료</option>
						</c:when>
						</c:choose>
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
								<tr onmouseover="this.style.cursor='pointer'"
									onclick="location.href='qnaAllDetail.do?articleNum=${list.articleNum}'">
									<td>${list.articleNum }</td>
									<td>${list.title}</a></td>
									<td>${list.userId }</td>
									<td><fmt:formatDate value="${list.writeDate}"
											pattern="yyyy-MM-dd" var="date" /> ${date }</td>
									<c:choose>
										<c:when test="${list.replyNum != 0}">
											<td>답변완료</td>
										</c:when>
										<c:otherwise>
											<td>답변대기중</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
				</table>
			</div>
		</div>
		<div class="product__pagination">
			<c:if test="${paging.startPage != 1 }">
				<a
					href="qnaAllListCon.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&con=
					c">&lt;</a>
			</c:if>
			<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
				var="p">
				<c:choose>
					<c:when test="${p == paging.nowPage }">
						<b>${p }</b>
					</c:when>
					<c:when test="${p != paging.nowPage }">
						<a
							href="qnaAllListCon.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}&con=${con}">${p }</a>
					</c:when>
				</c:choose>
			</c:forEach>
			<c:if test="${paging.endPage != paging.lastPage}">
				<a
					href="qnaAllListCon.do??nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&con=
					${con}">&gt;</a>
			</c:if>
		</div>

	</div>
</div>

<script>
	let text = "";
	let sel="";
	function test() {
		sel = document.getElementById('sel');
		text = sel.options[sel.selectedIndex].text;
		location.href = 'qnaAllListCon.do?nowPage=1&cntPerPage=${paging.cntPerPage}&con='
				+ text;
	}

	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "qnaAllListCon.do?nowPage=${paging.nowPage}&cntPerPage="
				+ sel + "&con=" + text;
	}
</script>
