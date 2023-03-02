<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"
%>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<!-- Categories Section Begin -->
<section class="categories">
  <div class="container">
    <div class="row">
      <div class="categories__slider owl-carousel">
        <c:forEach var="list" items="${recomanList}">
          <div class="col-lg-3" style="height: 345px">
            <div class="categories__item set-bg" data-setbg="${list.cover}" style="background-size: contain;">
              <h5 style="position: absolute; top: 270px">
                <a
                  href="bookDetail.do?bid=${list.itemId}"
                  style="background-color: transparent; font-size: medium"
                  >${list.title}</a
                >
              </h5>
            </div>
          </div>
        </c:forEach>
      </div>
    </div>
  </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="section-title">
          <h2>화제의 도서</h2>
        </div>
        <div class="featured__controls">
          <ul>
            <li class="active" data-filter="*">All</li>
            <c:forEach var="list" items="${muchSellList}">
              <c:set var="category" value="${fn:split(list.category, '>')}" />
              <c:forEach var="item" items="${category}" varStatus="g">
                <c:if test="${g.last}">
                  <li data-filter=".${item}">${item}</li>
                </c:if>
              </c:forEach>
            </c:forEach>
          </ul>
        </div>
      </div>
    </div>
    <div class="row featured__filter">
      <c:forEach var="list" items="${muchSellList}">
        <c:set var="category" value="${fn:split(list.category, '>')}" />
        <c:forEach var="item" items="${category}" varStatus="g">
          <c:if test="${g.last}">
            <div class="col-lg-3 col-md-4 col-sm-6 mix ${item}">
          </c:if>
        </c:forEach>
          <div class="featured__item">
            <div
              class="featured__item__pic set-bg"
              data-setbg="${list.cover}"
              style="background-size: contain;"
            >
              <ul class="featured__item__pic__hover">
                <li>
                  <a class="mainToLike" onclick="mainToLike(event)">
                    <input type="hidden" value="${list.itemId}">
                    <i class="fa fa-heart"></i>
                  </a>
                </li>
                <li>
                  <a class="mainToCart" onclick=mainToCart(event)>
                    <input type="hidden" value="${list.itemId}">
                    <i class="fa fa-shopping-cart"></i>
                  </a>
                </li>
              </ul>
            </div>
            <div class="featured__item__text">
              <h6><a href="bookDetail.do?bid=${list.itemId}">${list.title}</a></h6>
              <h5>${list.salePrice}</h5>
            </div>
          </div>
        </div>
      </c:forEach>
    </div>
  </div>
</section>
<!-- Featured Section End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
  <div class="container">
    <div class="row">
      <div class="col-lg-6 col-md-6">
        <div class="latest-product__text">
          <h4>신간 도서</h4>
          <div class="latest-product__slider owl-carousel">
            <div class="latest-prdouct__slider__item">
              <c:forEach var="list" items="${newBookList}" varStatus="g">
                <c:if test="${g.index < 3}">
                <a href="bookDetail.do?bid=${list.itemId}" class="latest-product__item">
                  <div class="latest-product__item__pic">
                    <img src="${list.cover}" alt="${list.cover}" />
                  </div>
                  <div class="latest-product__item__text">
                    <h6>${list.title}</h6>
                    <span>${list.salePrice}</span>
                  </div>
                </a>
                </c:if>
              </c:forEach>
            </div>
            <div class="latest-prdouct__slider__item">
              <c:forEach var="list" items="${newBookList}" varStatus="g">
                <c:if test="${g.index > 2}">
                <a href="bookDetail.do?bid=${list.itemId}" class="latest-product__item">
                  <div class="latest-product__item__pic">
                    <img src="${list.cover}" alt="${list.cover}" />
                  </div>
                  <div class="latest-product__item__text">
                    <h6>${list.title}</h6>
                    <span>${list.salePrice}</span>
                  </div>
                </a>
                </c:if>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-6 col-md-6">
        <div class="latest-product__text">
          <h4>도서 리뷰</h4>
          <div class="latest-product__slider owl-carousel">
            <div class="latest-prdouct__slider__item">
              <c:forEach var="list" items="${review}" varStatus="g">
                <c:if test="${g.index < 3}">
                  <a href="bookDetail.do?bid=${list.itemId}" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="${list.cover}" alt="${list.cover}" />
                    </div>
                    <div class="latest-product__item__text">
                      <h6>${list.title}</h6>
                      <p>${list.reviewSubject}</p>
                    </div>
                  </a>
                </c:if>
              </c:forEach>
            </div>
            <div class="latest-prdouct__slider__item">
              <c:forEach var="list" items="${review}" varStatus="g">
                <c:if test="${g.index > 2}">
                  <a href="bookDetail.do?bid=${list.itemId}" class="latest-product__item">
                    <div class="latest-product__item__pic">
                      <img src="${list.cover}" alt="${list.cover}" />
                    </div>
                    <div class="latest-product__item__text">
                      <h6>${list.title}</h6>
                      <p>${list.reviewSubject}</p>
                    </div>
                  </a>
                </c:if>
              </c:forEach>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Latest Product Section End -->

<script>
  function mainToLike(e) {
		$.ajax({
			method: "post",
			url: "likeBookAdd.do",
      data: { "itemId":e.target.closest("a").children[0].value},
			success: function(result) {
        if(result.retCode == 'Success') {
          alert("찜하기 추가 완료!")
        } else {
          alert("찜하기 추가 중 오류 발생")
        }
  	  },
    	error: function(reject) {
				console.log(reject)
      }
    })
  }

  function mainToCart(e) {
		$.ajax({
			method: "post",
			url: "cartAdd.do",
      data: { "itemId":e.target.closest("a").children[0].value},
			success: function(result) {
        if(result.retCode == 'Success') {
          alert("장바구니 추가 완료!")
        } else {
          alert("장바구니 추가 중 오류 발생")
        }
  	  },
    	error: function(reject) {
				console.log(reject)
      }
    })
  }
</script>