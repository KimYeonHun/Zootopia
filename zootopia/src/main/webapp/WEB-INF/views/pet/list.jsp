<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<h1>PET 목록</h1>

<hr>
<a href="">이름순</a>

<hr>
<table border="1">
	<thead>
		<tr>
			<th>Pet 번호</th>
			<th>Pet 이름</th>
			<th>품종</th>
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
				<td>${petDto.pet_type}</td>
				<td>${petDto.pet_size}</td>
				<td>${petDto.when}</td>
				<td><a href="detail/${itemDto.no}">상세</a> 
				<a href="edit?no=${itemDto.no}">수정</a> 
					<a href="delete/${itemDto.no}">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
