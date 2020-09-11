<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<h1>게시판 목록</h1>

<table border="1">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="q_boardDto" items="${list}">
		<tr>
			<td>${q_boardDto.q_board_no}</td>
			<td><a href="${pageContext.request.contextPath}/q_board/content?q_board_no=${q_boardDto.q_board_no}">${q_boardDto.q_title}</a></td>
			<td>${q_boardDto.member_id}</td>
			<td>
				<fmt:parseDate value="${q_boardDto.q_when}" 
							var="time" pattern="yyyy-MM-dd HH:mm:ss"/>
				<fmt:formatDate value="${time}" pattern="yyyy-MM-dd"/>
			</td>
			<td>${q_boardDto.q_read}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

<!-- 검색창 -->
<form action="union" method="post">
	
	<select name="type">
		<option value="q_title" ${param.type == 'q_title' ? 'selected':''}>제목</option>
		<option value="member_id" ${param.type == 'member_id' ? 'selected':''}>작성자</option>
	</select>
	
	<input type="text" name="keyword" placeholder="검색어" value="${param.keyword}">
	
	<input type="submit" value="검색">
	
</form>







