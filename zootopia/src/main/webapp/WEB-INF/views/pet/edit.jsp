<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>MY PET 수정</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
	integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
	crossorigin="anonymous"></script>

<style type="text/css">
.jumbotron {
	background-color: RGB(72, 209, 199);
	color: white;
}
</style>



</head>

<body>
	<div class="container-fluid">


		<div class="row">
			<div class="offset-sm-4 col-sm-4 jumbotron">

				<h1>MY PET 수정</h1>
				<form action = "edit"class="pet" method="post">

					<div class="form-group">
						<label>대표 펫 이름</label> <input type="text" name="pet_name"
							class="form-control" value="${petDto.pet_name}" />
					</div>

					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-info">대표 펫 성별</label> <select
								name="pet_gender">
								<option value="수컷">수컷</option>
								<option value="암컷">암컷</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label>대표 펫 품종</label> <input type="text" name="pet_kind"
							class="form-control" value="${petDto.pet_kind}" />
					</div>

					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-info">대표 펫 종류</label> <select
								name="pet_kind">
								<option value="반려견">반려견</option>
								<option value="반려묘">반려묘</option>
							</select>
						</div>
					</div>


					<div class="form-group">
						<label>대표 펫 나이</label> <input type="number" name="pet_age"
							class="form-control" value="${petDto.pet_age}" />
					</div>
					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-info">펫 크기</label> <select name="pet_size">
								<option value="소형">소형</option>
								<option value="중형">중형</option>
								<option value="중형">대형</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<label>펫수</label> <input type="number" name="pet_total"
							class="form-control" value="${petDto.pet_total}" />
					</div>

					<label>세부 사항</label>
					<div class="form-group">
						<textarea name="info" form="inform" cols="55" rows="10">${petDto.pet_intro}</textarea>


					</div>
					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-info">대표 펫 접종 여부</label> <select
								name="pet_vaccin">
								<option value="YES">YES</option>
								<option value="NO">NO</option>
							</select>
						</div>
					</div>

					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-info">대표 펫 대소변 유무</label> <select
								name="pet_toilet">
								<option value="YES">YES</option>
								<option value="NO">NO</option>
							</select>


						</div>
					</div>
					<div class="form-group">
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<button class="btn btn-info" type="submit">수정 완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>

</html>