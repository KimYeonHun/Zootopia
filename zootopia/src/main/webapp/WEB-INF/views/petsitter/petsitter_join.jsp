<%@page import="com.kh.zootopia.entity.PetSitterDto"%>
<%@page import="com.kh.zootopia.entity.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
	 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js"integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A=="crossorigin="anonymous">
	
</script>
<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"crossorigin="anonymous">

<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<script type="text/javascript">

// 다중 체크박스 (하나만 선택되게 하기)
	function haveCheck1(chk) {
		var have = document.getElementsByName("sitter_checklist");

		for (j = 0; j < have.length; j++) {
			if (have[j] != chk) {
				have[j].checked = false;
			}

		}
	}
	// 다중 체크박스 (하나만 선택되게 하기)
	function haveCheck2(chk) {
		var have = document.getElementsByName("sitter_checklist_two");

		for (j = 0; j < have.length; j++) {
			if (have[j] != chk) {
				have[j].checked = false;
			}
		}
	}
	
	// 다중 체크박스 (하나만 선택되게 하기)
	function haveCheck3(chk) {
		var have = document.getElementsByName("adress");

		for (j = 0; j < have.length; j++) {
			if (have[j] != chk) {
				have[j].checked = false;
			}
		}
	}
	

///////////////////////요일//////////////////////
//////////////////////////////////////////

	function  ChangeDay_mon() {
	
		// 체크 여부 :체크x - > null 체크 0 -> 요일 표시  
		
		//월
		if($("input:checkbox[name=day_mon]").is(":checked") == true){
// 			$("input:checkbox[name=monday]").val("2");
				$('input[name=monday]').val('월요일');
		}else{
// 			$("input:checkbox[name=monday]").val("0");
				$('input[name=monday]').val("0");
		}
	}
	function  ChangeDay_tue() {
		//화
		if($("input:checkbox[name=day_tue]").is(":checked") == true){
			$('input[name=tuesday]').val('화요일');
		}else{
			$('input[name=tuesday]').val("0");
		}
	}
	function  ChangeDay_wed() {
		//수
		if($("input:checkbox[name=day_wed]").is(":checked") == true){
			$('input[name=wednesday]').val('수요일');
			
		}else{
			$('input[name=wednesday]').val("0");
		}
		}
	function  ChangeDay_thu() {
		//목
		if($("input:checkbox[name=day_thu]").is(":checked") == true){
			$('input[name=thursday]').val('목요일');
			
		}else{
			$('input[name=thursday]').val("0");
		}
	}
	function  ChangeDay_fri() {
		//금
		if($("input:checkbox[name=day_fri]").is(":checked") == true){
			$('input[name=friday]').val('금요일');
			
		}else{
			$('input[name=friday]').val("0");
		}
	}
	function  ChangeDay_sat() {
		//토
		if($("input:checkbox[name=day_sat]").is(":checked") == true){
			$('input[name=saturday]').val('토요일');
			
		}else{
			$('input[name=saturday]').val("0");
		}
	}
	function  ChangeDay_sun() {
		//일
		if($("input:checkbox[name=day_sun]").is(":checked") == true){
			$('input[name=sunday]').val('일요일');
			
		}else{
			$('input[name=sunday]').val("0");
		}
		
	}
		/////////////////////////////////////////////
	////////////////////////////////////////////////
	
	
	/////////////////중복 가능 질문 /////////////////////
	//////////////////////////////////////////////////
	
	
	
	
	
	
	///////////////////////////////////////////////
	//1. 무엇을 : 닉네임 중복검사를
	//2. 언제 : 적었을때 바로(oninput) , 입력하고 나서(onblur)
	//3. 어떻게 : 비동기 통신으로
	//4. 예상결과 : 0이면 사용가능, 1이면 사용불가
	function nicknameCheck(){
		console.log("닉네임검사 시작");
		
		var nickname = document.querySelector("input[name=petsitter_nick]").value;
// 		console.log("nickname", nickname);

		var len = nickname.length;
		var isValid = len >=2 && len <8
		
		axios({
			url:"${pageContext.request.contextPath}/petsitter/getnick?petsitter_nick="+nickname,
			method:"POST",
			data:{
				petsitter_nick : nickname  // 서버 이름 :petsitter_nick 변수 이름: nickname
			}
		})
		.then(function(response){
			console.log(response.data);

				var nickLength = document.querySelector(".nick-length");
				var spanNick = document.querySelector(".span-nick");
				if(response.data ==0){ // 중복이 아니고 
					if(isValid){//글자가 맞을 때 
						spanNick.textContent="사용 가능한 닉네임입니다";
					}else{
						spanNick.textContent="닉네임은 2~8자 이내로 입력해주세요";
					}
				}else{// 중복일 때
					spanNick.textContent="사용할 수 없는 닉네임 입니다";
				}	
		});
	}

		
		
	///////////////////////////////////////////////
	
	
	

		
