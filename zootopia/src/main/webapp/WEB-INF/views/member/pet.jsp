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
    <div class="container-fluid">
    	
        
        <div class="row">
            <div class="offset-sm-4 col-sm-4 jumbotron">
            
            <h1>MY PET 등록</h1>
                <form class="pet" method="post">
                 
                    <div class="form-group">
                        <label>펫 이름</label>
                        <input type="text" name="pet_name" class="form-control">
                    </div>
                   
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">성별</label>
                            <label class="btn btn-info">
                               <input value="수컷" type="radio" name="gender" id="option1" autocomplete="off"> 수컷
                            </label>
                            <label class="btn btn-info">
                                <input value="암컷" type="radio" name="gender" id="option2" autocomplete="off"> 암컷
                            </label>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label>품종</label>
                        <input type="text" name="pet_kind" class="form-control">
                    </div>
                    
                   <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">종류</label>
                            <label class="btn btn-info">
                               <input value="반려견" type="radio" name="pet_type" id="option1" autocomplete="off">반려견
                            </label>
                            <label class="btn btn-info">
                                <input value="반려묘" type="radio" name="pet_type" id="option2" autocomplete="off">반려묘
                            </label>
                        </div>
                    </div>

                 
                    <div class="form-group">
                        <label>펫 나이</label>
                        <input type="number" name="pet_age" class="form-control">
                    </div>
                    <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">펫 크기</label>
                           <label class="btn btn-info">
                               <input value="소형" type="checkbox" name="size" id="option1" autocomplete="off"> 소형
                            </label>
                            <label class="btn btn-info">
                                <input value="중형" type="checkbox" name="size" id="option2" autocomplete="off"> 중형
                            </label>
                            <label class="btn btn-info">
                                <input value="대형" type="checkbox" name="size" id="option3" autocomplete="off"> 대형
                            </label>
                            </div>
                            </div>
                            
                           <div class="form-group">
                        <label>펫수</label>
                        <input type="number" name="pet_total" class="form-control">
                    </div>
                   
                     <label>세부 사항</label>
                  <div class="form-group">    
                        <textarea name="info" form="inform" cols="55" rows="10" autofocus required wrap="hard"
                        placeholder="세부 사항을 적어주세요"></textarea>
              
                    </div>
        <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">접종 여부</label>
                            <label class="btn btn-info">
                               <input value= "YES" type="radio" name="vaccin" id="option1" autocomplete="off"> YES
                            </label>
                            <label class="btn btn-info" >
                                <input value="NO" type="radio" name="vaccin" id="option2" autocomplete="off"> NO
                            </label>
                        </div>
                    </div>
                
                       <div class="form-group">
                        <div class="btn-group btn-group-toggle" data-toggle="buttons">
                            <label class="btn btn-info">대소변 유무</label>
                            <label class="btn btn-info">
                               <input value= "YES" type="radio" name="vaccin" id="option1" autocomplete="off"> YES
                            </label>
                            <label class="btn btn-info">
                                <input value="NO" type="radio" name="vaccin" id="option2" autocomplete="off"> NO
                            </label>
                        </div>
                    </div>
  
     <button id="submit" type="submit" class="btn-group btn-group-toggle">등록</button>
</body>
</form>
</div>
</div>
</div>  
</html>