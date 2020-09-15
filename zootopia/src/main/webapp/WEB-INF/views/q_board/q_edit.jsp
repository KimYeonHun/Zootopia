<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>글쓰기</h1>



<form action="q_edit" method="post">
	
	<input type="hidden" name="q_board_no" value="${q_boardDto.q_board_no}">
	제목 : <input type="text" name="q_title" value="${q_boardDto.q_title}"><br><br>
	내용 : <textarea name="q_content" rows="30" cols="30">${q_boardDto.q_content}</textarea><br><br>
	<%-- 날짜:<input type="text" name="q_when" value="${q_boardDto.q_when}"> --%>	
<input type="submit" value="등록">
</form>