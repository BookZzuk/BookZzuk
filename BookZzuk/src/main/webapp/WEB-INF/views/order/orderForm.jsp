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
      <form action="orderAdd.do" method="post" id="form">
        <div class="row">
          <div class="col-lg-8 col-md-6">
            <div class="row">
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>이름<span>*</span></p>
                  <input type="text" name="uid" value="${user.name}" />
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
                  <input type="text" name="phone" value="${user.phone}" />
                </div>
              </div>
              <div class="col-lg-6">
                <div class="checkout__input">
                  <p>Email<span>*</span></p>
                  <input type="text" name="email" value="${user.email}" />
                </div>
              </div>
            </div>
            <div class="checkout__input">
              <p>주문시 요청 사항</p>
              <input
                type="text"
                placeholder="요청 사항을 적어 주세요"
                name="request"
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

  var IMP = window.IMP;
  IMP.init("imp22070876");
  let books = document.querySelectorAll(".bookTitle");
  let str = "";
  for (let i = 0; i < books.length; i++) {
    str += books[i].innerHTML;
  }
  console.log(str);

  function requestPay() {
    IMP.request_pay(
      {
        pg: "kakao.TC0ONETIME",
        pay_method: "card",
        merchant_uid: "",
        name: "당근 10kg",
        amount: 1004,
        buyer_email: "Iamport@chai.finance",
        buyer_name: "포트원 기술지원팀",
        buyer_tel: "010-1234-5678",
        buyer_addr: "서울특별시 강남구 삼성동",
        buyer_postcode: "123-456",
      },
      function (rsp) {
        if (rsp.success) {
          // axios로 HTTP 요청
          axios({
            url: "",
            method: "post",
            headers: { "Content-Type": "application/json" },
            data: {
              imp_uid: rsp.imp_uid,
              merchant_uid: rsp.merchant_uid,
            },
          }).then((data) => {
            // 서버 결제 API 성공시 로직
          });
        } else {
          alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
        }
      }
    );
  }

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
</script>
