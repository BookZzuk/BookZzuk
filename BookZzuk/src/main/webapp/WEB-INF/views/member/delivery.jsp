<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		<h4>배송조회</h4>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="a">
					<div class="shoping-cart shoping__cart__table">
						<table>
							<thead>
								<tr>
									<th>주문번호</th>
									<th>주문일</th>
									<th>금액</th>
									<th>주문상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="list" items="${orderList}">
									<tr
										onclick="location.href='deliveryDetail.do?orderNum=${list.orderNum}'">
										<td>${list.orderNum}</td>
										<td>${list.orderDate}</td>
										<td>${list.totalPrice}</td>
										<td>${list.progress}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="checkout__order">
					<div class="checkout__order__products"
						onclick="location.href='memberInfoMod.do'">회원정보 수정하기</div>
					<div class="checkout__order__products"
						onclick="location.href='delivery.do'">배송조회</div>
					<div class="checkout__order__products"
						onclick="location.href='likeBook.do'">찜 목록</div>
					<div class="checkout__order__products"
						onclick="location.href='cart.do'">장바구니</div>
					<div class="checkout__order__products"
						onclick="location.href='qnaList.do'">1:1문의</div>
				</div>
			</div>
		</div>
	</div>
</div>

