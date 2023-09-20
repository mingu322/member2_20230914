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
<h2>회원정보 수정</h2>
<form action="/member/memberUpdate" method="post">
    <input type="hidden" placeholder="id" name="id" value="${memberUpdate.id}"> <br>
    <input type="text" placeholder="이메일을 입력하세요." name="memberEmail" value="${memberUpdate.memberEmail}"><br>
    <input type="text" placeholder="비밀번호를 입력하세요." name="memberPassword" value="${memberUpdate.memberPassword}"><br>
    <input type="text" placeholder="이름을 입력하세요." name="memberName" value="${memberUpdate.memberName}"><br>
    <input type="text" placeholder="전화번호를 입력하세요." name="memberMobile" value="${memberUpdate.memberMobile}"><br>
    <input type="submit" value="수정">
</form>

<%@include file="../component/footer.jsp"%>
</body>
</html>
