<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.19.2/axios.js" integrity="sha512-VGxuOMLdTe8EmBucQ5vYNoYDTGijqUsStF6eM7P3vA/cM1pqOwSBv/uxw94PhhJJn795NlOeKBkECQZ1gIzp6A==" crossorigin="anonymous">	</script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

	<script>
		function findPW(){
			
			var id = document.querySelector(".member_id").value;
			var email=document.querySelector(".email").value;

			
			axios({
				url:"${pageContext.request.contextPath}/help/password?member_id="+id+"&email="+email,
				method:"post"
				
				}).then(function(response){
					
					
					if(response.data==1){
						window.alert("임시비밀번호가 메일로 발송되었습니다");
						document.querySelector(".member_id").value=null;
						document.querySelector(".email").value =null;
						

					}else{
						window.alert("입력하신 회원 정보를 찾을 수 없습니다")
						document.querySelector(".member_id").value=null;
						document.querySelector(".email").value =null;
						
					}	
				});
			}		
	</script>



	<div class="continer-fluid">
		<div>
    <h1> 비밀번호 찾기</h1>
    

 
    	<input type="text" class="member_id" name="member_id"placeholder="아이디">
    	<input type="text" class="email" name="email"placeholder="이메일">
    	
    	
    	
    	<button class="btn btn-primary " onclick="findPW();"><span class="spinner-border"></span>비밀번호 찾기</button>
	</div>
</div>
   
   
   