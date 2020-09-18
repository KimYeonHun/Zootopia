<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">


<script>
	$(function() {

		$.get("http://localhost:8080/zootopia/member/petsitterpage", function(
				response) {
			console.log(response);

			var label = [];
			var data = [];

			for (var i = 0; i < response.length; i++) {
				label.push(response[i].month);
				data.push(response[i].count);
			}

			var ctx = document.querySelector("#chart").getContext("2d");

			var chart = new Chart(ctx, {

				type : 'line',

				data : {

					labels : [ '6월', '7월', '8월', '9월' ],

					datasets : [ {
						label : '매칭 현황',
						data : [ 10, 15, 13, 14 ],

						backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
								'rgba(54, 162, 235, 0.2)',
								'rgba(255, 206, 86, 0.2)',
								'rgba(75, 192, 192, 0.2)',
								'rgba(153, 102, 255, 0.2)',
								'rgba(255, 159, 64, 0.2)' ],
						borderColor : [ 'rgba(255, 99, 132, 1)',
								'rgba(54, 162, 235, 1)',
								'rgba(255, 206, 86, 1)',
								'rgba(75, 192, 192, 1)',
								'rgba(153, 102, 255, 1)',
								'rgba(255, 159, 64, 1)' ],

					} ],

				},

				options : {
					scales : {
						yAxes : [ {
							ticks : {

								suggestedMin : 0, //최소값 지정
								suggestedMax : 10, //최대값 지정
							}
						} ]
					}
				}
			});
		});
	});
</script>

<title>grape</title>
</head>
<body>





	<div class="inputArea">


		<canvas width="423" height="200" class="chartjs-render-monitor"
			id="chart" style="width: 323px; height: 123px; display: block;"></canvas>
	</div>

<button type="submit" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">되돌아 가기</button> 

</body>
</html>