////////////////////////////////////////////////////////////
///////////////////길이 검사 /////////////////////////

function checkLength1(){
	var check_list = document.querySelector(".checkLength1").value;
	
	var len = check_list.length;
	
	var countTag = document.querySelector(".letter-count1");
	countTag.textContent = len;
	
}
		
function checkLength2(){
	var check_list = document.querySelector(".checkLength2").value;
	
	var len = check_list.length;
	
	var countTag = document.querySelector(".letter-count2");
	countTag.textContent = len;
	
}

function checkLength3(){
	var check_list = document.querySelector(".checkLength3").value;
	
	var len = check_list.length;
	
	var countTag = document.querySelector(".letter-count3");
	countTag.textContent = len;
	
}

///////////////////////////////////////////
//////////////닉네임 길이 검사 /////////////

function checkNick(){
	
// 	var nick = document.querySelector("input[name=petsitter_nick]").value;
	
// 	var len = nick.length;
	
// 	var isValid = len >=2 && len <8
	
// 	if(!isValid){
// 		var span = document.querySelector("input[name=petsitter_nick]+span");
// 		span.textContent="닉네임은 2~8자 이내로 입력해주세요 "
		
// 	}else{
// 		var span = document.querySelector("input[name=petsitter_nick]+span");
// 		span.textContent="";
// 	}
	
	
}



//////////////////////////
// 경력 길이 검사 
//////////////////////////
	function careerlength1(){
	var check_list = document.querySelector(".career").value;
	
	var len = check_list.length;
	
	var countTag = document.querySelector(".career-count1");
	countTag.textContent = len;
	
}

	function careerlength2(){
		var check_list = document.querySelector(".introduce").value;
		
		var len = check_list.length;
		
		var countTag = document.querySelector(".career-count2");
		countTag.textContent = len;
		
	}
	
	
</script>
<style>

	textarea{
		 resize: none;
	}
	
	#wrap{
		margin-top:200px;
	}
	
	.select_img img {
		margin:20px 0;
	}
	
/* 	.nick .span-nick{ */
/* 		margin-top:20px; */
/* 	} */

.nick{
	margin-bottom:10px;
}
	
</style>




<div class="container-fluid text-center" id="wrap">
	<div class="row">
	
		<div class="offset-2 col-8">
			<h1 class="text-primary">펫시터 가입 신청</h1>

			<div class="jumbotron">
				<h3 class="text-primary">* 채용안내</h3> <br> <br> 
				<h6 class="text-primary">* 면접</h6> 코로나19로 인해 모든 면접은
				화상(ZOOM)으로 진행됩니다. <br><br> 
				<h6 class="text-primary">* 펫시터 활동 범위</h6>
				펫시터는 현재 서울 지역에서만 활동이 가능하며, 이후 지역을 늘려갈 예정입니다.
				<br> 지원하실 때 참고 바랍니다.<br>
				 <br> <h6 class="text-primary">* 서비스 교육( ★필수 수강★) 및 훈련사 교육(
				★선택 수강★)</h6> 교육날짜와 방법은 면접 통과 후 안내드립니다. <br> <br> #
				훈련사 교육은 평일에만 진행되며, 서울에 위치한 훈련소에서 진행됩니다.  
				 <br># 훈련사 교육은 펫시터 활동
				중에도 수강 가능합니다.<br> # 서비스 교육과 훈련사 교육은 다른 날 진행됩니다. <br># 교육
				후 추가적으로 필요한 내용은 영상(유튜브)를 통해 상시 제공됩니다. <br>
				<br>
				<br>
			</div>

		
				<div class="row">
				<div class="offset-4 col-4">
					<input type="checkbox" class="control-input" id="join_check" required>
					<label for="join_check" class="text-info font-weight-bold">위 내용을 모두 확인 후 진행합니다</label>
				</div>
				</div>
				<br><br>
				<div class="offset-lg-2 col-lg-8">
				<form class="form" action="petsitter_join" method="post" enctype="multipart/form-data">
				<input type="hidden" name="member_id "value="${userinfo.member_id}">
				<div class="form-group">
				<label class="font-weight-bold text-primary">펫시터 활동 시 사용할 닉네임을 입력해주세요</label>  
				<input type="text" name="petsitter_nick"  id="petsitter_nick"class="form-control nick" oninput="nicknameCheck();"required>
				<span class="text-danger nick-length"></span>
				<span class="text-danger span-nick"></span>
