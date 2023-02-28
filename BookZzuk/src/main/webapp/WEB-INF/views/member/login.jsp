<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
* {
	box-sizing: border-box;
}

.f1 {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	border: none;
	width: 25%;
}

.container2 input {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

.f1 h1{
	text-align: center;
}

input[type="text"]:focus, input[type="password"]:focus {
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
.cancelbtn, .signupbtn {
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

.close:hover, .close:focus {
	color: #f44336;
	cursor: pointer;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}

.signupbtn {
	background-color: #04aa6d;
}
</style>

<form class="f1" action="login.do" method="post">
	<div class="container2">
		<h1>로그인</h1>
		<hr />
		<label for="user_Id"><b>아이디</b></label> <input type="text" name="mid"
			placeholder="Id" required /> <label for="user_Pw"><b>비밀번호</b></label>
		<input type="password" name="mpw" placeholder="Password" required />

		<div class="clearfix">
			<button type="submit" class="signupbtn">로그인</button>
		</div>
</form>
<a href="signUpForm.do"><input type="button" value="회원가입" /></a>
<a href="findIdForm.do" style="font-size: large;">아이디 찾기</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="findPwForm.do" style="font-size: large;"> 비밀번호 찾기</a>
</div>

