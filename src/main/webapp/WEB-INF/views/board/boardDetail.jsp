<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<%@include file="../component/header.jsp"%>
<%@include file="../component/nav.jsp"%>
<h2>글 상세조회</h2>
<div id="section">
    <table class="table table-striped">
        <tr>
            <th>id</th>
            <td>${boardDetail.id}</td>
        </tr>
        <tr>
            <th>제목</th>
            <td>${boardDetail.boardTitle}</td>
        </tr>
        <tr>
            <th>작성자</th>
            <td>${boardDetail.boardWriter}</td>
        </tr>
        <tr>
            <th>내용</th>
            <td>${boardDetail.boardContents}</td>
        </tr>
        <%--<tr>
            <th>이미지</th>
            <td>
                <c:forEach items="${memberFilelist}" var="memberProfile">
                    <img src="${pageContext.request.contextPath}/upload/${memberProfile.storedFileName}"
                         alt="" width="100" height="100">
                </c:forEach>
            </td>
        </tr>--%>
    </table>
</div>

<%@include file="../component/footer.jsp"%>
</body>
</html>
