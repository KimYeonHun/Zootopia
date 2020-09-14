<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		$('#reply-button').click(function(){
			$.post('reply',{
				qr_content : $('#reply-textarea').val(),
				q_board_no : $('#q_board_no').val()
				
			},function(data){
				console.log(data);
			});
			$('#reply-textarea').val('');
		});
	});
	</script>

</head>
<body>
    <table>
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>조회수</th>
            <th>내용</th>
        </tr>
        <tr>
            <td>${q_boardDto.q_board_no}</td>
			<td>${q_boardDto.q_title}</td>
			<td>${userinfo.member_id}</td>
			<td>${q_boardDto.q_when}</td>
			<td>${q_boardDto.q_read}</td>
			<td>${q_boardDto.q_content}</td>
        </tr>      
    </table>
   
  
   <div class="form-group">
        <label for="exampleTextarea">댓글</label>
        <input type="hidden" id="q_board_no" value="${q_boardDto.q_board_no}">
        
        
        
        <textarea class="form-control" id="reply-textarea" rows="3"></textarea>
    </div>
    <div class="btn-group-vertical">
  		<button id="reply-button" type="button" class="btn btn-primary">작성</button>
  	</div>
  	
    
</body>
</html>