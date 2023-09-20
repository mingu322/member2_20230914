<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/resources/css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<%@include file="../component/header.jsp" %>
<%@include file="../component/nav.jsp" %>

<div class="container">
    <div class="card">
        <table class="table table-striped table-hover text-center">
            <thead>
            <tr>
                <th>글 번호</th>
                <th>제목</th>
                <th>작성자</th>
                <th>내용</th>
                <th>조회수</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach items="${boardList}" var="board">
                <tr>
                    <td>${board.id}</td>
                    <td><a href="/board/boardUpdate?id=${board.id}">${board.boardTitle}</a></td>
                    <td>${board.boardWriter}</td>
                    <td>${board.boardContents}</td>
                    <td>${board.boardHits}</td>
                    <td>
                        <button class="btn btn-primary" onclick="detail_fn('${board.id}')">조회</button>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delete_fn('${board.id}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
            </thead>
        </table>
    </div>
</div>

<%@include file="../component/footer.jsp" %>
</body>
<script>
    const detail_fn = (id) => {
        location.href = "/board/boardDetail?id=" + id;
    }
    const delete_fn = (id) => {
        location.href = "/board/delete?id=" + id;
    }
</script>
</html>
