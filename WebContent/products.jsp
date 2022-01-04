<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Products</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./products-style.css">
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
    <section class="product">
        <div class="container">
            <h1 class="title">
                <fmt:message key="productTitle" />
            </h1>
            <div class="products-button">
                <a href="addProduct.jsp" class="fill-button"> <fmt:message key="productAddBtn" /></a>
            </div>
            <div class="meal-kit">
            <%@ include file="dbconn.jsp" %>
            <%
	            PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from product";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {         	
            %>
                <div class="product-card">
                    <div class="product-img">
                        <a href="product.jsp?id=<%= rs.getString("p_id") %>">
                            <div class="image-box">
                                <img src="/filepath/<%= rs.getString("p_fileName") %>" alt="<%= rs.getString("p_fileName") %>">
                            </div>
                        </a>
                        <div class="badge sale-badge">
                            <p>Sale</p>
                        </div>
                        <div class="duration">
                            <img src="assets/clock.png" alt="duration">
                            <p><%=rs.getString("p_duration") %> Min</p>
                        </div>
                    </div>
                    <div class="product-detail">
                        <div class="star level">
                       		<%
                       			int level = Integer.valueOf(rs.getString("p_level"));
                        		for(int j=level; j>0; j--) {
                        	%>
                        			<i class="fas fa-star"></i>
                        	<%
                        		}
                            %>
                        </div>
                        <a href="#">
                            <h4><%=rs.getString("p_name") %></h4>
                        </a>
                        <p><%=rs.getInt("p_price") %></p>
                        
                    </div>
                </div>
                
                <%
            		}
				
                %>
                
             

            </div>
            <a href="#" class="fill-button inverted view-all"><fmt:message key="viewAllBtn" /></a>
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