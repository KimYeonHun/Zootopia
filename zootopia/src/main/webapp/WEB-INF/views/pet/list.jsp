<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h1>MY PET 목록</h1>

<hr>
<a href="list?col=pet_name&order=asc">이름순</a>
<a href="list?col=when&order=desc">최신 등록순</a>


<hr>
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
			<input type="hidden" name="member_id "value="${petDto.member_id}">
			
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
