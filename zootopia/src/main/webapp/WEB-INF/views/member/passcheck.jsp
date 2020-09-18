<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h1>비번체크</h1>
<form action="../member/passcheck" method="post">
<input type="hidden" name="member_id" value="${userinfo.member_id}">
<input type="password" name="member_pw" placeholder="비밀번호입력" required>
<button type="submit">확인</button>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <h1>비번체크</h1>
<form action="../member/passcheck" method="post">
<input type="hidden" name="member_id" value="${userinfo.member_id}">
<input type="password" name="member_pw" placeholder="비밀번호입력" required>
<button type="submit">확인</button>
>>>>>>> branch 'dong_pet' of https://github.com/KimYeonHun/Zootopia
</form>