<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./cart-style.css">
    
    <%
		String cartId = session.getId();
	%>
</head>

<body>
    <jsp:include page="navbar.jsp" />
    <div class="container">
        <h3 class="title">장바구니</h3>
        <div class="content">
            <div class="menu">
                <a href="./deleteCart.jsp?cartId=<%= cartId%>" class="fill-button inverted">모든 상품 삭제하기</a>
                <a href="./shippingInfo.jsp?cartId=<%=cartId %>" class="fill-button">주문하기</a>
            </div>
            <div>
                <table>
                    <tr>
                        <th>상품</th>
                        <th>가격</th>
                        <th class="col-quantity">수량</th>
                        <th>소계</th>
                        <th class="col-delete">비고</th>
                    </tr>
                    <%
						int sum = 0;
						ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
						if(cartList == null) {
							cartList = new ArrayList<Product>();
						}
						
						for(int i=0; i<cartList.size(); i++) {
							Product product = cartList.get(i);
							int total = product.getPrice() * product.getQuantity();
							sum = sum + total;
					%>
                    <tr>
                        <td><a class="product-page" href="product.jsp?id=<%=product.getProductId()%>"><%= product.getProductId() %> - <%= product.getProductName() %></a></td>
                        <td><%= product.getPrice() %></td>
                        <td><%=product.getQuantity() %></td>
                        <td><%=total %></td>
                        <td>
                            <a href="./removeCart.jsp?id=<%= product.getProductId()%>" class="fill-button inverted delete-btn">삭제</a>
                        </td>
                    </tr>
				<%
					}
					
					if(sum == 0) {
						%>
						<tr><td>장바구니에 담긴 상품이 없습니다.</td></tr>
						<%
					}
				%>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>총액</th>
                        <th><%=sum %></th>
                        <th></th>
                    </tr>
                </table>
                <a href="./products.jsp" class="fill-button">쇼핑 계속하기</a>
            </div>
        </div>
    </div>
	<jsp:include page="footer.jsp" />
</body>

</html>