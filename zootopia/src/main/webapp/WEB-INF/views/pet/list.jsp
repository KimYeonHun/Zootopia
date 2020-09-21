<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="/WEB-INF/template/header.jsp"%>


<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<hr>
<h1>MY PET 목록</h1>




<input type="hidden" name="member_id "value="${userinfo.member_id}">
<table border="1">
	<thead>
		<tr>
			<th>Pet 번호</th>
			<th>Pet 이름</th>
			<th>품종</th>
		    <th>사용자</th>
			<th>반려 동물 종류</th>
			<th>크기 분류</th>
			<th>등록일</th>
			<th>관리메뉴</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="petDto" items="${list}">
			<tr>
			    <td>${petDto.pet_no}</td>
				<td>${petDto.pet_name}</td>
				<td>${petDto.pet_kind}</td>
			     <td>${petDto.member_id}</td>
				<td>${petDto.pet_type}</td>
				<td>${petDto.pet_size}</td>
				<td>${petDto.when}</td>
				<td><a href="detail/${petDto.pet_no}">상세</a> <a
					href="${pageContext.request.contextPath}/pet/edit?pet_no=${petDto.pet_no}">수정</a>
					<a href="delete/${petDto.pet_no}">삭제</a></td>
			</tr>
		</c:forEach>
		
	</tbody>
</table>
			<a class="btn btn-info" href="${pageContext.request.contextPath}">홈으로</a>
				<a class="btn btn-info" href="${pageContext.request.contextPath}/member/mypage">뒤로가기</a>
<%@ include file="/WEB-INF/template/footer.jsp"%>