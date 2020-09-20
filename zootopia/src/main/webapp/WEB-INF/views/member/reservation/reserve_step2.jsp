<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>ZOOTOPIA RESERVATION</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"> -->
  <link rel="stylesheet" href="https://bootswatch.com/4/minty/bootstrap.min.css">
  <link rel="stylesheet" href=" https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,700,700i,900,900i"
    type="text / css" media="all ">

  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
    crossorigin="anonymous"></script>
  <style>
    h2 {
      text-align: center;
    }

    .jumbotron {
      text-align: center;
      margin-top: 80px;
    }

    .gallary>div {
      margin: 0;
      padding: 10px;
    }

    .gallary>div>img {
      widows: 100px;
    }

    .lt {
      text-align: left;
    }

    .ct {
      text-align: center;
    }

    .set {
      margin-left: 40%;
    }

    textarea {
      margin-left: 10px;
      resize: none;
    }

    body {
      font-weight: bold;
    }

    .addr {
      display: none;
    }

    .parkinfo {
      display: none;
    }
    .petmore{
      display: none;
    }

    div {
      margin: 5px;
    }

    .mo {
      margin-left: 100px;
    }

    span {
      font-size: x-large;
    }
  </style>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
    integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous">
    </script>
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    function execDaumPostcode() {
      new daum.Postcode({
        oncomplete: function (data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 각 주소의 노출 규칙에 따라 주소를 조합한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var addr = ''; // 주소 변수
          var extraAddr = ''; // 참고항목 변수

          //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
          if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
            addr = data.roadAddress;
          } else { // 사용자가 지번 주소를 선택했을 경우(J)
            addr = data.jibunAddress;
          }

          // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
          if (data.userSelectedType === 'R') {
            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
              extraAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraAddr !== '') {
              extraAddr = ' (' + extraAddr + ')';
            }
            // 조합된 참고항목을 해당 필드에 넣는다.
            document.getElementById("extraAddress").value = extraAddr;

          } else {
            document.getElementById("extraAddress").value = '';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('postcode').value = data.zonecode;
          document.getElementById("address").value = addr+extraAddr;
          // 커서를 상세주소 필드로 이동한다.
          document.getElementById("detailAddress").focus();
        }
      }).open();
    }
  </script>
  <script>
    $(function () {
      $('#selectBox').change(function () {
        var state = $('#selectBox option:selected').val();
        if (state == 'etc') {
          $('.addr').show();
        } else {
          $('.addr').hide();
        }
      });
    });
    $(function () {
      $('#selectBox2').change(function () {
        var state = $('#selectBox2 option:selected').val();
        if (state == '고양이') {
          $("select option[value*='no']").prop('hidden', true);
        }
      });
    });
    $(document).ready(function () {
      $('#submit').click(function () {
        var radioVal = $('.yesorno :checked').val();
      });
    });
    $(function () {
      $("#parkY").click(function () {
        var state = $('#parkY').val();
        if (state == 'Y') {
          $('.parkinfo').show();
        }
      })
      $("#parkN").click(function () {
        var state = $('#parkN').val();
        if (state == 'N') {
          $('.parkinfo').hide();
        }
      })
    });
    $(function () {
      if($("#pplus").click(function () {
        $('.petmore').show();
      }));
      if($("#ppdel").click(function () {
        $('.petmore').hide();
      }));
    });
  </script>
</head>

<body>
  <div class="container-fluid">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
      <a class="navbar-brand" href="#">ZOOTOPIA</a>
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" href="#">후기게시판</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">펫시터지원</a>
        </li>
      </ul>
    </nav>
    <div class="jumbotron">
      <h1>예약 정보 입력</h1>
    </div>
<form action="reserve_step2" method="post">
    <div class="lt offset-2 col-8">
      <div>예약자 <input class="form-control" type="text" name="res_name" value="${userinfo.member_name}" required></div>
      <div class="form-group">반려동물
		
        <select class="form-control" id="petlist" name="res_pet">
       <c:forEach var="petinfo" items="${list}">
        	<option value=" " selected>-- 선택 --</option>
        	<option value="${petinfo.pet_name}" >${petinfo.pet_name}</option>
        </c:forEach>
        </select>    
        
      </div>
      <div>방문펫시터 <input class="form-control" type="text" value="${pre_resDto.petsitter_no}" name="res_petsitter" required></div>
      <div>예약일 <input class="form-control" name="res_date" value="${pre_resDto.res_day}" type="text" required>
      <div>예약자 주소 
