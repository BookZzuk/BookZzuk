<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c" %>

<style>
  * {
    box-sizing: border-box;
  }

  .modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: none;
    width: 35%; /* Could be more or less, depending on screen size */
  }

  .container2 input {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
  }

  input[type="text"]:focus,
  input[type="password"]:focus {
    background-color: #ddd;
    outline: none;
  }

  .clearfix button {
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
  }

  .clearfix button:hover {
    opacity: 1;
  }

  .cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
  }

  /* Float cancel and signup buttons and add an equal width */
  .cancelbtn,
  .signupbtn {
    float: left;
    width: 50%;
  }

  .close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
  }

  .close:hover,
  .close:focus {
    color: #f44336;
    cursor: pointer;
  }

  /* Clear floats */
  .clearfix::after {
    content: "";
    clear: both;
    display: table;
  }

  /* Change styles for cancel button and signup button on extra small screens */
  @media screen and (max-width: 300px) {
    .cancelbtn,
    .signupbtn {
      width: 100%;
    }
  }

  .signupbtn {
    background-color: #04aa6d;
  }

  .id_input_re_1 {
    color: green;
    display: none;
  }

  .id_input_re_2 {
    color: red;
    display: none;
  }
</style>

<div id="id01" class="">
  <form
    class="modal-content"
    action="signUp.do"
    method="post"
    name="signUp"
    name="userInfo"
  >
    <div class="container2">
      <h1>회원 가입</h1>
      <hr />
      <label for="member_id"><b>아이디</b></label>
      <input class="id_input" type="text" placeholder="Id" name="user_id" required/>

      <label for="member_pw"><b>비밀번호</b></label>
      <input type="password" placeholder="Password" name="user_pw" required />

      <label for="member_pw2"><b>비밀번호 확인</b></label>
      <input type="password" placeholder="Password" name="user_pw2" required />

      <label for="member_name"><b>이름</b></label>
      <input type="text" placeholder="Name" name="user_name" required />

      <label for="member_age"><b>생년월일</b></label>
      <input type="date" name="user_age" required />

      <label for="member_addr"><b>주소</b></label>
      <input type="text" placeholder="Address" name="user_addr" required />

      <label for="member_email"><b>이메일</b></label>
      <input type="text" placeholder="Email" name="user_email" required />

      <label for="member_phone"><b>연락처</b></label>
      <input type="text" placeholder="Phone" name="user_phone" required />

      <div class="clearfix">
        <button type="submit" class="signupbtn">회원가입</button>
        <a href="loginForm.do"
          ><button type="button" class="cancelbtn">취소</button></a
        >
      </div>
    </div>
  </form>
</div>
