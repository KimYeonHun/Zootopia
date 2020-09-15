<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#reply-button').click(function () {
            	reply();
            });
            
            $('#reply-textarea').keydown(function(key) {
                if (key.keyCode == 13) {
                	reply();
                }
            });
        });
        
        function reply(){
        	$.post('reply', {
                qr_content: $('#reply-textarea').val(),
                q_board_no: $('#q_board_no').val()
            }, function (status) {
                if(status == 'success'){
                	var use_name = $('#user-name').val();
                	var board_no = $('#q_board_no').val();
                	var qr_content = $('#reply-textarea').val();
                	var trTag = '<tr class="table-light"> <td scope="row">' + board_no + '</td> <td>' + use_name + '</td> <td>' + qr_content + '</td> </tr>'; 
                	$('#reply-table').children().first().prepend(trTag);
                }
                $('#reply-textarea').val('');
            });
        }
    </script>
	
	<script>
	function del(q_board_no) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href='delete?q_board_no='+q_board_no;
		}
	}	
</script>
	
	
	

</head>

<body>
	<input id = "user-name" type="hidden" value="${userinfo.member_id}">
    <div class="container-fluid">
        <div class="row">
            <div class="offset-5 col-5">
                <h1><a href="..">주토피아 Q&A</a></h1><br><br>

            </div>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="offset-2 col-8">
                <table class="table table-hover text-center">
                    <thead>
                   
                        <tr>
                            <th scope="col">제목 : ${q_boardDto.q_title}</th>

                        </tr>
                        <tr>
                            <th scope="col">작성자 : ${q_boardDto.member_id}</th>

                        </tr>
                        <tr>
                            <th scope="col">작성일 : ${q_boardDto.q_when}</th>

                        </tr>
                        <tr>
                            <th scope="col">내용</th>
                        </tr>
                        <tr>
                            <th>${q_boardDto.q_content}</th>
                        </tr>
                    </thead>
                    <tbody>
                        
						<div style="float: right;">
						<c:if test="${userinfo.member_id eq q_boardDto.member_id}">
							<input type="button" value="수정" onclick="location.href='q_edit?q_board_no=${q_boardDto.q_board_no}'">
							<input type="button" value="삭제" onclick="del(${q_boardDto.q_board_no})">
							</c:if>
							<input type="button" value="목록" onclick="location.href='q_list';">
						</div>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <div class="form-group">
        <label for="exampleTextarea">댓글</label>
        <input type="hidden" id="q_board_no" value="${q_boardDto.q_board_no}">



        <textarea id="reply-textarea" class="form-control" id="reply-textarea" rows="3"></textarea>
    </div>
    <div class="btn-group-vertical">
        <button id="reply-button" type="button" class="btn btn-primary">작성</button>
    </div>

    <h1>-----------------------------------------------</h1>


    <table id="reply-table">
    	<tbody>
		    <c:forEach var="q_replyDto" items="${list}">
		        <tr class="table-light">
		            <td scope="row">${q_replyDto.q_board_no}</td>
		            <td>${q_replyDto.qr_writer}</td>
		            <td>${q_replyDto.qr_content}</td>
		        </tr>
		    </c:forEach>
    	</tbody>
    </table>






</body>

</html>