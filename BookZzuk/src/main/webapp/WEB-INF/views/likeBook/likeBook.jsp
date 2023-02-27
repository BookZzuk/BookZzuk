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
					<h2>찜 목록</h2>
					<div class="breadcrumb__option">
						<a href="main.do">Home</a> <span>찜 목록</span>
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
		<div class="row">
			<div class="col-lg-12">
				<div class="shoping__cart__table">
					<table>
						<thead>
							<tr>
								<th><input type="checkbox" id="allChkBox" /></th>
								<th class="shoping__product">Books</th>
								<th>정상가</th>
								<th>할인가</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="bookLike" items="${list}">
								<tr>
									<td><input type="checkbox" class="chkBox" /> <input
										type="hidden" value="${bookLike.itemId }"></td>
									<td class="shoping__cart__item"><img
										src="${bookLike.cover }" alt="" />
										<h5>${bookLike.title }</h5></td>
									<td class="shoping__cart__price">${bookLike.stdPrice }</td>
									<td class="shoping__cart__price">${bookLike.salePrice }</td>
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
						class="fa fa-shopping-cart"></i> CONTINUE SHOPPING</a> <a href="#"
						class="primary-btn cart-btn cart-btn-right" id="addCart"> <i
						class="fa fa-shopping-bag"></i> INTO THE CART
					</a>
				</div>
			</div>
		</div>
	</div>
	</div>
</section>
<script>
  const uid = "";
  $("#allChkBox").on("change", function() {
    document.querySelectorAll('tbody input[type="checkbox"]').forEach((chk) => {
      chk.checked = this.checked;
    })
  })

  $(".chkBox").on("change", function() {
    let allChkBox = $("#allChkBox");
    let othChkBox = document.querySelectorAll('tbody input[type="checkbox"]');

    for(let i = 0; i < othChkBox.length; i++) {
      if(othChkBox[i].checked != true) {
        document.querySelector('thead input[type="checkbox"]').checked = false;
        return;
      }
     document.querySelector('thead input[type="checkbox"]').checked = true;
    }
  })

  $("#addCart").on("click", function() {
    let cart = document.querySelectorAll('tbody input[type="checkbox"]:checked');

    if(cart.length == 0) {
      alert("선택된 책이 없습니다!");
      return;
    }

    let str = "";
    for (let i = 0; i < cart.length; i++) {
      str += cart[i].closest("tr").children[0].children[1].value + ",";
    }

    $.ajax({
      method: "post",
      url: "cartAdd.do",
      data: {userId:uid,itemId:str},
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
        console.log(reject);
      }
    })
  })

  $(".icon_close").on("click", function() {
    let tr = this.closest("tr");
    tr.remove();
    let delNum = tr.children[0].children[1].value;

    $.ajax({
      method: "post",
      url: "likeBookDelete.do?itemId=" + delNum,
      success: function(result) {
        if(result.retCode == "Success"){
        } else if (result.retCode == "Fail") {
          alert("처리중 오류 발생");
        }
      },
      error: function(reject) {
        console.log(reject)
      }
    })
  })
</script>
<!-- Shoping Cart Section End -->
