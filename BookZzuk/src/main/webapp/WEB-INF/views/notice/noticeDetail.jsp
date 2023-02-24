<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
.a input{
height:300px;
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
<div class="container">
	<div class="row">
		<div class="col-lg-12">
		</div>
	</div>
	<div class="checkout__form">
		<h4>공지사항</h4>
		<form action="#">
			<div class="row">
				<div class="col-lg-8 col-md-6">
			<div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>제목</p>
                                        <input style="color: black;" type="text" value="${noticeDetail.title}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>작성자</p>
                                        <input style="color: black;" type="text" value="${noticeDetail.userId}">
                                    </div>
                                </div>
                            </div>
					<%-- <div class="checkout__input">
						<p>
							제목
						</p>
						<input style="color: black;" type="text" value="${noticeDetail.title}">
					</div> --%>
				<%-- 	<div class="checkout__input">
						<p>
							작성자
						</p>
						<input style="color: black;" type="text" value="${noticeDetail.userId}">
					</div>
					<div class="checkout__input">
						<p>
							작성일자
						</p>
						<input style="color: black;" type="text" value="${noticeDetail.writeDate}">
					</div> --%>
					<div class = "a">
					<div class="checkout__input">
						<p>
							내용
						</p>
						<%-- <input style="color: black;" type="text" value="${noticeDetail.noticeSubject}"> --%>
					<textarea rows="10" cols="120">${noticeDetail.noticeSubject}</textarea>
					</div>
					</div>
				</div>

			</div>
		</form>
		<button class="site-btn" onclick="location.href='noticeList.do'">뒤로가기</button>
	</div>
</div>