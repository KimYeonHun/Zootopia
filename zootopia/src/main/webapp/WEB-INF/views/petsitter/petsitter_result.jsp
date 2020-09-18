<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

   <link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"crossorigin="anonymous">

<link rel="stylesheet"href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css"> <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>



<style>
    #wrap{
        margin-top: 200px;
    }
</style>
<%@ include file="/WEB-INF/template/header.jsp"%>

   <div class="container-fluid text-center" id="wrap">
	<div class="row">
        <div class="offset-2 col-8">
        <h2 class="text-info">펫시터 등록이 완료되었습니다
            <i class="fa fa-2x fa-paw text-info"></i> </h2>

        </div>
    </div>
    <br><br>
    <div class="row">
        <div class="offset-2 col-8">
            <h6 class="text-muted">* 펫시터 승인은 접수 순서에 따라 순차적으로 안내되며,<br>
                승인 완료까지 영업일 기준 2~3일정도 소요될 수 있습니다. </h6>
                <br>
        </div>
    </div> 
    <br>
    <div class="row">
        <div class="offset-2 col-8">
            <a class="btn btn-info " href="${pageContext.request.contextPath}/">메인화면</a>
            <a class="btn btn-info " href="${pageContext.request.contextPath}/petsitter/list">지원 내역 확인하기</a>
        </div>
    </div>
</div>

