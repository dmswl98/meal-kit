<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>yummy-Reviews</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./reviews-style.css">
</head>
<body>
    <jsp:include page="navbar.jsp" />
	
    <div class="reviews">
        <div class="container">
            <h3 class="title">Reviews</h3>
            <div class="reviews-button">
                <a href="addReview.jsp" class="fill-button">Write</a>
            </div>
            
            <%@ include file="dbconn.jsp" %>
            <%
	            PreparedStatement pstmt = null;
				ResultSet rs = null;
				String sql = "select * from review";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				while(rs.next()) {         	
            %>
            
            <div class="reviews-wrapper">
                <div class="reviews-img">
                    <img src="/filepath/<%=rs.getString("r_filename") %>" style="width: 100%">
                </div>
                <div class="reviews-content">
                    <h3>[<%=rs.getString("p_name") %>]  <%=rs.getString("r_title") %></h3>
                    <div class="reviews-header">
                        <div class="star star-rating">
                        	<%
                        		int num = rs.getInt("r_starRating");
                        		for(int j=num; j>0; j--) {
                        	%>
                        			<i class="fas fa-star is-active"></i>
                        	<%
                        		}
                        	 
                        		for(int j=5-num; j>0; j--) {
                        	%>
                        			<i class="fas fa-star"></i>	
                        	<%
                        		}
                        	%>
                        </div>
                       
                        <p><%=rs.getString("user_id")%></p>
                    </div>
                    <p class="reviews-desc"><%=rs.getString("r_content") %></p>
             	</div>
            </div>

			<%
            	}
			%>


        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>