<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
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

<form action="memberMod.do" method="post">
	<div class="container">
		<div class="checkout__form">
			<h4>My Page</h4>
		</div>
		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="row">
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>ID</p>
							<input readonly style="color: black;" type="text" name=userId
								value="${vo.userId}">
						</div>
					</div>
					<div class="col-lg-6">
						<div class="checkout__input">
							<p>NAME</p>
							<input style="color: black;" type="text" name=userName
								value="${vo.name}">
						</div>
					</div>
				</div>
				<div class="checkout__input">
					<p>PASSWORD</p>
					<input type="text" style="color: black;" name=userPw
						value="${vo.userPw}">
				</div>
				<div class="checkout__input">
					<p>ADDRESS</p>
					<%-- <input type="text" style="color: black;" name=userAddr
						value="${vo.addr}"> --%>
					<div id="div"></div>
					<!-- <input id="zoneCode" type="text" style="color: black;" class="checkout__input__add"  style="margin-bottom: 0; width: 50%"  placeholder="우편번호">
						<input id="addr" type="text" style="color: black;" class="checkout__input__add"  placeholder="도로명 주소"> -->
					<input id="addrDetail" type="text" style="color: black;"
						name=userAddr value="${vo.addr}">
					<button type="button" id="addrBtn" class="primary-btn" border:none;>우편번호
						검색</button>
				</div>
				<div class="checkout__input">
					<p>PHONE</p>
					<input type="text" style="color: black;"
						class="checkout__input__add" name=userPhone value="${vo.phone}">
				</div>
				<div class="checkout__input">
					<p>EMAIL</p>
					<input style="color: black;" type="text" name=userEmail
						value="${vo.email}">
				</div>
				<div class="checkout__input">
					<!-- <p>
					GRADE
				</p> -->
					<input type="hidden" style="color: black;" type="text"
						name=userGrade value="${vo.grade}">
				</div>
			</div>
		</div>
		<button onclick="location.href='memberInfo.do'" class="site-btn">수정취소</button>
		<button type="submit" class="site-btn" id>수정완료</button>
	</div>
</form>

<script>
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
    div = document.getElementById("div");
    div.innerHTML="";
    div.innerHTML +=  '<input id="zoneCode" type="text" style="color: black;" class="checkout__input__add"  style="margin-bottom: 0; width: 50%"  placeholder="우편번호">' +
	'<br><input id="addr" type="text" style="color: black;" class="checkout__input__add"  placeholder="도로명 주소">';
   
  });

</script>