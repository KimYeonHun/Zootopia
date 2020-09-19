<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@ include file="/WEB-INF/template/header.jsp"%>  	
  <br><br>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/minty/bootstrap.min.css"
        integrity="sha384-H4X+4tKc7b8s4GoMrylmy2ssQYpDHoqzPa9aKXbDwPoPUA3Ra8PA5dGzijN+ePnH" crossorigin="anonymous">




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
            <div class="offset-4 col-6">
                <h1><a href="..">주토피아 Q&A</a></h1><br><br>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="offset-1 col-9">
                <table class="table table-hover">
                    <thead>
                        <tr class="table-primary">
                            <th>신청인 아이디</th>
                            <th>신청인 이름</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="petsitterDto" items="${list}">
                            <tr>
                                <td>${petsitterDto.member_id}</td>
                                <td>${petsitterDto.petsitter_nick}</td>
                                <td>
                                <a href="content/${petsitterDto.petsitter_no}">
                                <button type="button" name="petsitter_no" class="btn btn-primary" value="${petsitterDto.petsitter_no}">내용 보기</button>
                                </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
<br><br>
<%@ include file="/WEB-INF/template/footer.jsp"%>