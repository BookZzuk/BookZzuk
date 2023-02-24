<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Page Preloder
<div id="preloder">
	<div class="loader"></div>
</div>
 -->
 <style>

 </style>

<!-- Product Section Begin -->
<section class="product spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-5">
				<div class="sidebar">
					<div class="sidebar__item">
						<h4>도서분류</h4>
						<ul>
							<li><a href="#">소설</a></li>
							<li><a href="#">어쩌구</a></li>
							<li><a href="#">외국문학</a></li>
							<li><a href="#">구데기</a></li>
							<li><a href="#">Ocean Foods</a></li>
							<li><a href="#">Butter & Eggs</a></li>
							<li><a href="#">Fastfood</a></li>
							<li><a href="#">Fresh Onion</a></li>
							<li><a href="#">Papayaya & Crisps</a></li>
							<li><a href="#">Oatmeal</a></li>
						</ul>
					</div>
					<!-- 최근에 본 항목 -->
					<div class="sidebar__item">
						<div class="latest-product__text">
							<h4>Latest Products</h4>
							<div class="latest-product__slider owl-carousel">
								<div class="latest-prdouct__slider__item">
									<a href="#" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="img/latest-product/lp-1.jpg" alt="" />
										</div>
										<div class="latest-product__item__text">
											<h6>Crab Pool Security</h6>
											<span>$30.00</span>
										</div>
									</a> <a href="#" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="img/latest-product/lp-2.jpg" alt="" />
										</div>
										<div class="latest-product__item__text">
											<h6>Crab Pool Security</h6>
											<span>$30.00</span>
										</div>
									</a> <a href="#" class="latest-product__item">
										<div class="latest-product__item__pic">
											<img src="img/latest-product/lp-3.jpg" alt="" />
										</div>
										<div class="latest-product__item__text">
											<h6>Crab Pool Security</h6>
											<span>$30.00</span>
										</div>
									</a>
								</div>
								<!-- 최근에 본항목 3개씩 한div으로 구현할것 -->
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-9 col-md-7">
				<div class="product__discount">
					<div class="section-title product__discount__title">
						<h2>할인중인 인기도서</h2>
					</div>
					<div class="row">
						<div class="product__discount__slider owl-carousel">
							<!-- 할인중인 상품 한블럭 -->
							<div class="col-lg-4">
								<div class="product__discount__item">
									<div class="product__discount__item__pic set-bg"
										data-setbg="img/product/discount/pd-1.jpg">
										<div class="product__discount__percent">-20%</div>
										<ul class="product__item__pic__hover">
											<li><a href="#"><i class="fa fa-heart"></i></a></li>
											<li><a href="#"><i class="fa fa-retweet"></i></a></li>
											<li><a href="#"><i class="fa fa-shopping-cart"></i></a>
											</li>
										</ul>
									</div>
									<div class="product__discount__item__text">
										<span>Dried Fruit</span>
										<h5>
											<a href="#">Raisin’n’nuts</a>
										</h5>
										<div class="product__item__price">
											$30.00 <span>$36.00</span>
										</div>
									</div>
								</div>
							</div>
							<!-- 할인중인 상품 여기까지 -->
						</div>
					</div>
				</div>
				<div class="filter__item">
					<div class="row">
						<div class="col-lg-4 col-md-5">
							<div class="filter__sort">
								<span>Sort By</span> <select>
									<option value="0">Default</option>
									<option value="1">Default</option>
								</select>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="filter__found">
								<h6>
									<span>16</span> Products found
								</h6>
							</div>
						</div>
						<div class="col-lg-4 col-md-3">
							<div class="filter__option">
								<span class="icon_grid-2x2"></span> <span class="icon_ul"></span>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- 상품 목록 한블럭 -->
					<c:forEach var="book" items="${list }">
						<div class="col-lg-3 col-md-6 col-sm-6">
							<div class="product__item">
								<div class="product__item__pic set-bg"
									data-setbg="${book.cover }">
									<ul class="product__item__pic__hover">
										<li><a href="#"><i class="fa fa-heart"></i></a></li>
										<li><a href="#"><i class="fa fa-retweet"></i></a></li>
										<li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
									</ul>
								</div>
								<div class="product__item__text">
									<h6>
										<a href="bookDetail.do?bid=${book.itemId }">${book.title }</a>
									</h6>
									<h5>${book.stdPrice }</h5>
								</div>
							</div>
						</div>
					</c:forEach>
					<!-- 상품 목록 한블럭 여기까지-->
				</div>

				
				<div class="product__pagination">
					<a href="bookList.do?page=1">1</a> <a href="bookList.do?page=2">2</a> <a href="bookList.do?page=3">3</a> <a href="#"><i
						class="fa fa-long-arrow-right"></i></a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>