<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<div id="nav">
    <ul class="menu">
        <li class="menu-item">
            <a href="/">index</a>
        </li>
        <li class="menu-item">
            <a href="/member/memberSave">회원가입</a>
        </li>
        <!--        <li class="menu-item">-->
        <!--            <a href="/login">로그인</a>-->
        <!--        </li>-->
        <li class="menu-item">
            <a href="/member/memberList">회원목록</a>
        </li>
        <!-- 로그인 여부에 따라 로그인했으면 oo님 환영합니다. 로그아웃링크 보이고
             로그인 하지 않았으면 로그인 이 보이도록
        -->
        <li class="menu-item" id="login-area">

        </li>
        <li class="menu-item">
            <a href="/board/boardSave">글쓰기</a>
        </li>
        <li class="menu-item">
            <a href="/board/boardList">글목록</a>
        </li>
    </ul>
</div>--%>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Navbar</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-link active" aria-current="page" href="/">index</a>
                <a class="nav-link" href="/member/memberLogin">로그인</a>
                <a class="nav-link" href="/member/memberSave">회원가입</a>
                <a class="nav-link" href="/member/memberList">회원목록</a>
                <a class="nav-link" href="/board/boardSave">글쓰기</a>
                <a class="nav-link" href="/board/boardList">글목록</a>
                <a class="nav-link disabled" aria-disabled="true">Disabled</a>
            </div>
        </div>
    </div>
</nav>

<script>
    const loginArea = document.getElementById("login-area");
    const loginEmail = '${sessionScope.loginEmail}';
    console.log(loginEmail.length);
    if (loginEmail.length != 0) {
        // 로그인 했음
        loginArea.innerHTML = "<a href='/member/memberMain'>" + loginEmail + "님 환영해요!</a>" +
            "<a href='/logout'>logout</a>";
    } else {
        // 로그인 안했음
        loginArea.innerHTML = "<a href='/member/memberLogin'>로그인</a>";
    }
</script>