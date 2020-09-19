<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <%@ include file="/WEB-INF/template/header.jsp"%>  	
  <br><br>

<head>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css" />

    <script>
        $(function () {
            $.get('f_list_data'
                , function (data) {
                    console.log(data);
                    let container = $('#pagination');
                    container.pagination({
                        dataSource: data,
                        callback: function (data, pagination) {
                            var dataHtml = '';

                            $.each(data, function (index, item) {
                                dataHtml += '<tr><td><a href="f_content?f_board_no=' + item.f_board_no + '">' + item.f_title + '</td></a>\
                            <td>' + item.member_id + '</td>\
                            <td>' + item.f_when.split(' ')[0] + '</td>\
                            <td>' + item.f_read + '</td>\
                            </tr>';
                            });



                            $("#tbody").html(dataHtml);
                        }
                    })
                });
        })
    </script>

    <style>
        .center {
            margin: auto;
            text-align: center;
            position: absolute;
        }
    </style>


</head>

<body>

    <div class="container-fluid">
        <div class="row">
            <div class="offset-5 col-5">
                <h1><a href="..">주토피아 F&A</a></h1><br><br>
            </div>
        </div>
    </div>


    <div>
        <section>
            <div id="data-container"></div>

        </section>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="offset-2 col-8">
                <table class="table table-sm table-hover">
                    <thead class="thead-dark">
                        <tr>
                           
                            <th>제목</th>
                            <th>작성자</th>
                            <th>작성일</th>
                            <th>조회수</th>
                        </tr>
                    </thead>
                    <tbody id="tbody">
                       
                    </tbody>
                </table>
            </div>
        </div>
    </div>
	<div style="float: right;">
		<div>
			<c:if test="${userinfo.auth eq '관리자'}">
			<input type="button" value="글쓰기" onclick="location.href='f_write';">
			</c:if>
		</div>
	</div>
    


    <div class="container-fluid">
        <div class="row">
            <div class="offset-md-5 col-md-5">
                <div id="pagination"></div>
            </div>
        </div>
    </div>


</body>

</html>
<br><br>
<%@ include file="/WEB-INF/template/footer.jsp"%>