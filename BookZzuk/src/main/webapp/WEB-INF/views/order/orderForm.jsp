<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<!-- jQuery -->
<script
  type="text/javascript"
  src="https://code.jquery.com/jquery-1.12.4.min.js"
></script>
<!-- iamport.payment.js -->
<script
  type="text/javascript"
  src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"
></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
        <div class="breadcrumb__text">
          <h2>결제하기</h2>
          <div class="breadcrumb__option">
            <a href="main.do">Home</a>
            <span>결제하기</span>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
  <div class="container">
    <div class="checkout__form">
      <h4>결제 상세 정보</h4>
      <form method="post" id="form">
        <div class="row">
          <div class="col-lg-8 col-md-6">
            <div class="row">
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>이름<span>*</span></p>
                  <input type="text" name="name" id="name" value="${user.name}" />
                </div>
              </div>
            </div>
            <div class="checkout__input">
              <p>주소<span>*</span></p>
              <div class="row">
                <div class="col-lg-8">
                  <div class="checkout__input">
                    <input
                      type="text"
                      placeholder="우편번호"
                      class="checkout__input__add"
                      style="margin-bottom: 0; width: 50%"
                      id="zoneCode"
                    />
                    <button
                      type="button"
                      class="primary-btn"
                      style="border: none"
                      id="addrBtn"
                    >
                      우편번호 찾기
                    </button>
                  </div>
                </div>
              </div>
              <input
                type="text"
                placeholder="도로명 주소"
                class="checkout__input__add"
                id="addr"
              />
              <input
                type="text"
                placeholder="상세 주소"
                name="addr"
                id="addrDetail"
              />
            </div>
            <div class="row">
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>전화번호<span>*</span></p>
                  <input
                    type="text"
                    name="phone"
                    id="phone"
                    value="${user.phone}"
                  />
                </div>
              </div>
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>Email<span>*</span></p>
                  <input
                    type="text"
                    name="email"
                    id="email"
                    value="${user.email}"
                  />
                </div>
              </div>
            </div>
            <div class="checkout__input">
              <p>주문시 요청 사항</p>
              <input
                type="text"
                placeholder="요청 사항을 적어 주세요"
                name="request"
                id="request"
              />
            </div>
          </div>
          <div class="col-lg-4 col-md-6">
            <div class="checkout__order">
              <h4>주문 내역</h4>
              <div class="checkout__order__products">
                Books <span>합계</span>
              </div>
              <ul>
                <c:forEach var="cart" items="${list}">
                  <li
                    style="width: 70%; display: inline-block"
                    class="bookTitle"
                  >
                    <input type="hidden" value="${cart.itemId}" class="itemId">
                    <input type="hidden" value="${cart.itemCnt}" class="itemQty">
                    <input type="hidden" value="${cart.itemCnt * cart.salePrice}" class="itemPrice">
                    ${cart.title}
                  </li>
                  <span style="float: right; margin-top: 7px" class="bookPrice">
                    ${cart.salePrice * cart.itemCnt}
                  </span>
                </c:forEach>
              </ul>
              <div class="checkout__order__total">
                총 합계
                <span id="toPri"> </span>
              </div>
              <div class="checkout__input__checkbox">
                <label for="payment">
                  결제 내역을 확인했습니다.
                  <input type="checkbox" id="payment" />
                  <span class="checkmark"></span>
                </label>
              </div>
              <button
                type="button"
                class="site-btn"
                id="orderBtn"
                disabled="disabled"
                style="background-color: gray"
                onclick="requestPay()"
              >
                주문하기
              </button>
            </div>
          </div>
        </div>
      </form>
    </div>
  </div>
</section>
<!-- Checkout Section End -->

<script>
  let bookPrice = document.querySelectorAll(".bookPrice");
  let toPri = 0;
  for (let temp of bookPrice) {
    toPri += parseInt(temp.innerHTML);
  }

  $("#toPri").text(toPri);

  $("#payment").on("click", function () {
    if (this.checked == true) {
      $("#orderBtn").removeAttr("disabled");
      $("#orderBtn").removeAttr("style");
    } else {
      $("#orderBtn").attr("disabled", "disabled");
      $("#orderBtn").attr("style", "background-color: gray");
    }
  });

  $("#addrBtn").on("click", function () {
    new daum.Postcode({
      oncomplete: function (data) {
        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        document.getElementById("zoneCode").value = data.zonecode;
        document.getElementById("addr").value = data.roadAddress;
        // 커서를 상세주소 필드로 이동한다.
        document.getElementById("addrDetail").focus();
      },
    }).open();
  });

  let str = "";
  for(let temp of document.querySelectorAll(".itemId")){
    str += temp.value + ",";
  }
  let itemQty = "";
  for(let temp of document.querySelectorAll(".itemQty")){
    itemQty += temp.value + ",";
  }
  let itemPrice = "";
  for(let temp of document.querySelectorAll(".itemPrice")){
    itemPrice += temp.value + ",";
  }

  
  function requestPay() {
    if(document.querySelector("#addr").value == "" || document.querySelector("#name").value == "" || document.querySelector("#phone").value == "" || document.querySelector("#email").value == "") {
      alert("필수 정보를 입력해 주세요")
      return;
    }
    let zoneCode = "" + $("#zoneCode").val();
    let request = "" + $("#request").val();

    var IMP = window.IMP; // 생략가능
    IMP.init("imp22070876"); //iamport 대신 자신의 "가맹점 식별코드"를 사용
    IMP.request_pay(
      {
        pg: "html5_inicis.INIpayTest",
        pay_method: "card",
        merchant_uid: "merchant_" + new Date().getTime(),
        name: str,
        amount: $("#toPri").text(),
        buyer_email: $("#email").val(),
        buyer_name: $("#name").val(),
        buyer_tel: $("#phone").val(),
        buyer_addr: $("#addr").val() + ", " + $("#addrDetail").val(),
        buyer_postcode: zoneCode,
      },
      function (rsp) {
        console.log(rsp);
        if (rsp.success) {
          var msg = "결제가 완료되었습니다.";
          alert(msg);
          $.ajax({
		  	  	method: "post",
		  	  	url: "orderAdd.do",
            data: {"orderNum":rsp.merchant_uid, "orderName":rsp.buyer_name, "itemId":str, "itemQty":itemQty, "itemPrice":itemPrice, "orderAddr":rsp.buyer_addr, "orderPhone":rsp.buyer_tel, "totalPrice":rsp.paid_amount, "request":request, "payNumber":rsp.imp_uid},
		  	  	success: function(result) {
    	        if(result.retCode == "Success"){
                if(confirm("마이 페이지로 이동하시겠습니까?")){
                  location.href="delivery.do"
                }
    	        } else if (result.retCode == "Fail") {
    	          alert("처리중 오류 발생");
    	        }
            },
           	error: function(reject) {
			      	console.log(reject)
            }
          })
        } else {
          var msg = "결제에 실패하였습니다.";
          msg += "에러내용 : " + rsp.error_msg;
          alert(msg);
        }
      }
    );
  }
</script>