<!-- 				<button class="btn btn-primary"  type="button" id="nickChk"  value="N" >중복 확인</button> -->
				</div>
				
				 <div class="form-group">
				<label class="font-weight-bold text-primary">본명</label><input type="text"  class="form-control" value="${userinfo.member_name}">
				</div>
				
				 <div class="form-group">
				<label class="font-weight-bold text-primary">나이</label><input type="text"   class="form-control" value="${userinfo.getAge()}"> 
				</div>
				
				 <div class="form-group">
				<label class="font-weight-bold text-primary">성별</label><input type="text"  class="form-control"  value="${userinfo.gender}">  
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary" >연락처</label><input type="text"   class="form-control" value="${userinfo.phone}">
				<!--  회원정보 수정 시 수정 할 수 있도록... -->
				</div>
				
			
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">경력사항</label>
				<textarea name="petsitter_career"  class="form-control career " rows="5" oninput="careerlength1();" required></textarea>
				<span class="career-count1">0</span> /1000
				</div>
				<div class="form-group">
				<label class="font-weight-bold text-primary">자기 소개</label>
				<textarea name="career_info"  class="form-control introduce" rows="5" oninput="careerlength2();" required></textarea>
				<span class="career-count2">0</span> /1000
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">돌봄 가능한 요일(중복 선택 가능)</label><br>
				<input type="checkbox"  name="day_mon"class="control-input " id="mon" onchange="ChangeDay_mon()">
				<input type="hidden" name="monday" />

				<label for="mon">월요일</label><br>
					
					
				<input type="checkbox"  name="day_tue"  class="control-input "   id="tue" onchange="ChangeDay_tue()">	
				<input type="hidden" name="tuesday" />
				<label for="tue">화요일</label> <br>
					
					
				<input type="checkbox"  name="day_wed"  class="control-input "  id="wen" onchange="ChangeDay_wed()">
				<input type="hidden" name="wednesday" />
				<label for="wen">수요일</label><br>
					
					
				<input type="checkbox"  name="day_thu" class="control-input " id="thu" onchange="ChangeDay_thu()" >
				<input type="hidden" name="thursday" />
				<label for="thu">목요일</label><br>
					
					
				<input type="checkbox"  name="day_fri" class="control-input "  id="fri"  onchange="ChangeDay_fri()">	
				<input type="hidden" name="friday" />			
				<label for="fri">금요일</label><br>
					
					
				<input type="checkbox"   name="day_sat"class="control-input "  id="sat" onchange="ChangeDay_sat()">
				<input type="hidden" name="saturday" />
				<label for="sat">토요일</label><br>
					
					
				<input type="checkbox"  name="day_sun" class="control-input "  id="sun"  onchange="ChangeDay_sun()">
				<input type="hidden" name="sunday" />
				<label for="sun">일요일</label><br>
				</div>	

				<div class="form-group">
				<label class="font-weight-bold text-primary" >돌봄 가능한 시간대</label><br>
