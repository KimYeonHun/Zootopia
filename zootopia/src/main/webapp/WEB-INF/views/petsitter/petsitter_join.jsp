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

<script type="text/javascript">
	function haveCheck1(chk) {
		var have = document.getElementsByName("sitter_checklist");

		for (j = 0; j < have.length; j++) {
			if (have[j] != chk) {
				have[j].checked = false;
			}

		}
	}

	function haveCheck2(chk) {
		var have = document.getElementsByName("sitter_checklist_two");

		for (j = 0; j < have.length; j++) {
			if (have[j] != chk) {
				have[j].checked = false;
			}

		}
	}
</script>
<style>

	textarea{
		 resize: none
	}
	
	#wrap{
		margin-top:200px;
	}
	
</style>

<div class="container-fluid text-center" id="wrap">
	<div class="row">
	
		<div class="offset-2 col-8">
			<h1 class="text-primary">펫시터 가입 신청</h1>

			<div class="jumbotron">
				<h3 class="text-primary">* 채용안내</h3> <br> <br> 
				<h6 class="text-primary">* 면접</h6> 코로나19로 인해 모든 면접은
				화상(ZOOM)으로 진행됩니다. <br><br>  <br> <h6 class="text-primary">* 서비스 교육( ★필수 수강★) 및 훈련사 교육(
				★선택 수강★)</h6> 교육날짜와 방법은 면접 통과 후 안내드립니다. <br> <br> #
				훈련사 교육은 평일에만 진행되며, 서울에 위치한 훈련소에서 진행됩니다.  # 훈련사 교육은 펫시터 활동
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
				<form class="form" action="petsitter_join" method="post">
				<div class="form-group">
				<label class="font-weight-bold text-primary">펫시터 활동 시 사용할 닉네임을 입력해주세요</label>  
				<input type="text" name="petsitter_nick"  class="form-control" required>
				</div>
				<input type="hidden" name="member_id "value="${memberinfo.member_id}">
				 <div class="form-group">
				<label class="font-weight-bold text-primary">본명</label><input type="text"  class="form-control" value="${memberinfo.member_name}">
				</div>
				
				 <div class="form-group">
				<label class="font-weight-bold text-primary">나이</label><input type="text"   class="form-control" value="${memberinfo.birthday}"> 
				</div>
				
				 <div class="form-group">
				<label class="font-weight-bold text-primary">성별</label><input type="text"  class="form-control"  value="${memberinfo.gender}">  
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary" >연락처</label><input type="text"   class="form-control" value="${memberinfo.phone}">
				<!--  회원정보 수정 시 수정 할 수 있도록... -->
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">경력사항</label>
				<textarea name="petsitter_career"  class="form-control " rows="5" required></textarea>
				</div>
				<div class="form-group">
				<label class="font-weight-bold text-primary">자기 소개</label>
				<textarea name="career_info"  class="form-control" rows="5" required></textarea>
				</div>
				<div class="form-group">
				<label class="font-weight-bold text-primary">돌봄 가능한 요일(중복 선택 가능)</label><br>
				<input type="checkbox"  class="control-input" id="mon" value="월요일"><label for="mon">월요일</label><br>
				<input type="checkbox"  class="control-input"  id="tue"value="화요일"><label for="tue">화요일</label> <br>
				<input type="checkbox"  class="control-input"  id="wen"value="수요일"><label for="wen">수요일</label><br>
				<input type="checkbox"  class="control-input" id="thu" value="목요일"><label for="thu">목요일</label><br>
				<input type="checkbox"  class="control-input"  id="fir"value="금요일"><label for="fir">금요일</label><br>
				<input type="checkbox"  class="control-input"  id="sat"value="토요일"><label for="sat">토요일</label><br>
				<input type="checkbox"  class="control-input" id="sun" value="일요일"><label for="sun">일요일</label><br>
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary" >돌봄 가능한 시간대</label>
				<input type="time" name="start" class="form-control" required>~<input type="time" name="finish" class="form-control"  required><br>
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">반려 동물이 있으신가요?</label><br>
				<input type="checkbox"   class="control-input" name="sitter_checklist" id="have_pet" value="10" onclick="haveCheck1(this);">
				<label for="have_pet">예&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label> <br>
				
				<input type="checkbox"  class="control-input" name="sitter_checklist" id="have_pet_no" value="0" onclick="haveCheck1(this);">
				<label for="have_pet_no">아니오</label>
				</div>
				
				<div class="form-group">
				 <label class="font-weight-bold text-primary">반려 기간을 알려주세요(반려동물을 기르는 경우)</label><br>
				 <input type="checkbox"  class="control-input" name="sitter_checklist2" id="join_type" value="10" onclick="haveCheck2(this);">
				 <label for="join_type">3년 미만</label> <br>
				
				 
				
				 <input type="checkbox"   class="control-input" name="sitter_checklist_two" id="join_type" value="20"onclick="haveCheck2(this);">
				 <label for="join_type">8년미만&nbsp;</label><br>
				 
				 
				 <input type="checkbox"  class="control-input" name="sitter_checklist_two" id="join_type" value="25" onclick="haveCheck2(this);">
				 <label for="join_type">8년 이상</label><br>
				 </div>
				 
				 <div class="form-group">
				  <label class="font-weight-bold text-primary">돌봄경험에 해당되는 부분을 체크해주세요(중복 선택 가능)</label><br>
				 <input type="checkbox" name="sitter_checklist_three" class="control-input"  id="join_type" value="5">
				 <label>5개월 미만의 반려동물 케어 경험이 있습니다.&nbsp;&nbsp;</label><br>
				 
				 <input type="checkbox" name="sitter_checklist_three" class="control-input"  id="join_type" value="10">
				 <label>15세 이상 노령반려동물 케어 경험이 있습니다.</label><br>
				 
				 <input type="checkbox" name="sitter_checklist_three" class="control-input"  id="join_type" value="10">
				 <label>대형견 반려 경험 혹은 돌봄 경험이 있습니다.&ensp;&nbsp;&nbsp; </label><br>
				 
				 <input type="checkbox" name="sitter_checklist_three"  class="control-input" id="join_type" value="10">
				 <label>문제견 반려 경험 혹은 돌봄 경험이 있습니다.&ensp;&nbsp;&nbsp;</label><br>
				 
				  <input type="checkbox"  name="sitter_checklist_three" class="control-input" id="join_type" value="30">
				  <label>펫시터로 활동한 경험이 있습니다.&emsp; &emsp;&emsp;&emsp;&emsp;&nbsp;&nbsp;</label><br>
				  </div>
				  
				  <div class="form-group">
				  <label class="font-weight-bold text-primary">[강아지]강아지가 경계하거나 이빨을 보이며 공격하려는 경우 어떻게 대처하실건가요?</label>
				 <textarea name="sitter_checklist_four"  class="form-control" rows="5"></textarea>
				 </div>
				 
				 <div class="form-group">
				 <label class="font-weight-bold text-primary">[고양이]돌봄중 고양이가 나오지 않고 숨어만 있다면 어떻게 하시겠습니까?</label>
				 <textarea name="sitter_checklist_five"  class="form-control" rows="5"></textarea>
				</div>
				
				<div class="form-group">
				<label class="font-weight-bold text-primary">돌봄에 있어 가장 중요하게 생각하는 부분에 대해서 설명해주세요.</label>
				<textarea  class="form-control" rows="5" name="sitter_checklist_six"  required></textarea>
				</div>
				
				<button type="submit" class="btn btn-primary ">펫시터 지원</button>
				
				</form>
				</div>
				</div>
			
		
		
	</div>

</div>
