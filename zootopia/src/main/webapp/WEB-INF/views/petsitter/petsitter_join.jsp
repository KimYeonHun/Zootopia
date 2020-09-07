<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous">	</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<script type="text/javascript">

    function haveCheck1(chk){
    	var have = document.getElementsByName("sitter_checklist");
    	
    	for (j = 0; j < have.length; j++) {
    		if (have[j] != chk) {
    			have[j].checked=false;			
    		}
    		
    	}		
    }
    
    function haveCheck2(chk){
    	var have = document.getElementsByName("sitter_checklist2");
    	
    	for (j = 0; j < have.length; j++) {
    		if (have[j] != chk) {
    			have[j].checked=false;			
    		}
    		
    	}		
    }
</script>


 <div class="flu">
 <h2>펫시터 가입 신청</h2>
    
 <div>
 * 채용안내
<br>
<br>
* 면접
<br>
코로나19로 인해 모든 면접은 화상(ZOOM)으로 진행됩니다.
<br>
<br>

* 서비스 교육( ★필수 수강★) 및 훈련사 교육( ★선택 수강★)
<br>
교육날짜와 방법은 면접 통과 후 안내드립니다.
<br>
<br>

# 훈련사 교육은 평일에만 진행되며, 서울에 위치한 훈련소에서 진행됩니다.
<br>
# 훈련사 교육은 펫시터 활동 중에도 수강 가능합니다.
<br>
# 서비스 교육과 훈련사 교육은 다른 날 진행됩니다.
<br>
# 교육 후 추가적으로 필요한 내용은 영상(유튜브)를 통해 상시 제공됩니다.
<br><br><br>
</div>
    
    <div>
    <form>
    	<div>
    	<input type="checkbox" id="join_check" required><label for="join_check">위 내용을 모두 확인 후 진행합니다</label>
    	</div>
    	<br>
    	<input type="text" name="petsitter_nick">
    	<br><span>펫시터 활동 시 사용할 닉네임을 입력해주세요</span>
    	<br>
    	<br>
    	<span>본명</span><input type="text" name="petsitter_nick" value="${member_name}">
    	<br>
    	<br>
    	<span>나이</span><input type="text" name="birthday" value="${birthday}">
    	<br>
    	<br>
    	성별<input type="date" name="gender" value="${gender}">
    	<br>
    	<br>
    	연락처<input type="text" name="phone" value="${phone}">
    	<br>
    	<br>
    	경력사항<textarea name="petsitter_career"></textarea>
    	<br>
    	<br>
    	자기 소개<textarea name="petsitter_career" ></textarea>
    	<br>
    	<br>
    	<span>반려 동물이 있으신가요?</span><br><br>
    	<input type="checkbox" name="sitter_checklist" id="have_pet" value="10" onclick="haveCheck1(this);"><label for="have_pet">예</label> <br>
    	<input type="checkbox"  name="sitter_checklist" id="have_pet_no" value="0"onclick="haveCheck1(this);"><label for="have_pet_no">아니오</label> 
    	<br>
    	<br>
    	<span>반려 기간을 알려주세요(반려동물을 기르는 경우))</span><br><br>
    	<input type="checkbox" name="sitter_checklist2" id="join_type" value="10"onclick="haveCheck2(this);"><label>3년 미만</label> <br>
    	<input type="checkbox" name="sitter_checklist2" id="join_type" value="20"onclick="haveCheck2(this);"><label>8년 미만</label> <br>
    	<input type="checkbox" name="sitter_checklist2" id="join_type" value="25"onclick="haveCheck2(this);"><label>8년 이상</label>
    	<br>
    	<br>
    	<span>돌봄경험에 해당되는 부분을 체크해주세요(중복 선택 가능)</span><br><br>
    	<input type="checkbox" id="join_type" value="5"><label>5개월 미만의 반려동물 케어 경험이 있습니다.</label><br>
    	<input type="checkbox" id="join_type" value="10"><label>15세 이상 노령반려동물 케어 경험이 있습니다.</label><br>
    	<input type="checkbox" id="join_type" value="10"><label>대형견 반려 경험 혹은 돌봄 경험이 있습니다.</label><br>
    	<input type="checkbox" id="join_type" value="10"><label>문제견 반려 경험 혹은 돌봄 경험이 있습니다.</label><br>
    	<input type="checkbox" id="join_type" value="30"><label>펫시터로 활동한 경험이 있습니다.</label>
    	<br>
    	<br>
    	<span>[강아지]돌봄 중 강아지가 경계하거나 이빨을 보이며 공격하려는 경우 어떻게 대처하실건가요?</span>
    	<br>
    	<br>
    	<textarea name=""></textarea>
    	<br>
    	<br>
    	<span>[고양이]돌봄중 고양이가 나오지 않고 숨어만 있다면 어떻게 하시겠습니까?</span>
    	<br>
    	<br>
    	<textarea></textarea>
    	<br>
    	<br>
    	<span>돌봄에 있어 가장 중요하게 생각하는 부분에 대해서 설명해주세요. </span>
    	<br>
    	<br>
    	<textarea></textarea>
    	<br>
    	<br>
	<button class="btn btn-primary ">펫시터 지원</button>
	<br>
    </form>
    </div>
    
    </div>
    