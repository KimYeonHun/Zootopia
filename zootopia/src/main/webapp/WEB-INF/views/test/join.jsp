<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>회원가입</h1>
<form action="join" method="post">
아이디:<input type="text" name="member_id">
비번:<input type="text" name="member_pw">
이름:<input type="text" name="member_name">
폰:<input type="text" name="phone">
생년:<input type="text" name="birthday">
주소:<input type="text" name="post">
기본주소:<input type="text" name="baseaddr">
상세주소:<input type="text" name="extraaddr">
이메일:<input type="text" name="email">
성별:<input type="text" name="gender">
<input type="submit" value="전송">
</form>