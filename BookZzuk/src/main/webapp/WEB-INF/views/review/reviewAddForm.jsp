<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div class="container">
  <div class="row">
    <div class="col-lg-12"></div>
  </div>
  <div class="checkout__form">
    <h4>리뷰 등록하기</h4>
    <form action="reviewAdd.do" method="post" id="myForm">
      <div class="row">
        <div class="col-lg-2"></div>
        <div class="col-lg-8 col-md-6">
          <div class="row">
            <div class="col-lg-6">
              <div class="checkout__input">
                <p>Title</p>
                <input
                  readonly
                  style="color: black"
                  type="text"
                  value="${title}"
                />
                <input type="hidden" value="${itemId}" name="itemId" />
                <input type="hidden" value="${orderNum}" name="orderNum" />
              </div>
            </div>
            <div class="col-lg-1"></div>
            <div class="col-lg-3">
              <div class="checkout__input">
                <p>Rating</p>
                <input
                  style="color: black"
                  type="number"
                  min="1"
                  max="10"
                  value="1"
                  name="rating"
                />
              </div>
            </div>
          </div>
          <div class="checkout__input">
            <p>리뷰</p>
            <textarea form="myForm" name="review" cols="80" rows="8"></textarea>
          </div>
        </div>
      </div>
      <div style="text-align: center">
        <button type="submit" class="primary-btn" style="border: none">
          등록
        </button>
        <button type="reset" class="primary-btn" style="border: none">
          취소
        </button>
      </div>
    </form>
  </div>
</div>
