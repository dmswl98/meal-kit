<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-Add products</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./addProduct-style.css">
   <script type="text/javascript" src="./validation.js"></script>
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
	<div class="products">
        <div class="container">
            <h3 class="title"><fmt:message key="addProduct" /></h3>
            <form name="newProduct" action="./processAddProduct.jsp" class="product-form" method="post" enctype="multipart/form-data">
                <div class="product-id product">
                    <label for="id"><fmt:message key="productId" /></label>
                    <div>
                        <input type="text" id="productId" name="productId" class="product-input">
                    </div>
                </div>
                <div class="product-name product">
                    <label for="name"><fmt:message key="productName" /></label>
                    <div>
                        <input type="text" id="productName" name="productName" class="product-input">
                    </div>
                </div>
                <div class="product-price product">
                    <label for="price"><fmt:message key="productPrice" /></label>
                    <div>
                        <input type="text" id="price" name="price" class="product-input">
                    </div>
                </div>
               
                <div class="product-level product">
                    <label for="level"><fmt:message key="productLevel" /></label>
                    <select name="level" id="level">
                        <option value="1">★</option>
                        <option value="2">★★</option>
                        <option value="3">★★★</option>
                        <option value="4">★★★★</option>
                        <option value="5">★★★★★</option>
                    </select>
                </div>
                <div class="product-duration product">
                    <label for="duration"><fmt:message key="productDuration" /></label>
                    <div>
                    	<input type="text" id="duration" name="duration" class="product-input">분
                    </div>
                </div>
                <div class="product-nutrition product">
                    <label for="nutrition"><fmt:message key="productNutrition" /></label>
                    <div>
                        <textarea id="nutrition" name="nutrition" cols="30" rows="10" class="product-input"></textarea>
                    </div>
                </div>
                <div class="product-image product">
                    <label for="image"><fmt:message key="Img" /></label>
                    <div>
                        <input type="file" name="filename" class="product-input">
                    </div>
                </div>
                <div class="product-submit">
                    <input type="button" class="product-form-control fill-button" value="<fmt:message key="btn" />" onclick="CheckAddproduct()">
                </div>
            </form>
        </div>
    </div>
    </fmt:bundle>
    <jsp:include page="footer.jsp" />
</body>
</html>