<!--         <div class="row"> -->
<!--           <div class="col-4"> -->
<!--             <select class="form-control" name="res_place" id="selectBox"> -->
<!--               <option value='' selected>-- 선택 --</option> -->
<!--               <option value="home">우리집</option> -->
<!--               <option value="organization">기관</option> -->
<!--               <option value="etc">기타</option> -->
<!--             </select> -->
<!--           </div> -->
<!--           <div class="addr" onclick="execDaumPostcode()"> -->
<!--             <button class=" btn btn-info btn-block">주소찾기</button> -->
<!--           </div> -->
<!--         </div> -->
        <div class="row">
          <input type="hidden" id="postcode" name="res_post"value="${userinfo.post}" >
          <div class="col-5">
            <input type="text" id="address" placeholder="주소" name="res_Baddr" class="form-control" value="${userinfo.baseaddr}">
            <input type="hidden" id="extraAddress">
          </div>
          <div class="col-5">
            <input type="text" id="detailAddress" placeholder="상세주소" name="res_Eaddr" class="form-control" value="${userinfo.extraaddr}">
          </div>
        </div>
      </div>
      <div>예약패키지
        <div class="row gallary">
          <div class="col-md-3 col-sm-7"><button type="button" class="btn" name="res_pack" value="30분">
              <img src="${pageContext.request.contextPath}/res/img/30min1.PNG" width="230" height="230"></button>
            <button type="button" class="btn mo" data-toggle="modal" data-target="#myModal1"><img src="${pageContext.request.contextPath}/res/img/lens.png"
                width="25" height="25"></button>
            <div id="myModal1" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-body">
                    <img src="${pageContext.request.contextPath}/res/img/30min2.PNG" width="465" height="600" class="img-responsive">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-7"><button type="button" class="btn" name="res_pack" value="60분">
              <img src="${pageContext.request.contextPath}/res/img/60min1.PNG" width="230" height="230"></button>
            <button type="button" class="btn mo" data-toggle="modal" data-target="#myModal2"><img src="${pageContext.request.contextPath}/res/img/lens.png"
                width="25" height="25"></button>
            <div id="myModal2" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-body">
                    <img src="${pageContext.request.contextPath}/res/img/60min2.PNG" width="465" height="600" class="img-responsive">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-7"><button type="button" class="btn" name="res_pack" value="60분">
              <img src="${pageContext.request.contextPath}/res/img/twin60min3.PNG" width="230" height="230"></button>
            <button type="button" class="btn mo" data-toggle="modal" data-target="#myModal3"><img src="${pageContext.request.contextPath}/res/img/lens.png"
                width="25" height="25"></button>
            <div id="myModal3" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-body">
                    <img src="${pageContext.request.contextPath}/res/img/twin60min2.PNG" width="465" height="600" class="img-responsive">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3 col-sm-7"><button type="button" class="btn" name="res_pack" value="30분">
              <img src="${pageContext.request.contextPath}/res/img/cat30min1.PNG" width="230" height="230"></button>
            <button type="button" class="btn mo" data-toggle="modal" data-target="#myModal4"><img src="${pageContext.request.contextPath}/res/img/lens.png"
                width="25" height="25"></button>
            <div id="myModal4" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
              aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-body">
                    <img src="${pageContext.request.contextPath}/res/img/cat30min2.PNG" width="465" height="600" class="img-responsive">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
