<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<div class="checkout__form">
		<h4>배송조회</h4>
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="shoping__product">Products</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Total</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="list" items="${orderDetailList}">
								<tr>
									<td class="shoping__cart__item"><img src="img/logo.png"
										alt=""> <!-- <img src="img/${list.cover}" alt=""> -->
										<h5>${list.title}</h5></td>
									<td class="shoping__cart__price">${list.price}</td>
									<td class="shoping__cart__price">${list.itemCnt}</td>
									<td class="shoping__cart__total">
										${list.price*list.itemCnt}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__btns">
					<a class="primary-btn cart-btn cart-btn-right"> total :
						${orderDetailList[0].totalPrice} </a>
				</div>
			</div>
			<button onclick="location.href='delivery.do'" class="site-btn">뒤로가기</button>
		</div>
	</div>