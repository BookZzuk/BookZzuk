<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
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
            <c:forEach begin="1" end="${book.avgGrade / 1}" step="1">
              <i class="fa fa-star"></i>
            </c:forEach>
            <c:if test="${book.avgGrade % 1 >= 0.5}">
              <i class="fa fa-star-half-o"></i>
            </c:if>
          </div>
          <div class="product__details__price">${book.salePrice}</div>
          <p>${book.description }</p>
          <div class="product__details__quantity">
            <div class="quantity">
              <div class="pro-qty">
                <input type="text" value="1" id="itemCnt" />
              </div>
            </div>
          </div>
          <a onclick="addCart(event)" class="primary-btn" style="color: white" onmouseover="this.style.cursor='pointer'"><input type="hidden" value="${book.itemId}" > ADD TO CARD</a>
          <ul>
            <li><b>출판사</b> <span>${book.publisher }</span></li>
            <li>
              <b>카테고리분류</b>
              <span>${book.category }</span>
            </li>
            <li><b>출판일</b> <span>${book.pubDate }</span></li>
            <li><b>ISBN코드</b> <span>${book.isbn }</span></li>
            <li>
              <b>Share on</b>
              <div class="share">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
              </div>
            </li>
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
          <div class="tab-content" style="text-align: center;">
            <div class="tab-pane-active" id="tabs-3" role="tabpanel">
              <!-- 리뷰 Details Section 시작 -->
                <c:forEach var="list" items="${review }" varStatus="g">
                  <div>
                    <br><br>
                    <c:forEach begin="1" end="${list.rating / 1}" step="1">
                      <i class="fa fa-star" style="color: #EDBB0E"></i>
                    </c:forEach>
                    <br><br>
                    <p class="paging${g.index + 1}">${list.reviewSubject }</p>
                    <c:if test="${list.userId eq logId}">
                      <br><br>
                      <button type="button" class="primary-btn" style="border: none" onclick="delReview(event)"><input type="hidden" value="${list.reviewNum}" >삭제</button>
                    </c:if>
                  </div>
                </c:forEach>
              <!-- 리뷰 Details Section 끝 -->
              </div>
            </div>
            
	          <div style="display: block; text-align: center;">
	          	<c:if test="${paging.startPage != 1 }">
	          		<a href="bookDetail.do?bid=${book.itemId}&paging${paging.startPage - 1 }">&lt;</a>
	          	</c:if>
	          	<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
	          		var="p">
                <c:choose>
                  <c:when test="${p == paging.nowPage }">
                    <b>${p }</b>
                  </c:when>
                  <c:when test="${p != paging.nowPage }">
                    <a href="bookDetail.do?bid=${book.itemId}&nowPage=${p }">${p }</a>
                  </c:when>
                </c:choose>
              </c:forEach>
	          	<c:if test="${paging.endPage != paging.lastPage}">
	          		<a href="bookDetail.do?bid=${book.itemId}&nowPage=${pagingendPage+1 }">&gt;</a>
	          	</c:if>
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
          <h2>연관 도서</h2>
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
            </div>
            <div class="product__item__text">
              <h6>
                <a href="bookDetail.do?bid=${relatedBook.itemId }"
                  >${relatedBook.title }</a
                >
              </h6>
              <h5>${relatedBook.salePrice }</h5>
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
  setRecentVeiw("recentPrice", "${book.stdPrice }");
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
  }

  function delReview(e) {
    let delNum = e.target.closest("button").children[0].value;

    $.ajax({
				method: "post",
				url: "reviewDelete.do?delNum=" + delNum,
				success: function(result) {
    	  if(result.retCode == "Success"){
          location.reload();
    	  } else if (result.retCode == "Fail") {
    	    alert("처리중 오류 발생");
    	  }
    	},
    	error: function(reject) {
				console.log(reject)
      }
    })
  }

  
  var proQty = $(".pro-qty");
  proQty.prepend('<span class="dec qtybtn">-</span>');
  proQty.append('<span class="inc qtybtn">+</span>');
  proQty.on("click", ".qtybtn", function() {
    var $button = $(this);
    var oldValue = $button.parent().find("input").val();
    if ($button.hasClass("inc")) {
      var newVal = parseFloat(oldValue) + 1;
    } else {
      // Don't allow decrementing below zero
      if (oldValue > 1) {
        var newVal = parseFloat(oldValue) - 1;
      } else {
        newVal = 1;
      }
    }
    $button.parent().find("input").val(newVal); 
		});

  function addCart(e) {
    let itemId = e.target.closest("a").children[0].value
    let itemCnt = $("#itemCnt").val()

    $.ajax({
				method: "post",
				url: "cartAdd.do",
        data: {"itemId":itemId, "itemCnt":itemCnt},
				success: function(result) {
    	  if(result.retCode == "Success"){
          if(confirm("장바구니에 추가되었습니다. \n장바구니로 이동하시겠습니까?")){
            location.href="cart.do"
          } 
    	  } else if (result.retCode == "Fail") {
    	    alert("처리중 오류 발생");
    	  }
    	},
    	error: function(reject) {
				console.log(reject)
      }
    })
  }
</script>