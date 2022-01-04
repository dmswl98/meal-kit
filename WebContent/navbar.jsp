<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%>
<div class="navigation">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="index.jsp">
                    <h1>yummy.</h1>
                </a>
            </div>
            <nav>
                <ul class="navbar-list">
                    <li><a href="products.jsp">Meal Kit</a></li>
                    <li><a href="#">Meal Planner</a></li>
                    <li><a href="recipes.jsp">Recipes</a></li>
                    <li><a href="reviews.jsp">Reviews</a></li>
                    <li><a href="question.jsp">Q & A</a></li>
                </ul>
            </nav>
            <img src="assets/menu.png" class="menu-icon" onclick="menutoggle()">
            <div class="button navbar-btn">
            <c:choose>
					<c:when test="${empty sessionId}">
						<a href='<c:url value="./addMember.jsp"/>' class="fill-button">Sign Up</a>
                		<a href="<c:url value="./loginMember.jsp"/>" class="fill-button inverted">Log In</a>
					</c:when>
					<c:otherwise>
						<p class="user"><strong>[<%=sessionId%>]</strong></p>
						<a href='<c:url value="./cart.jsp"/>' class="fill-button">Cart</a>
						<a href="<c:url value="./logoutMember.jsp"/>" class="fill-button inverted">Log out </a>
					</c:otherwise>
				</c:choose>
            </div>
        </div>
    </div>
</div>