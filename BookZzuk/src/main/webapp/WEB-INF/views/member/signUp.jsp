<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    

  <form action="signUp.do"  method="post" name="userInfo">
    <div class="container">
      <h1>회원 가입</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="member_id"><b>아이디 : </b></label>
      <input type="text" placeholder="ID" name="user_id" onkeydown="inputIdChk()" required>
	  <input type="button" value="중복체크" onclick="fn_dbCheckId()" name="dbCheckId" class="checkId">
	  <input type="hidden" name="idDuplication" value="idUncheck">
	  
      <label for="member_pw"><b>비밀번호 : </b></label>
      <input type="password" placeholder="Password" name="user_pw" required>
      
      <label for="member_name"><b>이름 : </b></label>
      <input type="text" placeholder="Name" name="user_name" required>
      
      <label for="member_age"><b>생년월일 : </b></label>
      <input type="date" name="user_age" required>
      
      <label for="member_addr"><b>주소 : </b></label>
      <input type="text" placeholder="addr" name="user_addr" required>
      
      <label for="member_email"><b>이메일 : </b></label>
      <input type="text" placeholder="email" name="user_email" required>
      
      <label for="member_phone"><b>연락처 : </b></label>
      <input type="text" placeholder="phone" name="user_phone" required>
      

      <div class="clearfix">
        <button type="submit" class="signupbtn">회원가입</button>
        <button type="reset" class="cancelbtn">취소</button>
      </div>
    </div>
  </form>



