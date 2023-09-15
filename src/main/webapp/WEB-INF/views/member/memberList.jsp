<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="memberList">
    <table class="table table-striped table-hover text-center">
        <tr>
            <th>맴버번호</th>
            <th>이메일</th>
            <th>이름</th>
            <th>전화번호</th>
        </tr>
        <c:forEach items="${memberList}" var="member">
            <tr>
                <td>${member.id}</td>
                <td>${member.memberEmail}</td>
                <td>${member.memberName}</td>
                <td>${member.memberMobile}</td>
                <td>
                    <button class="btn btn-danger" onclick="delete_fn('${member.id}')">삭제</button>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
<script>
    const delete_fn = (id) => {
        location.href = "/delete?id=" + id;
    }
</script>
</html>
