<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

    <script>
        //이미지 선택시 실행할 미리보기 함수
        //1. onchange 이므로 파일이 추가되거나 취소될 때 모두 실행
        //2. 파일이 추가되는 경우를 조건으로 감지한다.
        //3. 읽기 도구를 생성(FileReader)
        //4. 다 읽은 경우에는 미리보기를 표시할 수 있도록 예약(콜백) 설정
        function preview(){
            //console.log("preview 실행!");
            
            var fileTag = document.querySelector("input[name=f]");
            
            console.log(fileTag.files);
            //if(fileTag에 선택된 파일이 있다면){
            if(fileTag.files.length > 0){
                //하나라고 가정하고 0번 위치의 파일만 읽어와서 미리보기를 실행!
                
                var reader = new FileReader();
                reader.onload = function(data){//data는 읽은 파일의 내용
                    //미리보기를 구현
                    var imgTag = document.querySelector("img");
                    imgTag.src = data.target.result;
                };
                reader.readAsDataURL(fileTag.files[0]);//읽도록 지시
            }
            else{//취소한 경우
                var imgTag = document.querySelector("img");
                imgTag.src = "";
            }
            
        }
   </script>
   <script>
        $(function(){
            //canvas는 그림을 그릴 수 있는 태그
            //- context는 그림을 그릴 수 있는 도구를 의미
            //- canvas를 이용해서 2D 또는 3D 그림을 그릴 수 있다.

            //2D 그리기 도구를 ctx라는 이름으로 저장
            var ctx = document.querySelector("#chart").getContext("2d");

            //차트 생성 코드
            var chart = new Chart(ctx, {
                // 만들고 싶은 차트의 유형
                type: 'bar',

                // 실제 차트를 구성하는 데이터
                data: {

                    //축에 표시될 라벨 정보
                    labels: ['1월', '2월', '3월', '4월', '5월', '6월'],

                    //실제 데이터
                    datasets: [{
                        label: '성적',
                        data: [50, 60, 65, 62, 80, 75], 

                        //데이터 배경색 및 테두리 색상 설정
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)',
                            'rgba(255, 206, 86, 0.2)',
                            'rgba(75, 192, 192, 0.2)',
                            'rgba(153, 102, 255, 0.2)',
                            'rgba(255, 159, 64, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                            'rgba(153, 102, 255, 1)',
                            'rgba(255, 159, 64, 1)'
                        ],
                        
                    }],

                },

                // 기타 제어용 옵션
                // - y축의 최소/최대값
                options: {
                    scales: {
                        yAxes:[{
                            ticks:{
                                //beginAtZero:true,     //0부터 시작
                                suggestedMin : 0,         //최소값 지정
                                suggestedMax : 100,    //최대값 지정
                            }
                        }]
                    }
                }
            });
        });
    </script>
</head>
<body>
    <!-- 
        사진을 선택하려면 파일 선택기가 있어야 한다. 
        (주의) input[type=file]에는 절대로 value를 줄 수 없다(보안)
    -->
    <input type="file" accept=".jpg, .gif, .png" name="f" multiple 
                                                                    onchange="preview();">
    <img>

    <canvas id="chart"></canvas>
</body>
</html>