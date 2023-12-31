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
<h2>회원가입</h2>
<form action="memberSave" method="post">
    <input type="text" name="memberEmail" placeholder="이메일"> <br>
    <input type="text" name="memberPassword" placeholder="비밀번호"> <br>
    <input type="text" name="memberName" placeholder="이름"> <br>
    <input type="text" name="memberMobile" placeholder="전화번호"> <br>
    <%--<input type="file" name="memberProfile" multiple> <br>--%>
    <input type="submit" value="회원가입">
</form>

<%@include file="../component/footer.jsp"%>
</body>
</html>
