<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<form action="login.do" method="post">
  <table class="table">
    <tr>
      <th>ID</th><td><input type="text" name="bid"></td>
    </tr>
    <tr>
      <th>Pass</th><td><input type="password" name="bpw"></td>
    </tr>
    <tr>
      <td colspan="2" align="center">
        <input type="submit" value="로그인">
        <input type="reset" value="취소">
        <a href="#">아이디찾기</a>
        <a href="#">비밀번호찾기</a>
      </td>
    </tr>
  </table>
</form>  