<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
						<p>
							ID
						</p> 
						<input readonly style="color: black;" type="text" name=userId value="${vo.userId}">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="checkout__input">
						<p>
							NAME
						</p>
						<input style="color: black;" type="text" name=userName value="${vo.name}">
					</div>
				</div>
			</div>
				<div class="checkout__input">
				<p>
					PASSWORD
				</p>
				<input type="text"  style="color: black;" name=userPw value="${vo.userPw}"> 
			</div>
			<div class="checkout__input">
				<p>
					ADDRESS
				</p>
				<input type="text"  style="color: black;" name=userAddr  value="${vo.addr}"> 
			</div>
			<div class="checkout__input">
				<p>
					PHONE
				</p>
				<input type="text" style="color: black;"
					class="checkout__input__add"  name=userPhone value="${vo.phone}"> 
			</div>
			<div class="checkout__input">
				<p>
					EMAIL
				</p>
				<input style="color: black;" type="text" name=userEmail value="${vo.email}">
			</div>
			<div class="checkout__input">
				<!-- <p>
					GRADE
				</p> -->
				<input  type="hidden" style="color: black;" type="text" name=userGrade value="${vo.grade}">
			</div>
		</div>
	</div>
	<button  onclick="location.href='memberInfo.do'" class="site-btn" >수정취소</button>
	<button type="submit" class="site-btn" >수정완료</button>
</div>
</form>