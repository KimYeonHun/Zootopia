<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>예약 전 안내사항</title>
      
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <style>
        body{
            padding:30px;
            text-align: center;
        }
        h1{
          font-weight: bold;
        }
        span{
            font-size: large;
            font-weight: bold;
        }
        ul{
          border:5px solid rgb(51, 201, 201);
        }
    </style>
    <script>
      $(function(){
        $(".btn").on("click", function(){
          if($("input[type=checkbox]").prop("checked") == true){
            console.log("통과");
          }else{
            alert("안내사항 숙지 및 내용에 동의하셔야 합니다.");
            return false;
          }
        })
      })
    </script>
</head>
    <body>
        <h1>예약 전 안내사항</h1>
        <hr>
        <ul class="list-group">
            <li class="list-group-item">
              <span>원하는 시간대 안에서 예약 진행</span><br><br>
              		오전(9~12) 오후 (12~15/15~18) 저녁(18~21)타임으로 예약가능합니다.
            </li>
            <li class="list-group-item">
              <span>30분, 1시간 돌봄으로 진행</span><br><br>
             		 기본 돌봄(30분), 산책 돌봄(1시간)유형에 따라 돌봄이 진행됩니다.<br>
             		 마릿수에 따라 돌봄 시간이 달라질 수 있습니다.
            </li>
            <li class="list-group-item">
              <span>안전한 산책을 위한 하네스 준비</span><br><br>
              		산책 시 발생될 수 있는 놓침사고, 예방을 위해 목줄과 하네스를 결합한 이중 산책줄을 사용하고 있습니다.<br>
              			(하네스 미보유시 산책 제한)
            </li>
            <li class="list-group-item">
              <span>반려동물 등록 및 인식표 의무화</span><br><br>
              	  ZOOTOPIA는 동물등록 의무화 관련 법령을 이행하지 않아 발생되는 모든 책임들에 대한 의무가 없음을 알려드립니다.
            </li>
            <li class="list-group-item">
              <span>펫시터에게 성적 굴욕감 및 혐오감을 느끼게 하는 언행 삼가</span><br><br>
			              고객이 펫시터에게 성적 수치심을 느끼게 하거나, 정신적으로 고통을 입을 수 있는 언행을 했을 시,
			              펫시터가 손해배상을 청구할 수 있습니다.<br>
			              또한 성희롱이 정도를 넘어 성범죄에 해당하는 경우에는 형법, 성폭력범죄의 처벌 등에 관한 특례법 위반 등으로
			              형사처벌을 받을 수 있습니다.
            </li>
        </ul>
        <br>
        <label id="ck">
        <input id="ck" type="checkbox">
        안내사항 숙지 및 내용에 동의합니다.
        </label>
        <hr>
        <a href="reserve_step2" class="btn btn-info btn-block" style="text-decoration:none">NEXT</a>
    </body>
</html>