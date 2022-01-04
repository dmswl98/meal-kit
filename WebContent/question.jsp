<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./question-style.css">
</head>
<body>
	<jsp:include page="navbar.jsp" />
    <!-- <div class="question">
        <div class="container">
            <h3>Ask a question</h3>
            <form class="form-section" action="#" method="post">
                <label for="title">Title</label>
                <input type="text" id="title">
                <label for="content">Provide the question details</label>
                <textarea name="content" id="content" cols="30" rows="10"></textarea>
                <button type="submit" class="fill-button">Ask</button>
            </form>
        </div>
    </div> -->

    <div class="container">
        <h3 class="title">Q & A</h3>
        <div class="ask-button">
            <a href="#" class="fill-button">Write</a>
        </div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>분류</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <!-- 테스트 코드 -->
                    <td>1</td>
                    <td>배송 문의</td>
                    <td><a class="content" href="#">안녕하세요</a></td>
                    <td>홍길동</td>
                    <td>2020-07-13</td>
                </tr>
                <tr>
                    <!-- 테스트 코드 -->
                    <td>2</td>
                    <td>제품 문의</td>
                    <td><a class="content" href="#">안녕하세요</a></td>
                    <td>김철수</td>
                    <td>2020-07-15</td>
                </tr>
            </tbody>
        </table>


    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>