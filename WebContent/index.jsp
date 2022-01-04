<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
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
    <link rel="stylesheet" href="./index-style.css">
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
    <div class="landing">
        <div class="landing-wrapper">
            <div class="landing-left">
                <div class="landing-title">
                    <h1>Good Food <br> Good Mood</h1>
                    <p><fmt:message key="indexDesc" /></p>
                    <div class="deco-box"></div>
                </div>
            </div>
            <div class="landing-right">
                <img src="assets/landing-img.png">
            </div>
        </div>
    </div>

    <section class="service">
        <div class="container">
            <div class="service-desc">
                <img src="assets/high-quality.png" alt="High-Quality">
                <div class="detail">
                    <h3><fmt:message key="service1" /></h3>
                    <p><fmt:message key="service1Desc" /></p>
                </div>
            </div>
            <div class="service-desc">
                <img src="assets/warranty.png" alt="Warranty">
                <div class="detail">
                    <h3><fmt:message key="service2" /></h3>
                    <p><fmt:message key="service2Desc" /></p>
                </div>
            </div>
            <div class="service-desc">
                <img src="assets/free-shipping.png" alt="Free-Shipping">
                <div class="detail">
                    <h3><fmt:message key="service3" /></h3>
                    <p><fmt:message key="service3Desc" /></p>
                </div>
            </div>
            <div class="service-desc">
                <img src="assets/support.png" alt="Support">
                <div class="detail">
                    <h3><fmt:message key="service4" /></h3>
                    <p><fmt:message key="service4Desc" /></p>
                </div>
            </div>
        </div>
    </section>
    
    <section class="information">
        <div class="container">
            <p class="subtitle"><fmt:message key="info" /></p>
            <h1 class="title"><fmt:message key="infoTitle" /></h1>
            <div class="information-desc">
                <div class="information-img">
                    <img src="assets/service-img1.png">
                </div>
                <div class="detail">
                    <h3><fmt:message key="info1" /></h3>
                    <p><fmt:message key="info1Desc" /></p>
                </div>
            </div>
            <div class="information-desc">
                <div class="information-img">
                    <img src="assets/service-img2.png">
                </div>
                <div class="detail">
                    <h3><fmt:message key="info2" /></h3>
                    <p><fmt:message key="info2Desc" /></p>
                </div>
            </div>
            <div class="information-desc">
                <div class="information-img">
                    <img src="assets/service-img3.png">
                </div>
                <div class="detail">
                    <h3><fmt:message key="info3" /></h3>
                    <p><fmt:message key="info3Desc" /></p>
                </div>
            </div>
            <div class="information-desc">
                <div class="information-img">
                    <img src="assets/service-img4.png">
                </div>
                <div class="detail">
                    <h3><fmt:message key="info4" /></h3>
                    <p><fmt:message key="info4Desc" /></p>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="subscribe">
            <div class="container">
                <div class="subscribe-desc">
                    <p class="subtitle"><fmt:message key="subscribe" /></p>
                    <h1 class="title">Home Cooking <br> Made Simple</h1>
                    <p class="subscribe-detail">
                       <fmt:message key="subscribeDesc" />
                    </p>
                    <div class="form">
                        <input type="text" placeholder="<fmt:message key="subscribeInput" />">
                        <a href="#" class="fill-button submit"><fmt:message key="btn" /></a>
                    </div>
                </div>
                <div>
                    <img src="assets/newsletter.png">
                </div>
            </div>
        </div>
    </section>
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