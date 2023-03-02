<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.a input {
	height: 300px;
}

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
	top: -10px;
	right: -900px;
}
</style>
<form action="qnaAddProcess.do" method="post">
	<div class="container">
		<div class="row">
			<div class="col-lg-12"></div>
		</div>
		<div class="checkout__form">
			<h4>1:1 문의하기</h4>
			<form action="#">
				<div class="row">
					<div class="col-lg-8 col-md-6">
						<div class="row">
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>제목</p>
									<input style="color: black;" type="text" name="title">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="checkout__input">
									<p>작성자</p>
									<input readonly style="color: black;" type="text" name="userId"
										value=${id}>
								</div>
							</div>
						</div>

						<div class="a">
							<div class="checkout__input">
								<p>내용</p>

								<textarea rows="10" cols="120" name="contents"></textarea>
							</div>
						</div>
					</div>

				</div>
			</form>
			<button type="button" class="site-btn"
				onclick="location.href='qnaList.do'">작성취소</button>
			<button type="submit" class="site-btn">작성완료</button>
		</div>
	</div>
</form>