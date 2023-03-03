<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!-- Product Details Section Begin -->
<section class="product-details spad">
  <div class="container">
    <div class="row">
      <form action="bookAdd.do" enctype="multipart/form-data" method="post">
        <div class="col-lg-6 col-md-6">
          <div class="product__details__pic">
            <div class="product__details__pic__item">
              <img
                class="product__details__pic__item--large"
                src=""
                alt=""
              />
              <input type="file" name="attach">
            </div>
          </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="product__details__text">
              <ul>
                <li><b>도서명</b><input name="title"></input></li>
                <li><b>저자</b><input name="author"></input></li>
                <li><b>정가</b><input name="stdPrice"></input></li>
                <li><b>할인가격</b><input name="salePrice"></input></li>
                <li><b>설명</b><input name="description"></input></li>
              </ul>
              
              <ul>
                <li><b>출판사</b> <input name="publisher"></input></li>
                <li>
                  <b>카테고리분류</b>
                  <input name="category"></input>
                </li>
                <li><b>출판일</b> <input type="date" name="pubDate" id="pubDate"></input></li>
                <li><b>ISBN코드</b> <input name="isbn"></input></li>
              </ul>
              <button type="submit" class="primary-btn" >등록하기</button>
            </div>
        </div>
      </form>
      <div class="col-lg-12">
        <div class="product__details__tab">
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane-active" id="tabs-3" role="tabpanel">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Product Details Section End -->


<!-- Js Plugins -->
<script>

</script>
