
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
            <div class="row">
                <div class="col-lg-12">
                   
                </div>
            </div>
            <div class="checkout__form">
                <h4>My Page</h4>
                <form action="#">
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                            <div class="col-lg-6">
					<div class="checkout__input">
						<p>
							ID
						</p>
						<input readonly style="color: black;" type="text" value="${vo.userId}">
					</div>
				</div>
                          <div class="col-lg-6">
					<div class="checkout__input">
						<p>
							NAME
						</p>
						<input readonly style="color: black;" type="text" value="${vo.name}">
					</div>
				</div>
                            </div>
                           <div class="checkout__input">
				<p>
					ADDRESS
				</p>
				<input readonly type="text"  style="color: black;" value="${vo.addr}"> 
			</div>
                            <div class="checkout__input">
				<p>
					PHONE
				</p>
				<input readonly type="text" style="color: black;"
					class="checkout__input__add"  value="${vo.phone}"> 
			</div>
                            <div class="checkout__input">
				<p>
					EMAIL
				</p>
				<input readonly style="color: black;" type="text" value="${vo.email}">
			</div>
                           <div class="checkout__input">
				<p>
					GRADE
				</p>
				<input readonly style="color: black;" type="text"  value="${vo.grade}">
			</div>
                          
                     
                            
                          
                           
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                           <!--  <h4 onclick="location.href='memberInfoMod.do'">회원정보 수정하기</h4>
                            <h4>배송조회</h4>
                            <h4>찜 목록</h4>
                            <h4>장바구니</h4>
                            <h4>1:1문의</h4> -->
                                
                                <div class="checkout__order__products" onclick="location.href='memberInfoMod.do'">회원정보 수정하기</div>
                                 <div class="checkout__order__products" onclick="location.href='delivery.do'">배송조회</div>
      							  <div class="checkout__order__products">찜 목록</div>
      							    <div class="checkout__order__products">장바구니</div>
      							      <div class="checkout__order__products" onclick="location.href='qnaList.do'">1:1문의</div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>