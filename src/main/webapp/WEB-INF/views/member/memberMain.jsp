<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="/resources/css/main.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
</head>
<body>
<%@include file="../component/header.jsp"%>
<%@include file="../component/nav.jsp"%>

  <h2>회원 페이지</h2>
  로그인 이메일 : ${sessionScope.loginEmail} <br>

  <c:if test="${sessionScope.loginEmail == 'admin'}">
    <a href="/member/memberList">회원목록</a> <br>
  </c:if>

  <a href="/logout">로그아웃</a> <br>

<%@include file="../component/footer.jsp"%>
</body>
</html>
