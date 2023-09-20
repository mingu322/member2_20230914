<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <th>맴버번호</th>
                <th>이메일</th>
                <th>이름</th>
                <th>전화번호</th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${memberList}" var="member">
                <tr>
                    <td>${member.id}</td>
                    <td><a href="/member/memberUpdate?id=${member.id}">${member.memberEmail}</a></td>
                    <td>${member.memberName}</td>
                    <td>${member.memberMobile}</td>
                    <td>
                        <button class="btn btn-primary" onclick="detail_fn('${member.id}')">조회</button>
                    </td>
                    <td>
                        <button class="btn btn-danger" onclick="delete_fn('${member.id}')">삭제</button>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>


<%--<div id="memberList">--%>
<%--    <table class="table table-striped table-hover text-center">--%>
<%--        <tr>--%>
<%--            <th>맴버번호</th>--%>
<%--            <th>이메일</th>--%>
<%--            <th>이름</th>--%>
<%--            <th>전화번호</th>--%>
<%--        </tr>--%>
<%--        <c:forEach items="${memberList}" var="member">--%>
<%--            <tr>--%>
<%--                <td>${member.id}</td>--%>
<%--                <td><a href="/member/memberUpdate?id=${member.id}">${member.memberEmail}</a></td>--%>
<%--                <td>${member.memberName}</td>--%>
<%--                <td>${member.memberMobile}</td>--%>
<%--                <td>--%>
<%--                    <button class="btn btn-danger" onclick="detail_fn('${member.id}')">조회</button>--%>
<%--                </td>--%>
<%--                <td>--%>
<%--                    <button class= "btn btn-danger" onclick="delete_fn('${member.id}')">삭제</button>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>
<%--</div>--%>

<%@include file="../component/footer.jsp" %>
</body>
<script>
    const detail_fn = (id) => {
        location.href = "/member/memberDetail?id=" + id;
    }
    const delete_fn = (id) => {
        location.href = "/member/delete?id=" + id;
    }
</script>
</html>
