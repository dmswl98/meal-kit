<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 가입 완료</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./resultMember-style.css">
</head>

<body>
    <jsp:include page="navbar.jsp" />

    <div class="container">
        <h3 class="title">환영합니다.</h3>
        <% 
	        String msg=request.getParameter("msg"); 
	        if (msg !=null) { 
	        	if (msg.equals("1")){
					out.println("<h2 class='login-desc'>가입 완료</h2>");
	        	}
	        	else if (msg.equals("2")) {
	            	response.sendRedirect("index.jsp");
	            }
	        } 
        %>
    </div>
</body>

</html>