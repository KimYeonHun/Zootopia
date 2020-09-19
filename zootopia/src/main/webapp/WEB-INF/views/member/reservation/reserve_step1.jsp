<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js"integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A=="crossorigin="anonymous">
	
</script>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"crossorigin="anonymous">

<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"crossorigin="anonymous"></script>

<!-- bootstrap datepicker -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css" integrity="sha512-p4vIrJ1mDmOVghNMM4YsWxm0ELMJ/T0IkdEvrkNHIcgFsSzDi/fV7YxzTzb3mnMvFPawuIyIrHcpxClauEfpQg==" crossorigin="anonymous" />

<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous"></script> -->
<script src="${pageContext.request.contextPath}/res/js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous"></script>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
  
  <%@ include file="/WEB-INF/template/header.jsp"%>
    <!-- 
    
    1. 정기 예약 
    요일 선택 
    시간 선택  -->
    
    <!-- 
    2. 1회 예약
    날짜 선택 
    시간선택 
    위치 선택 
     -->
     
     <script>
	$(function() {	
		$('#datePicker').datepicker({
		    format: "yyyy-mm-dd",	//데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
		    startDate: '0d',	//달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
		    endDate: '+10d',	//달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
		    
		    autoclose : false,	//사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
		    calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
		    
		    clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
// 		    datesDisabled : ['2020-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
// 		    daysOfWeekDisabled : [0,6],	//선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
// 		    daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
		    disableTouchKeyboard : false,	//모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
		    immediateUpdates: false,	//사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
		    multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
		    multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
		    templates : {
		        leftArrow: '&laquo;',
		        rightArrow: '&raquo;'
		    }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
		    showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
// 		    title: "테스트",	//캘린더 상단에 보여주는 타이틀
		    todayHighlight : true ,	//오늘 날짜에 하이라이팅 기능 기본값 :false 
		    toggleActive : false,	//이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
		    weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
		    language : "ko"	//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
		    
		});//datepicker end
	});//ready end
</script>

 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
 <style>
   #wrap{
        margin-top: 100px;
    }
    #datePicker{
        margin-top: 10px;
    }
    
    
    * { font-family: 'Spoqa Han Sans', 'Spoqa Han Sans JP', 'Sans-serif'; }
 
 </style>
<div class="container-fluid text-center" style="margin-top:150px;">
<div class="offset-2 col-8">

<h1 class="text-primary" id="wrap">하루 예약</h1>




<form  class="form" method="post">

	<label class="font-weight-bold text-primary "> 예약하실 날짜와 시간을 선택해주세요</label><br>

        <div class= "text-center" >
        <input type="text" id="datePicker" name ="reservation_day" required autocomplete="off" >
      
        <div id="timePicker">
			<br><select   name="available_start_time" required>
						<option value="">--</option>
						<option value="09:00">09:00</option>
						<option value="10:00">10:00</option>
						<option value="11:00">11:00</option>
						<option value="12:00">12:00</option>
						<option value="13:00">13:00</option>
						<option value="14:00">14:00</option>
						<option value="15:00">15:00</option>
						<option value="16:00">16:00</option>
						<option value="17:00">17:00</option>
						<option value="18:00">18:00</option>
						<option value="19:00">19:00</option>
						<option value="20:00">20:00</option>
						<option value="21:00">21:00</option>
					</select>
			
			부터
		
				<select  name="available_finish_time" required>
					<option value="">--</option>
					<option value="09:00">09:00</option>
					<option value="10:00">10:00</option>
					<option value="11:00">11:00</option>
					<option value="12:00">12:00</option>
					<option value="13:00">13:00</option>
					<option value="14:00">14:00</option>
					<option value="15:00">15:00</option>
					<option value="16:00">16:00</option>
					<option value="17:00">17:00</option>
					<option value="18:00">18:00</option>
					<option value="19:00">19:00</option>
					<option value="20:00">20:00</option>
					<option value="21:00">21:00</option>
				</select>
				
				까지
				
					<button id="search" type="submit" class="btn btn-primary "> 펫시터 검색</button>
				</div>
		</div>
  
</form>
</div>
</div>


<br>

<br>

<br>

<br>

<br>

<div class="row">
    <div class="offset-2 col-8">
   
<!--         <table class="table table-sm table-hover"> -->
<!--             <tbody> -->
<%--              <c:forEach var="petsitter" items="${list}"> --%>
<!--                 <tr class="text-center"> -->
<%--                  <td style="width:200;" ><a href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}"><img src="${pageContext.request.contextPath}/petsitter/img/${petsitter.petsitter_no}" width=200, height=200></a></td> --%>
<%--                  <td style="width:100; height: 100;"><a href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}">${petsitter.petsitter_nick} 매니저</a></td> --%>
<%--                  <td style="width:200;" ><a  href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}">${petsitter.petsitter_career}</a></td> --%>
<!--                 </tr> -->
<%--                  </c:forEach> --%>
<!--             </tbody> -->

<!--         </table> -->
 
 
 
 <div style="background: rgb(252,252,252); display: flex; justify-content: center; align-items: center;
 flex-direction: column;" class="container-fluid ">  
 
 <div style="display: flex; flex-wrap: wrap; justify-content: space-between; margin-bottom: 100px; ">
 
<c:forEach var="petsitter" items="${list}">   

 <c:if test="${petsitter.sitter_accept eq'승인'}">
<div  style="width:310px; height: 462px; border:1px solid rgb(235,235,235); box-shadow: rgba(0,0,0,0.07) 1px 1px 12px; display: flex; flex-direction: column;
align-items: center; padding-left:10px; border-radius: 3px; margin-top: 100px;
margin-left: 20px; margin-right: 20px;">

	<div style="background-size:cover;  left: 0px; right: 0px; top: 0px; bottom: 0px; ">
		<a href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}"><img src="${pageContext.request.contextPath}/petsitter/img/${petsitter.petsitter_no}" 
		style="border-radius: 5px; margin-top: 10px;" width="250px" height="250px" ></a>
	</div>
	<br>
	<div style="font-size: 18px; letter-spacing: -0.2px; font-weight: bold;">
		<p ><a href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}">${petsitter.petsitter_nick} 펫 매니저</a></p>
	</div>

	<div style="width: 219px; height: 88px; font-size: 13px; line-height: 23px; color: rgb(77,80,85); overflow: hidden;
	text-overflow: ellipsis; display: -webkit-box; ">
		<p><a  href="${pageContext.request.contextPath}/petsitter/sitter_detail/${petsitter.petsitter_no}">${petsitter.career_info}</a></p>	
	</div>

	</div>
	
	 </c:if>
	 </c:forEach>
</div>
</div>

       
    </div>
</div>




<!-- 펫시터 사진 펫시터 이름  펫시터 경력 (경력 어떻게 보여줄지..?) 예약하기 버튼  : 이름 선택 시 펫시터 상세 정보 보는 페이지-->







