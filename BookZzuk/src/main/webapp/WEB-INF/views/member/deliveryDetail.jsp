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
									<td class="shoping__cart__item"><img src="${list.cover}" alt="${list.cover}">
										<h5><a href="bookDetail.do?bid=${list.itemId}" style="color: black">${list.title}</a></h5></td>
									<td class="shoping__cart__price">${list.price}</td>
									<td class="shoping__cart__price">${list.itemCnt}</td>
									<td class="shoping__cart__total">
										${list.price*list.itemCnt}</td>
									<td class="shopping_cart_item"><a class="site-btn" href="reviewAddForm.do?itemId=${list.itemId}&title=${list.title}&orderNum=${list.orderNum}" style="color: white;" onmouseover="this.style.cursor='pointer'">리뷰 작성하기!</a></td>
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
					<a class="primary-btn cart-btn cart-btn-left" href="delivery.do">뒤로가기</a>
					<a class="primary-btn cart-btn cart-btn-right"> total : ${orderDetailList[0].totalPrice} </a>
					<br><br>
				</div>
			</div>
		</div>
	</div>
	<script>
		function addReview(e) {
			let itemId = e.target.closest("td").children[0].value;
			$.ajax({
				method: "post",
				url: "reviewAdd.do?itemId=" + itemId,
				success: function(result) {
					if(result.retCode == "Success"){
						tr.remove();
						getTotal();
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