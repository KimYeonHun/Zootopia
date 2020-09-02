<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>	 
    
<form action="login" method="post">
아이디 <input type="text" name="member_id" required>
비밀번호 <input type="password" name="member_pw" required>
<input type="submit" value="로그인">
<a href="/findid">아이디 찾기</a>
<a href="/findpass">비밀번호 찾기</a>
</form> 