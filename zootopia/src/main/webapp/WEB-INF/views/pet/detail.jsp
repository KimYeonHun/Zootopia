<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>Pet 정보</h1>

<h3>대표 pet 이름 : ${petDto.pet_name}</h3>
<h3>대표 pet 성별 : ${petDto.pet_gender}</h3>
<h3>대표 pet 품종 : ${petDto.pet_kind}</h3>
<h3>대표 pet 나이: ${petDto.pet_age}살</h3>
<h3>대표 pet 크기: ${petDto.pet_size}</h3>
<h3>pet 마릿수  : ${petDto.pet_total}마리</h3>
<h3>대표 pet 정보 : ${petDto.pet_intro}</h3>
<h3>대표 pet 접종 여부: ${petDto.pet_vaccin}</h3>
<h3>대표 pet 대소변 유무 : ${petDto.pet_toilet}</h3>