<!-- 				<input type="time" name="available_start_time" class="form-control" required>~<input type="time" name="available_finish_time" class="form-control"  required><br> -->
				<br><select name="available_start_time">
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
				<select name="available_finish_time">
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
				</div>
				
				<br>
				<label class="font-weight-bold text-primary"> 활동 가능한 지역을 선택해주세요</label><br><br>
				<input type="checkbox" name="adress" value="서울" id="seoul" checked><label for="seoul">서울&nbsp;</label>	<br>
				<input type="checkbox" name="adress" value="경기" id="gyeonggi" disabled><label  for="gyeonggi">경기&nbsp;</label>	<br>
				<input type="checkbox" name="adress" value="그 외" id="etc"disabled><label  for="etc">그 외</label><br>
				<br>
				<div class="form-group">
				<label class="font-weight-bold text-primary">반려 동물이 있으신가요?</label><br>
				<input type="checkbox"   class="control-input" name="sitter_checklist" id="have_pet" value="10" onclick="haveCheck1(this);">
				<label for="have_pet">예&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label> <br>
				
				<input type="checkbox"  class="control-input" name="sitter_checklist" id="have_pet_no" value="0" onclick="haveCheck1(this);">
				<label for="have_pet_no">아니오</label>
				</div>
				
				<div class="form-group">
				 <label class="font-weight-bold text-primary">반려 기간을 알려주세요(반려동물을 기르는 경우)</label><br>
				 <input type="checkbox"  class="control-input" name="sitter_checklist_two" id="join_type" value="10" onclick="haveCheck2(this);">
				 <label for="join_type">3년 미만</label> <br>
				
				 
				
				 <input type="checkbox"   class="control-input" name="sitter_checklist_two" id="join_type" value="20"onclick="haveCheck2(this);">
				 <label for="join_type">8년미만&nbsp;</label><br>
				 
				 
				 <input type="checkbox"  class="control-input" name="sitter_checklist_two" id="join_type" value="25" onclick="haveCheck2(this);">
				 <label for="join_type">8년 이상</label><br>
				 </div>
				 
				 <div class="form-group">
				  <label class="font-weight-bold text-primary">돌봄경험에 해당되는 부분을 체크해주세요(중복 선택 가능)</label><br>
				 <input type="checkbox" name="care_one" class="control-input "  value="5">
<!-- 				 <input type="hidden" name="one" /> -->
				 <label>5개월 미만의 반려동물 케어 경험이 있습니다.&nbsp;&nbsp;</label><br>
				 
				 <input type="checkbox" name="care_two" class="control-input "  value="10">
<!-- 				 <input type="hidden" name="two" /> -->
				 <label>15세 이상 노령반려동물 케어 경험이 있습니다.</label><br>
				 
				 <input type="checkbox" name="care_three" class="control-input "  value="10">
<!-- 				 <input type="hidden" name="three" /> -->
				 <label>대형견 반려 경험 혹은 돌봄 경험이 있습니다.&ensp;&nbsp; </label><br>
				 
				 <input type="checkbox" name="care_four"  class="control-input "    value="10">
<!-- 				 <input type="hidden" name="four" /> -->
				 <label>문제견 반려 경험 혹은 돌봄 경험이 있습니다.&ensp;&nbsp;</label><br>
				 
				  <input type="checkbox"  name="care_five"   class="control-input "  value="30">
<!-- 				  <input type="hidden" name="five" /> -->
				  <label>펫시터로 활동한 경험이 있습니다.&emsp; &emsp;&emsp;&emsp;&emsp;&nbsp;</label><br>
				  </div>
				  
				  <div class="form-group">
				  <label class="font-weight-bold text-primary">[강아지]강아지가 경계하거나 이빨을 보이며 공격하려는 경우 어떻게 대처하실건가요?</label>
				 <textarea name="sitter_checklist_four"  class="form-control checkLength1 " rows="5" oninput="checkLength1();"></textarea>
				 <span class="letter-count1">0</span> /1000
				 </div>
			
				 
				 <div class="form-group">
				 <label class="font-weight-bold text-primary">[고양이]돌봄중 고양이가 나오지 않고 숨어만 있다면 어떻게 하시겠습니까?</label>
				 <textarea name="sitter_checklist_five"  class="form-control checkLength2" rows="5" oninput="checkLength2();"></textarea>
				 <span class="letter-count2">0</span> /1000
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">돌봄에 있어 가장 중요하게 생각하는 부분에 대해서 설명해주세요.</label>
				<textarea  class="form-control checkLength3" rows="5" name="sitter_checklist_six " oninput="checkLength3();"></textarea>
				<span class="letter-count3 ">0</span> /1000
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">활동시 사용할 사진을 업로드해주세요(사진 필수)</label>
				<br><input type="file" value="파일 업로드" name="photo" id="imgfile" multiple accept=".jpg,.png,.gif" required>
				<div class="select_img"><img src="" /></div>
				</div>
				
				<script>
					$("#imgfile").change(function(){
						if(this.files && this.files[0]){
							var reader = new FileReader;
							reader.onload = function(data){
								$(".select_img img").attr("src",data.target.result).width(500);
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				
				
				<c:if test="${param.error !=null}">
				<script>
					alert("닉네임이 중복되어 등록을 진행할 수 없습니다");
				</script>
<!-- 				<div><h6 class="font-weight-bold text-danger">이미지를 등록해주세요</h6></div> -->
				</c:if>
				<button type="submit" class="btn btn-primary ">펫시터 지원</button>
				
				</form>
				</div>
				</div>
			
		
	</div>

</div>
