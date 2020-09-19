<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ include file="/WEB-INF/template/header.jsp"%>  	
      <br><br>
<h1>f글쓰기</h1>



<form action="f_write" method="post">
	제목 : <input type="text" name="f_title"><br><br>
	내용 : <textarea name="f_content"></textarea><br><br>
	<input type="submit" value="등록">
</form>
<br><br>
<%@ include file="/WEB-INF/template/footer.jsp"%>