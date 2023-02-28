<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <style>
    textarea {
	    border: 1px solid #ebebeb;
	     resize: none;
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
   margin-left:10px;

}
    </style>


    
<div class="container">
         
            <div class="checkout__form">
                <h4>1:1문의내역</h4>
              
                    <div class="row"> 
                      <div class="col-lg-8 col-md-6">
                  

  <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>제목</p>
                                        <input style="color: black;" type="text" value="${articeDetail.title}">
                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>작성자</p>
                                        <input style="color: black;" type="text" value="${articeDetail.userId}">
                                    </div>
                                </div>
                       	</div>
					<div class="checkout__input">
						<p>
							내용
						</p>
						<%-- <input style="color: black;" type="text" value="${noticeDetail.noticeSubject}"> --%>
					<textarea rows="10" cols="100">${articeDetail.contents}</textarea>
					</div>
					
                          
                       
                           
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                      
                                <div class="checkout__order__products" onclick="location.href='memberInfoMod.do'">회원정보 수정하기</div>
                                <div class="checkout__order__products" onclick="location.href='delivery.do'">배송조회</div>
      							  <div class="checkout__order__products">찜 목록</div>
      							    <div class="checkout__order__products">장바구니</div>
      							      <div class="checkout__order__products" onclick="location.href='qnaList.do'">1:1문의</div>
                            </div>
                        </div> 
                        
                   
					
                  
                   
           
        </div>
          <c:choose>
        <c:when test="${!empty qnaReplyDetail.contents}">
             	 <div class="checkout__input"> 
						<h4>
							문의글 답변
						</h4>
						<%-- <input style="color: black;" type="text" value="${noticeDetail.noticeSubject}"> --%>
					<textarea rows="10" cols="100">${qnaReplyDetail.contents}</textarea>
					 </div>	 
				</c:when>
				</c:choose>	
					 <button class="site-btn" onclick="location.href='qnaList.do'">뒤로가기</button>
				
				<c:choose>	 
                 <c:when test="${empty qnaReplyDetail.contents}">							
                   <button class="site-btn" onclick="location.href='qnaDel.do?articleNum=${articeDetail.articleNum}'">삭제하기</button>
                   </c:when>
                   </c:choose>
</div>

</div>
     
