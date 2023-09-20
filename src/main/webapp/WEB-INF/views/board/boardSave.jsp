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
<h2>글 작성</h2>
    <form action="boardSave" method="post">
        <input type="text" name="boardTitle" placeholder="제목"> <br>
        <input type="text" name="boardPass" placeholder="비밀번호"> <br>
        <input type="text" name="boardWriter" placeholder="작성자"> <br>
        <input type="text" name="boardContents" placeholder="내용"> <br>
        <input type="submit" value="작성">
    </form>

<%@include file="../component/footer.jsp"%>
</body>
</html>
