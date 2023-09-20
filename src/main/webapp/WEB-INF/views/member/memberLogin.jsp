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
<h2>로그인</h2>
<form action="memberLogin" method="post">
    <input type="text" name="memberEmail" placeholder="이메일을 입력하세요."> <br>
    <input type="text" name="memberPassword" placeholder="비밀번호를 입력하세요."> <br>
    <input type="submit" value="로그인">
</form>

<%@include file="../component/footer.jsp"%>
</body>
</html>
