<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>글쓰기</h1>



<form action="f_edit" method="post">
	
	<input type="hidden" name="f_board_no" value="${f_boardDto.f_board_no}">
	제목 : <input type="text" name="f_title" value="${f_boardDto.f_title}"><br><br>
	내용 : <textarea name="f_content" rows="30" cols="30">${f_boardDto.f_content}</textarea><br><br>
	<%-- 날짜:<input type="text" name="q_when" value="${q_boardDto.q_when}"> --%>	
<input type="submit" value="등록">
</form>