<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<%@ page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>yummy-product list</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.4/tiny-slider.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./product-style.css">
<script type="text/javascript">
	function addToCart() {
		if(confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		}
		else {
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<%
		String id = request.getParameter("id");
		ProductRepository dao = ProductRepository.getInstance();
		Product product = dao.getProductById(id);
		ArrayList<String> listOfFiles = product.getAllFiles();
	%>
    <div class="container">
        <div class="product">
            <div class="product-carousel" role="region">
                <div class="product-carousel-slider">
                    <ol class="slider-list">
                    	<%
                    		for(int i=0; i<listOfFiles.size(); i++) {
                    			String item = listOfFiles.get(i);
                    	%>
                    		<li class="slider-item" role="tabpanel" aria-labelledby="product-carousel-tab-"+ i>
	                            <figure>
	                             	<img src="assets/food-img/<%= item %>" />
	                            </figure>
	                            <figcaption class="visually-hidden">
	                                <%=product.getProductName() %> img
	                            </figcaption>
                        	</li>
                    	
                    	<%		
                    		}
                    	%>
                    </ol>
                </div>

                <div class="product-carousel-thumbnail">
                    <ol class="thumbnail-list" role="tablist">
                    	<%
                    		for(int i=0; i<listOfFiles.size(); i++) {
                    			String item = listOfFiles.get(i);
                    	%>
                    		<li class="thumbnail-item" id="product-carousel-tab-" + i role="tab">
	                            <button type="button">
	                                <img src="assets/food-img/<%= item %>" />
	                            </button>
                        	</li>
                    	
                    	<%		
                    		}
                    	%>
                    </ol>
                </div>
            </div>
            <div class="product-desc">
                <p class="badge">New</p>
                <h1><%=product.getProductName() %></h1>
                <div class="price">
                	<p>₩ <%=product.getPrice() %></p>
             
               	
                </div>
                <div class="nutrition">
                    <h3>Nutrition</h3>
                    <p>
                        <%=product.getNutrition() %>
                    </p>
                </div>
                <div class="buy-button">
                    <form name="addForm" action="./addCart.jsp?id=<%= product.getProductId()%>" method="post">
                    	<a href="./cart.jsp" class="fill-button inverted buy">Cart</a>
                    	<a href="#" class="fill-button buy" onclick="addToCart()">Buy Now</a>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="product-detail">
            <h2>Product details</h2>
            <div class="ingredient">
                <h3>Ingredient</h3>
                <p><%= product.getIngredient() %></p>
            </div>
            
            <div class="detail-img">
        		<%
               		for(int i=0; i<listOfFiles.size(); i++) {
               			String item = listOfFiles.get(i);
               	%>
               		<img src="assets/food-img/<%=item %>" />
               	
               	<%		
               		}
               	%>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tiny-slider/2.9.2/min/tiny-slider.js"></script>
    <script src="product-carousel.js"></script>
</body>
</html>