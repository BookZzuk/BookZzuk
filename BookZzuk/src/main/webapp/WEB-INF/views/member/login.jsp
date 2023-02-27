<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
  th {
    text-align: right;
  }
  
  td {
    text-align: center;
  }
</style>

<form action="login.do" method="post">
  <table class="table">
    <tr>
      <th>아이디</th>
      <td><input type="text" name="mid" /></td>
    </tr>
    <tr>
      <th>비밀번호</th>
      <td><input type="password" name="mpw" /></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="로그인" />
        <input type="reset" value="취소" />
        <a href = "signUpForm.do"><input type="button" value="회원가입" /></a>
        <a href="findIdForm.do">아이디 찾기</a>
        <a href="findPwForm.do">비밀번호 찾기</a>
      </td>
    </tr>
  </table>
</form>
