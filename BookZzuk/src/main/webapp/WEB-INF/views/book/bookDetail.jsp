<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>

<style>
  .grey {
    background-color: gray;
  }
  .red {
    background-color: red;
  }
</style>
<!-- Page Preloder
    <div id="preloder">
        <div class="loader"></div>
    </div>
     -->

<!-- Product Details Section Begin -->
<section class="product-details spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="product__details__pic">
          <div class="product__details__pic__item">
            <img
              class="product__details__pic__item--large"
              src="${book.cover }"
              alt=""
            />
          </div>
          <!--
              <div class="product__details__pic__slider owl-carousel">
                <img
                  data-imgbigurl="img/product/details/product-details-2.jpg"
                  src="img/product/details/thumb-1.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-3.jpg"
                  src="img/product/details/thumb-2.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-5.jpg"
                  src="img/product/details/thumb-3.jpg"
                  alt=""
                />
                <img
                  data-imgbigurl="img/product/details/product-details-4.jpg"
                  src="img/product/details/thumb-4.jpg"
                  alt=""
                />
              </div>
            -->
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="product__details__text">
          <h3>${book.title }</h3>
          <div class="product__details__rating">
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star"></i>
            <i class="fa fa-star-half-o"></i>
            <span>(18 reviews)</span>
          </div>
          <div class="product__details__price">
            ${book.salePrice}원
            <p><del id="std_Price"></del></p>
          </div>

          <p>${book.description }</p>
          <div class="product__details__quantity">
            <div class="quantity">
              <div class="pro-qty">
                <input type="text" value="1" />
              </div>
            </div>
          </div>
          <a href="#" class="primary-btn">ADD TO CARD</a>
          <a href="#" class="heart-icon"
            ><span class="icon_heart_alt"></span
          ></a>
          <ul>
            <li><b>출판사</b> <span>${book.publisher }</span></li>
            <li>
              <b>카테고리분류</b>
              <span>${book.category }</span>
            </li>
            <li><b>출판일</b> <span id="pubDate"></span></li>
            <li><b>ISBN코드</b> <span>${book.isbn }</span></li>
            <li>
              <b>Share on</b>
              <div class="share">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-pinterest"></i></a>
              </div>
            </li>
            <li id="onlyAdmin"></li>
          </ul>
        </div>
      </div>
      <div class="col-lg-12">
        <div class="product__details__tab">
          <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
              <a
                class="nav-link active"
                data-toggle="tab"
                role="tab"
                aria-selected="false"
              >
                Reviews
              </a>
            </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane-active" id="tabs-3" role="tabpanel">
              <!-- 리뷰 Details Section 시작 -->
              <div class="product__details__tab__desc">
                <h6>Products Infomation</h6>
                <p>
                  Vestibulum ac diam sit amet quam vehicula elementum sed sit
                  amet dui. Pellentesque in ipsum id orci porta dapibus. Proin
                  eget tortor risus. Vivamus suscipit tortor eget felis
                  porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
                  elementum sed sit amet dui. Donec rutrum congue leo eget
                  malesuada. Vivamus suscipit tortor eget felis porttitor
                  volutpat. Curabitur arcu erat, accumsan id imperdiet et,
                  porttitor at sem. Praesent sapien massa, convallis a
                  pellentesque nec, egestas non nisi. Vestibulum ac diam sit
                  amet quam vehicula elementum sed sit amet dui. Vestibulum ante
                  ipsum primis in faucibus orci luctus et ultrices posuere
                  cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
                  ullamcorper sit amet ligula. Proin eget tortor risus.
                </p>
              </div>
              <!-- 리뷰 Details Section 끝 -->
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Product Details Section End -->

<!-- Related Product Section Begin -->
<section class="related-product">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title related__product__title">
          <h2>Related Product</h2>
        </div>
      </div>
    </div>
    <div class="row">
      <!--관련 제품들 나오는곳 4개만들어감-->
      <c:forEach var="relatedBook" items="${related }">
        <div class="col-lg-3 col-md-4 col-sm-6">
          <div class="product__item">
            <div
              class="product__item__pic set-bg"
              data-setbg="${relatedBook.cover }"
            >
              <ul class="product__item__pic__hover">
                <li>
                  <a href="#"><i class="fa fa-heart"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-retweet"></i></a>
                </li>
                <li>
                  <a href="#"><i class="fa fa-shopping-cart"></i></a>
                </li>
              </ul>
            </div>
            <div class="product__item__text">
              <h6>
                <a href="bookDetail.do?bid=${relatedBook.itemId }"
                  >${relatedBook.title }</a
                >
              </h6>
              <h5>${relatedBook.stdPrice }</h5>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>
<!-- Related Product Section End -->

<!-- Js Plugins -->
<script>
  setRecentVeiw("recentItem", "${book.itemId }");
  setRecentVeiw("recentTitle", "${book.title }");
  setRecentVeiw("recentCover", "${book.cover }");
  setRecentVeiw("recentPrice", "${book.salePrice }");
  function setRecentVeiw(itemName, AttValue) {
    //로컬스토리지 아이템 이름, 값 어트리뷰트받을거 예: '${book.title}'
    //localStorage.clear();

    let recentViewList = [];

    recentViewList = JSON.parse(localStorage.getItem(itemName));
    if (recentViewList != null && recentViewList.length > 5) {
      //배열이 있고 6개이상이면 삭제
      if (recentViewList.length > 5) recentViewList.shift();
    }
    if (recentViewList == null) {
      recentViewList = [AttValue];
    } else {
      recentViewList.push(AttValue);
    } //어트리뷰트값 push
    localStorage.setItem(itemName, JSON.stringify(recentViewList)); //로컬스토리지에 배열넣기
    console.log(localStorage.getItem(itemName));
  }
  pubdateParse();
  function pubdateParse() {
    let str = "${book.pubDate }";
    document.getElementById("pubDate").innerHTML = str.slice(0, 10);
  }
  console.log("${logId}");
  adminMenu();

  function adminMenu() {
    const urlParams = new URL(location.href).searchParams;
    const bid = urlParams.get("bid");
    console.log(bid);
    if ("admin" == "${logId}") {
      console.log("관리자계정입니다");
      document.getElementById("onlyAdmin").innerHTML =
        '<a href="bookModForm.do?bid=' +
        bid +
        '" class="primary-btn grey" id="mod">수정</a>' +
        '<a onclick="delConfirm(' +
        bid +
        ')"' +
        bid +
        '" class="primary-btn red" id="del">삭제</a>';
    }
  }
  function delConfirm(bid) {
    if (confirm("정말 삭제 하시겠습니까?")) {
      location.href = "bookDelete.do?bid=" + bid;
      alert("삭제되었습니다.");
    }
  }
  salePriceCheck();
  function salePriceCheck() {
    if ("${book.stdPrice}" != "${book.salePrice}") {
      document.getElementById("std_Price").innerHTML = "${book.stdPrice}원";
    }
  }
</script>
