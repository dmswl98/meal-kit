<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-Add Reviews</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./addReview-style.css">
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
	<div class="reviews">
        <div class="container">
            <h3 class="title"><fmt:message key="review" /></h3>
            <form name="newReview" action="./processAddReview.jsp" class="review-form" method="post" enctype="multipart/form-data">
                <div class="star-rating">
                    <label for="star"><fmt:message key="reviewRating" /></label>
                    <select name="starRating" id="starRating">
                        <option value="1">★</option>
                        <option value="2">★★</option>
                        <option value="3">★★★</option>
                        <option value="4">★★★★</option>
                        <option value="5">★★★★★</option>
                    </select>
                </div>
                <div class="product">
                    <label for="product"><fmt:message key="reviewProduct" /></label>
                    <select name="productName" id="productName">
                        <option value="Beef Burger">Beef Burger</option>
                        <option value="Chicken Burger">Chicken Burger</option>
                        <option value="Cinnamon Bread">Cinnamon Bread</option>
                        <option value="Pancake">Pancake</option>
                        <option value="Chicken Salad">Chicken Salad</option>
                        <option value="Chocolate Butter Cookies">Chocolate Butter Cookies</option>
                        <option value="Red Velvet Muffin">Red Velvet Muffin</option>
                        <option value="Beef Taco">Beef Taco</option>
                        <option value="Banana Walnut Cookies">Banana Walnut Cookies</option>
                        <option value="Cream Cheese Pie">Cream Cheese Pie</option>
                        <option value="Lasagna">Lasagna</option>
                        <option value="Raspberry Muffin">Raspberry Muffin</option>
                    </select>
                </div>
                <div class="review-title">
                    <label for="title"><fmt:message key="title" /></label>
                    <div>
                        <input type="text" id="title" name="title" class="review-input">
                    </div>

                </div>
                <div class="review-username">
                    <label for="username"><fmt:message key="username" /></label>
                    <div>
                        <input type="text" id="userName" name="userName" class="review-input">
                    </div>
                </div>
                <div class="review-content">
                    <label for="content"><fmt:message key="content" /></label>
                    <div>
                        <textarea id="content" name="content" cols="30" rows="10" class="review-input"></textarea>
                    </div>
                </div>
                <div class="review-image">
                    <label for="image"><fmt:message key="Img" /></label>
                    <div>
                        <input type="file" name="filename" class="review-input">
                    </div>
                </div>
                <div class="review-submit">
                    <input type="button" class="review-form-control fill-button" value="<fmt:message key="btn" />" onclick="CheckAddReview()">
                </div>
            </form>
        </div>
    </div>
    
  	<footer>
    <div class="container">
        <div class="footer-info">
            <div class="footer-block">
                <strong><fmt:message key="footer1" /></strong>
                <ul>
                    <li><a href="#"><fmt:message key="footer1Desc1" /></a></li>
                    <li><a href="#"><fmt:message key="footer1Desc2" /></a></li>
                    <li><a href="#"><fmt:message key="footer1Desc3" /></a></li>
                    <li><a href="#"><fmt:message key="footer1Desc4" /></a></li>
                </ul>
            </div>
            <div class="footer-block">
                <strong><fmt:message key="footer2" /></strong>
                <ul>
                    <li><a href="#"><fmt:message key="footer2Desc1" /></a></li>
                    <li><a href="#"><fmt:message key="footer2Desc2" /></a></li>
                    <li><a href="#"><fmt:message key="footer2Desc3" /></a></li>
                    <li><a href="#"><fmt:message key="footer2Desc4" /></a></li>
                </ul>
            </div>
            <div class="footer-block">
                <strong><fmt:message key="footer3" /></strong>
                <ul>
                    <li><a href="#"><fmt:message key="footer3Desc1" /></a></li>
                    <li><a href="#"><fmt:message key="footer3Desc2" /></a></li>
                    <li><a href="#"><fmt:message key="footer3Desc3" /></a></li>
                    <li><a href="#"><fmt:message key="footer3Desc4" /></a></li>
                </ul>
            </div>
            <div class="footer-block">
                <strong><fmt:message key="footer4" /></strong>
                <ul>
                    <li><a href="#"><fmt:message key="footer4Desc1" /></a></li>
                    <li><a href="#"><fmt:message key="footer4Desc2" /></a></li>
                    <li><a href="#">contact@yummy.com</a></li>
                    <li><a href="#">(031) 123-4567</a></li>
                </ul>
            </div>
        </div>
        <div class="footer-sns">
            <a href="#"><i class="fab fa-facebook"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-pinterest"></i></a>
            <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
    </div>
</footer>
  	</fmt:bundle>
  	
</body>
</html>