<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css"
        integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH" crossorigin="anonymous">
	
	<style type="text/css">
    .noresize {
        resize: none !important;
    }
	</style>

</head>

<body>
    <div class="container-fluid text-center" id="wrap">
        <div class="row">

            <div class="offset-2 col-8">



                <div class="offset-lg-2 col-lg-8">
                    <form class="form" action="petsitter_join" method="post" enctype="multipart/form-data">


                        <div class="form-group">
                            <label class="font-weight-bold text-primary">아이디</label>
                            <input type="text" class="form-control" name="member_id" value="">
                        </div>
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">닉네임</label>
                            <reinput type="text" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">경력사항</label><br>
                            <textarea class="noresize" readonly="readonly"></textarea>
                            
                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">자기소개</label><br>
                            <textarea class="noresize" readonly="readonly"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">체크리스트 점수</label>
                            <reinput type="text" class="form-control">
                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">[강아지]강아지가 경계하거나 이빨을 보이며 공격하려는 경우 어떻게 대처하실건가요?</label><br>
                            <textarea class="noresize" readonly="readonly"></textarea>

                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">고양이]돌봄중 고양이가 나오지 않고 숨어만 있다면 어떻게 하시겠습니까?</label><br>
                            <textarea class="noresize" readonly="readonly"></textarea>
                        </div>
                        
                        <div class="form-group">
                            <label class="font-weight-bold text-primary">돌봄에 있어 가장 중요하게 생각하는 부분에 대해서 설명해주세요.</label><br>
                            <textarea class="noresize" readonly="readonly"></textarea>
                        </div>
                        
                        





                        <button type="submit" class="btn btn-primary ">승인</button>

                    </form>
                </div>
            </div>


        </div>



    </div>
</body>