<!--         <div class="form-group">돌봄 추가 옵션 -->
<!--           <div class="form-group"> -->
<!--             <label>실내 돌봄(강아지or고양이)</label> -->
<!--             <select class="form-control" name="res_pluspack1"> -->
<!--               <option value='' selected>---- 없음 ----</option> -->
<!--               <option value='30분'>30분 추가 ( +8,000원 )</option> -->
<!--               <option value='60분'>60분 추가 ( +16,000원 )</option> -->
<!--               <option value='120분'>120분 추가 ( +32,000원 )</option> -->
<!--             </select> -->
<!--             <label>산책 돌봄(강아지)</label> -->
<!--             <select class="form-control" name="res_pluspack2"> -->
<!--               <option value='' selected>---- 없음 ----</option> -->
<!--               <option value='30분'>30분 추가 ( +8,000원 )</option> -->
<!--               <option value='60분'>60분 추가 ( +16,000원 )</option> -->
<!--               <option value='120분'>120분 추가 ( +32,000원 )</option> -->
<!--             </select> -->
<!--           </div> -->
<!--         </div> -->
   
      <div>요청사항
        <div class="row">
          <textarea class="form-control" width="100%" rows="6" name="singularity" placeholder="반려동물 돌봄 시 요청사항을 알려주세요."></textarea>
        </div>
      </div>
      <div>돌봄용품위치
        <div class="row">
          <textarea class="form-control" width="100%" rows="6" name="location" placeholder="돌봄용품을 한곳에 모아주시고 위치를 안내해주세요."></textarea>
        </div>
      </div>
      <hr style="height:5px; background-color:lightskyblue;">
      <h2>부가정보</h2><br>
    </div>
    <div class="set lt">
      <div class="form-group">공동현관유무
        <div class="btn-group btn-group-toggle" data-toggle="buttons">
          <label class="btn btn-outline-info"><input type="radio" value="Y" class="yesorno" name="common_porch"
              id="commonPorchY" autocomplete="off">있음</label>
          <label class="btn btn-outline-info"><input type="radio" value="N" class="yesorno" name="common_porch"
              id="commonPorchN" autocomplete="off">없음</label>
        </div>
      </div>
      <div class="form-group">출입방법
        <div class="btn-group btn-group-toggle" data-toggle="buttons">
          <label class="btn btn-outline-info"><input type="radio" value="열쇠" class="yesorno" name="access_method"
              id="key" autocomplete="off">열쇠</label>
          <label class="btn btn-outline-info"><input type="radio" value="비밀번호" class="yesorno" name="access_method"
              id="pw" autocomplete="off">비밀번호</label>
          <label class="btn btn-outline-info"><input type="radio" value="카드" class="yesorno" name="access_method"
              id="card" autocomplete="off">카드</label>
        </div>
      </div>
      <div class="form-group">CCTV유무
        <div class="btn-group btn-group-toggle" data-toggle="buttons">
          <label class="btn btn-outline-info"><input type="radio" value="Y" class="yesorno" name="cctv" id="cctvY"
              autocomplete="off">있음</label>
          <label class="btn btn-outline-info"><input type="radio" value="N" class="yesorno" name="cctv" id="cctvN"
              autocomplete="off">없음</label>
        </div>
      </div>
      <div class="form-group">안전문유무
        <div class="btn-group btn-group-toggle" data-toggle="buttons">
          <label class="btn btn-outline-info"><input type="radio" value="Y" class="yesorno" name="safety_door"
              id="sefetyDoorY" autocomplete="off">있음</label>
          <label class="btn btn-outline-info"><input type="radio" value="N" class="yesorno" name="safety_door"
              id="sefrtyDoorN" autocomplete="off">없음</label>
        </div>
      </div>
      <div class="form-group">주차여부
        <div class="btn-group btn-group-toggle" id="park" data-toggle="buttons">
          <label class="btn btn-outline-info"><input type="radio" value="Y" class="yesorno" name="parking" id="parkY"
              autocomplete="off">있음</label>
          <label class="btn btn-outline-info"><input type="radio" value="N" class="yesorno" name="parking" id="parkN"
              autocomplete="off">없음</label>
        </div>
        <br>
      </div>
    </div>
      <textarea class="form-control parkinfo" cols="50" rows="6" name="useparking"
        placeholder="주차 이용 방법에 대해 알려주세요"></textarea>
      <hr style="border-top:3px double #bbb;">
      <div class="form-group reserveprice" style="text-align: right;">
        <span name="res"></span>
        <span name="res_price" id="price">총 금액 ${res_price} 원</span>
      </div>
      <hr style="height:5px; background-color:lightskyblue;">
      <button id="submit" type="submit" class="btn btn-info btn-block">SAVE</button>
  </div>
  </div>
  </form>
  </div>
</body>

</html>