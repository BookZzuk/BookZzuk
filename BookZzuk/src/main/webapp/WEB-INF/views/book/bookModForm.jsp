<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Product Details Section Begin -->
<section class="product-details spad">
	<div class="container">
		<div class="row">
			<form action="bookMod.do" enctype="multipart/form-data" method="post">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<input type="file" value = "${book.cover}" ></input>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">

					<div class="product__details__text">
						<ul>
							<li><b>품목번호</b><input name="bid" readonly value=""></input></li>
							<li><b>도서명</b><input name="title" value="${book.title}"></input></li>
							<li><b>저자</b><input name="author" value="${book.author}"></input></li>
							<li><b>정가</b><input name="stdPrice" value="${book.stdPrice}"></input></li>
							<li><b>할인가격</b><input name="salePrice"
								value="${book.salePrice}"></input></li>
							<li><b>설명</b><input name="description"
								value="${book.description}"></input></li>
						</ul>
						
						<ul>
							<li><b>출판사</b> <input name="publisher"
								value="${book.publisher}"></input></li>
							<li><b>카테고리분류</b> <input name="category"
								value="${book.category}"></input></li>
							<li><b>출판일</b> <input type="date" name="pubDate"
								value="${book.pubDate}"></input></li>
							<li><b>ISBN코드</b> <input name="isbn" value="${book.isbn}"></input></li>
						</ul>
						<button type="submit" class="primary-btn">수정완료</button>
					</div>
				</div>
			</form>
			<div class="col-lg-12">
				<div class="product__details__tab">
					<ul class="nav nav-tabs" role="tablist">
						<li class="nav-item"></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane-active" id="tabs-3" role="tabpanel"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Details Section End -->


<!-- Js Plugins -->
<script>
	let urlParams = new URL(location.href).searchParams;
	let bid = urlParams.get('bid');
	console.log(bid);
	document.getElementsByName("bid")[0].setAttribute('value', bid);
</script>
