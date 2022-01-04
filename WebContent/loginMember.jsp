<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./login-style.css">
</head>
<body>
	<jsp:include page="navbar.jsp" />

<fmt:setLocale value='<%=request.getParameter("language") %>' />
	<fmt:bundle basename="bundle.message" >
	<div class="change-lang">
        <div class="container">
            <div class="lang-btn navbar-btn">
                <a href="?language=ko" class="lang lang-ko"><img src="./assets/lang-ko.png"></a>
                <a href="?language=en" class="lang lang-en"><img src="./assets/lang-en.png"></a>
            </div>
        </div>
    </div>
	<div class="login">
        <div class="container">
            <h1 class="title">로그인</h1>

           	<%
				String error = request.getParameter("error");
				if(error != null) {
					out.println("<div class='login_failed'>");
					out.println("아이디와 비밀번호를 확인해주세요");
					out.println("</div>");
				}
			%>
            <form class="form-signin" action="./processLoginMember.jsp"	method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">Id</label>
					<input type="text" class="form-control" placeholder="ID" name='id' 
					required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password</label>
					<input type="password" class="form-control" placeholder="Password" name='password' 
					required autofocus>
				</div>
				<button class="fill-button" type="submit">로그인</button>
			</form>	
        </div>
    </div>
    </fmt:bundle>
</body>
</html>