<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg"
	data-setbg="img/breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="breadcrumb__text">
					<h2>장바구니</h2>
					<div class="breadcrumb__option">
						<a href="main.do">Home</a> <span>장바구니</span>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Breadcrumb Section End -->

<!-- Shoping Cart Section Begin -->
<section class="shoping-cart spad">
	<div class="container">
		<form action="orderForm.do" method="post">
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th class="shoping__product">Books</th>
								<th>가격</th>
								<th>갯수</th>
								<th>총액</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="cart" items="${list}">
								<tr>
									<td class="shoping__cart__item"><input type="hidden"
										value="${cart.itemId }" name="${cart.itemId }Id"><img src="${cart.cover }"
										alt="" />
										<h5><a href="bookDetail.do?bid=${cart.itemId}" style="color: black">${cart.title}</a></h5></td>
									<td class="shoping__cart__price">${cart.salePrice }</td>
									<td class="shoping__cart__quantity">
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="${cart.itemCnt}" name="${cart.itemId }Cnt"/>
											</div>
										</div>
									</td>
									<td class="shoping__cart__total cntPrice"></td>
									<td class="shoping__cart__item__close"><span
										class="icon_close"></span></td>
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
					<a href="bookList.do" class="primary-btn cart-btn"><i
						class="fa fa-shopping-cart"></i> CONTINUE SHOPPING</a>
				</div>
			</div>
			<div class="col-lg-6"></div>
			<div class="col-lg-6">
				<div class="shoping__checkout">
					<h5>Cart Total</h5>
					<ul>
						<li>Total <span id="totalPrice"></span></li>
					</ul>
					<button type="submit" class="primary-btn" id="toOrder" style="border: none; width: 100%;">주문하러 가기</button>
				</div>
			</div>
		</div>
	</form>
	</div>
</section>
<!-- Shoping Cart Section End -->

<script>
	$(window).on("load", function() {
		let toPri = 0;

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
			
			getTotal();
		});

		function getTotal(){
			let temp = document.querySelectorAll(".pro-qty");
			toPri = 0;
			for(let i = 0; i < temp.length; i++) {
				temp[i].closest("tr").children[3].innerHTML = temp[i].closest("tr").children[1].innerHTML * temp[i].children[1].value;
				toPri += parseInt(temp[i].closest("tr").children[3].innerHTML);
			}
			$("#totalPrice").text(toPri);
		}
		getTotal();

		
		$(".icon_close").on("click", function() {
			let tr = this.closest("tr");
			let delNum = tr.children[0].children[0].value;
			
			$.ajax({
				method: "post",
				url: "cartDelete.do?itemId=" + delNum,
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
	})
})
</script>
