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

<script>
function btn_fid(){
	var name = $('#name').val();
 	var email = $('#email').val();
 	var tel = $('#tel').val();

 	var postData = {'user_name' : name , 'user_email' : email , 'user_phone' : tel};

	$.ajax({
        url:'findId.do',
        type:'POST',
        data: postData,
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        dataType : "json",
		
success: function(result) {
	var emailLists = data.user_email;
	var emailLength = emailLists.length
	var emailfind = emailLists.substring(1, emailLength-1)
    if (result.retCode == "Success") {
    	alert($("#emailList").append("<h1>"+"회원님의 정보로 등록된 이메일은 : "+emailfind+" 입니다.</h1>"));
    } else if(result.retCode == "Fail") {
    	alert('해당 정보가 없습니다.');
    
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
    action="findId.do"
    method="post"
  >
    <div class="container2">
      <h1>아이디 찾기</h1>
      <hr />
      <label for="member_email"><b>이메일</b></label>
      <input type="text" placeholder="Email" name="user_email" id="email" required />

      <label for="member_name"><b>이름</b></label>
      <input type="text" placeholder="Name" name="user_name" id="name" required />

      <label for="member_phone"><b>연락처</b></label>
      <input type="text" placeholder="Phone" name="user_phone" id="tel" required />

      <div class="clearfix">
        <button type="button" class="signupbtn" onclick="btn_fid()">확인</button>
        <a href="loginForm.do"><button type="button" class="cancelbtn">취소</button></a>
      </div>
    </div>
  </form>
</div>