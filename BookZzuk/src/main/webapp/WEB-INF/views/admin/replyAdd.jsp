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


<form action="replyAddProcess.do" method="post">
	<div class="container">
		<div class="checkout__form">
			<h4>1:1문의내역</h4>
			<div class="row">
				<div class="col-lg-8 col-md-6">
					<div class="row">
						<div class="col-lg-6">
							<div class="checkout__input">
								<input type="hidden" value="${articeDetail.articleNum}"
									name="articleNum">
								<p>제목</p>
								<input style="color: black;" type="text"
									value="${articeDetail.title}">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="checkout__input">
								<p>작성자</p>
								<input style="color: black;" type="text"
									value="${articeDetail.userId}" name="userId">
							</div>
						</div>
					</div>
					<div class="checkout__input">
						<p>내용</p>
						<textarea rows="10" cols="100">${articeDetail.contents}</textarea>
					</div>
				</div>
			</div>
			<div class="checkout__input">
				<h4>문의글 답변</h4>
				<textarea rows="10" cols="100" name="contents"></textarea>
			</div>
			<button class="site-btn"
				onclick="location.href='qnaAllListPaging.do'">뒤로가기</button>
			<button class="site-btn" type="submit">작성완료</button>
		</div>
	</div>
</form>
