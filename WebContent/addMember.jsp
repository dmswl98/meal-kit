<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./addMember-style.css">
    <script type="text/javascript">
	function checkForm() {
		if (!document.newMember.id.value) {
			alert("아이디를 입력하세요.");
			return false;
		}

		if (!document.newMember.password.value) {
			alert("비밀번호를 입력하세요.");
			return false;
		}

		if (document.newMember.password.value != document.newMember.password_confirm.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			return false;
		}
	}
</script>
</head>

<body>
     <jsp:include page="navbar.jsp" />

    <div class="container">
        <h3 class="title">회원 가입</h3>
        <form name="newMember" class="sign-up" action="processAddMember.jsp" method="post"
            onsubmit="return checkForm()">
            <div class="form-group">
                <label for="id">아이디</label>
                <div>
                    <input id="id" name="id" type="text" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="password">비밀번호</label>
                <div>
                    <input id="password" name="password" type="password" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="password_confirm">비밀번호확인</label>
                <div>
                    <input id="password_confirm" name="password_confirm" type="password" class="form-control">
                </div>
            </div>
            <div class="form-group">
                <label for="name">성명</label>
                <div>
                    <input id="name" name="name" type="text" class="form-control">
                </div>
            </div>

            <div class="form-group">
                <label for="phone">전화번호</label>
                <div>
                    <input id="phone" name="phone" type="text" class="form-control">

                </div>
            </div>
            <div class="form-group">
                <label for="address">주소</label>
                <div>
                    <input id="address" name="address" type="text" class="form-control">

                </div>
            </div>
            <div class="form-group">
                <div class="signup-btn">
                    <input type="submit" class="fill-button" value="등록 ">
                    <input type="reset" class="fill-button inverted" value="취소 " onclick="reset()">
                </div>
            </div>
        </form>
    </div>
    <jsp:include page="footer.jsp" />
</body>

</html>