<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>

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
</head>

<body>
    <div class="container-fluid">
        
        <div class="row">
            <div class="offset-sm-4 col-sm-4">
                <form class="join" method="post">
                    
                    <div class="form-group">
                        <label>아이디</label>
                        <input type="text" name="member_id" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>비밀번호</label>
                        <input type="password" name="member_pw" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>비밀번호 재확인</label>
                        <input type="password" name="checkPw" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>이름</label>
                        <input type="text" name="member_name" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>생년월일</label>
                        <input type="date" name=" birthday" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>휴대전화</label>
                        <input type="text" name=" phone" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>이메일</label>
                        <input type="text" name=" email" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-primary">성별</label>
                            <label class="btn btn-primary">
                                <input type="radio" name="gender" id="option2" autocomplete="off"> 남
                            </label>
                            <label class="btn btn-primary active">
                                <input type="radio" name="gender" id="option3" autocomplete="off"> 여
                            </label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>post</label>
                        <input type="text" name=" post" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>baseaddr</label>
                        <input type="text" name=" baseaddr" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>exrtaaddr</label>
                        <input type="text" name=" exrtaaddr" class="form-control">
                    </div>

                    <!-- 
                        button 태그로도 submit 버튼 생성이 가능 
                        - type=submit 이면 submit 버튼처럼 처리
                        - type=button 이면 일반 버튼처럼 처리
                    -->
                    <button type="submit" class="btn btn-primary btn-block">로그인</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>