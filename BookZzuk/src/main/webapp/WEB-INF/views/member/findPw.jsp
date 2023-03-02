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
  
</style>

<div id="id01" class="">
  <form class="modal-content" action="findPw.do" method="post">
    <div class="container2">
      <h1>비밀번호 찾기</h1>
      <hr />
      <label for="member_email"><b>이메일</b></label>
      <input type="text" placeholder="Email" name="email" required />

      <label for="member_id"><b>아이디</b></label>
      <input type="text" placeholder="ID" name="id" required />

      <label for="member_name"><b>이름</b></label>
      <input type="text" placeholder="Name" name="name" required />

      <label for="member_phone"><b>연락처</b></label>
      <input type="text" placeholder="phone" name="phone" required />

      <div class="clearfix">
        <button type="submit" class="signupbtn">확인</button>
        <a href="loginForm.do"><button type="button" class="cancelbtn">취소</button></a>
      </div>
    </div>
  </form>
</div>
