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
<h2>글 수정</h2>
<form action="/board/boardUpdate" method="post">
    <input type="hidden" placeholder="번호" name="id" value="${boardUpdate.id}"> <br>
    <input type="text"  placeholder="제목을 입력하세요." name="boardTitle" value="${boardUpdate.boardTitle}"><br>
    <input type="text"  placeholder="내용을 입력하세요." name="boardContents" value="${boardUpdate.boardContents}"><br>
    <input type="submit" value="수정">
</form>

<%@include file="../component/footer.jsp"%>
</body>
</html>
