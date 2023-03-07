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

<script>

function check_pw(){
    var pw = document.getElementById('pw').value;
    const p2 = document.querySelector('.password-content');
    if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!=''){
        if(document.getElementById('pw').value==document.getElementById('pw2').value){
        	  p2.style.color = 'green';
        	  p2.textContent = `비밀번호가 일치합니다`;
        }
        else{
        	 p2.style.color = 'red';
        	 p2.textContent = `비밀번호가 일치하지 않습니다`;
        }
    }
}


function btn_chk() {
	console.log($('#mid').val())
	if($('#mid').val() != ''){
        $.ajax({
 
            type: 'GET',
            url: 'idcheck.do',
            data: 'id=' + $('#mid').val(),
            dataType: 'json',
            success: function(result) {
                if (result.retCode == "Success") {
                	alert('사용 가능한 아이디입니다.');
                } else if(result.retCode == "Fail") {
                	alert('이미 사용중인 아이디입니다.');
                
                }
            }
        });
    
    } else {
        alert('아이디를 입력하세요.');
        $('#mid').focus();
    }
};
</script>



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
      <input class="id_input" type="text" placeholder="Id" id="mid" name="mid" required/>
      <button type="button" onclick="btn_chk()">중복체크</button>
      <span id="result"></span><br><br>
      
      <label for="member_pw"><b>비밀번호</b></label>
      <input id="pw" type="password" placeholder="Password" name="mpw" required />

      <label for="member_pw2"><b>비밀번호 확인</b></label>
      <p class="password-content"></p>
      <input id="pw2" type="password" placeholder="Password" name="user_pw2" onKeyUp="check_pw();" required />

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