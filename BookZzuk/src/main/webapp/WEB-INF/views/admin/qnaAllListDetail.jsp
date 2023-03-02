<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
textarea {
	border: 1px solid #ebebeb;
	resize: none;
}

.site-btn {
	font-size: 14px;
	color: #ffffff;
	font-weight: 800;
	text-transform: uppercase;
	display: inline-block;
	padding: 13px 30px 12px;
	background: #7fad39;
	border: none;
	position: relative;
	top: -70px;
	right: -880px;
	margin-left: 10px;
}
</style>


<div class="container">
	<div class="checkout__form">
		<h4>1:1문의내역(관리자)</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>제목</p>
							<input style="color: black;" type="text"
								value="${articeDetail.title}">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>작성자</p>
							<input style="color: black;" type="text"
								value="${articeDetail.userId}">
						</div>
					</div>
				</div>
				<div class="checkout__input">
					<p>내용</p>
					<textarea rows="10" cols="100">${articeDetail.contents}</textarea>
				</div>
			</div>
		</div>
		<c:choose>
			<c:when test="${!empty qnaReplyDetail.contents}">
				<div class="checkout__input">
					<h4>문의글 답변</h4>
					<textarea rows="10" cols="100">${qnaReplyDetail.contents}</textarea>
				</div>
			</c:when>
		</c:choose>
		<button class="site-btn" onclick="location.href='qnaAllListPaging.do'">뒤로가기</button>
		<c:choose>
			<c:when test="${empty qnaReplyDetail.contents}">
				<button class="site-btn"
					onclick="location.href='replyAdd.do?articleNum=${articeDetail.articleNum}'">답변
					작성하기</button>
			</c:when>
		</c:choose>
		<c:choose>
			<c:when test="${!empty qnaReplyDetail.contents}">
				<button class="site-btn"
					onclick="location.href='replyDelete.do?articleNum=${articeDetail.articleNum}&&replyNum=${qnaReplyDetail.replyNum}'">답변
					삭제하기</button>
			</c:when>
		</c:choose>
	</div>
</div>
