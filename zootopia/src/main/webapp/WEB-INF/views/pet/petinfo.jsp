<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MY PET 등록</title>

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
   
    <style type="text/css">
       .jumbotron{
         background-color: RGB(72,209,199);
         color: white;

      }
      
    </style>
   
           
</head>

<body>
   <script>
   function preview() {
       //console.log("preview 실행!");

       var fileTag = document.querySelector("input[name=f]");

       console.log(fileTag.files);
       //if(fileTag에 선택된 파일이 있다면){
       if (fileTag.files.length > 0) {
           //하나라고 가정하고 0번 위치의 파일만 읽어와서 미리보기를 실행!

           var reader = new FileReader();
           reader.onload = function (data) {//data는 읽은 파일의 내용
               //미리보기를 구현
               var imgTag = document.querySelector("img");
               imgTag.src = data.target.result;
           };
           reader.readAsDataURL(fileTag.files[0]);//읽도록 지시
       }
       else {//취소한 경우
           var imgTag = document.querySelector("img");
           imgTag.src = "";
       }

   }
   
   </script>
    <div class="container-fluid">
       
        
        <div class="row">
            <div class="offset-sm-4 col-sm-4 jumbotron">
            
            <h1>MY PET 등록</h1>
                <form action="petinfo" method="post" enctype="multipart/form-data">
                 
                 	<div class="form-group">
                        <label>사진</label>
                        <img  width="415" height="300">      
                        <input type="file" accept=".jpg, .gif, .png" name="f" multiple onchange="preview();">
                    </div>
                                     
                    <div class="form-group">
                        <label>대표 펫 이름</label>
                        <input type="text" name="pet_name" class="form-control">
                    </div>
                   
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">성별</label>
                            <select name= "pet_gender">
                              <option value="수컷">수컷</option>
                                <option value="암컷">암컷</option>
                            </select>
         
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label>대표 펫 품종</label>
                        <input type="text" name="pet_kind" class="form-control">
                    </div>
                    
                   <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">대표 펫 종류</label>
                            <select name= "pet_type">
                              <option value="반려견">반려견</option>
                                <option value="반려묘">반려묘</option>
                            </select>
                        </div>
                    </div>

                 
                    <div class="form-group">
                        <label>대표 펫 나이</label>
                        <input type="number" name="pet_age" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">대표 펫 크기</label>
                            <select name= "pet_size">
                              <option value="소형">소형</option>
                                <option value="중형">중형</option>
                                <option value="대형">대형</option>
                            </select>
                            </div>
                            </div>
                            
                           <div class="form-group">
                        <label>펫수</label>
                        <input type="number" name="pet_total" class="form-control">
                    </div>
                   
                     <label>세부 사항</label>
                  <div class="form-group">    
                        <textarea name="pet_intro" cols="55" rows="10" autofocus required wrap="hard"
                        placeholder="세부 사항을 적어주세요"></textarea>
              
                    </div>
        <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">대표 펫 접종 여부</label>
                            <select name= "pet_vaccin">
                              <option value="YES">YES</option>
                                <option value="NO">NO</option>
                                
                            </select>
                        </div>
                    </div>
                
                       <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">대표 펫  대소변 유무</label>
                             <select name= "pet_toilet">
                              <option value="YES">YES</option>
                                <option value="NO">NO</option>
                            </select>
                        </div>
                    </div>
  
     <button id="submit" type="submit" class="btn-group btn-group-toggle">등록</button>
</form>
</div>
</div>
</div>  
</body>
</html>