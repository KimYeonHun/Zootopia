<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>글쓰기</h1>



<form action="q_write" method="post">
	말머리 : <input type="text" name="q_head"><br><br>
	제목 : <input type="text" name="q_title"><br><br>
	내용 : <textarea name="q_content"></textarea><br><br>
	<input type="submit" value="등록">
</form>