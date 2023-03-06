<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<style>
  .a {
    margin-top: -50px;
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
  }
</style>

<div class="container">
  <div class="checkout__form">
    <h4>1:1문의내역</h4>
    <div class="row">
      <div class="col-lg-8 col-md-6" style="text-align: center">
        <div class="a">
          <div class="shoping-cart shoping__cart__table">
            <table>
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
                <c:forEach var="qna" items="${qnaList}">
                  <tr
                    onclick="location.href='qnaDetail.do?articleNum=${qna.articleNum}'"
                  >
                    <td>${qna.articleNum}</td>
                    <td>${qna.title}</td>
                    <td>${qna.userId}</td>
                    <td>${qna.writeDate}</td>
                    <c:choose>
                      <c:when test="${qna.replyNum != 0}">
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
            <button
              onclick="location.href='qnaAdd.do'"
              class="primary-btn"
              style="border: none; margin-top: 50px"
            >
              문의글 작성
            </button>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6">
        <div class="checkout__order">
          <div
            class="checkout__order__products"
            onclick="location.href='memberInfoMod.do'"
            onmouseover="this.style.cursor='pointer'"
          >
            회원정보 수정하기
          </div>
          <div
            class="checkout__order__products"
            onclick="location.href='delivery.do'"
            onmouseover="this.style.cursor='pointer'"
          >
            배송조회
          </div>
          <div
            class="checkout__order__products"
            onclick="location.href='likeBook.do'"
            onmouseover="this.style.cursor='pointer'"
          >
            찜 목록
          </div>
          <div
            class="checkout__order__products"
            onclick="location.href='cart.do'"
            onmouseover="this.style.cursor='pointer'"
          >
            장바구니
          </div>
          <div
            class="checkout__order__products"
            onclick="location.href='qnaList.do'"
            onmouseover="this.style.cursor='pointer'"
          >
            1:1문의
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
