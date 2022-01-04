<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shipping</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@400;500;700&family=Noto+Sans:wght@400;700&display=swap"
        rel="stylesheet">
    <script src="https://kit.fontawesome.com/b8ba35d266.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./cart-style.css">
    <link rel="stylesheet" href="./shippingInfo-style.css">
    
    <%
		String cartId = session.getId();
	%>
</head>
<body>
	<jsp:include page="navbar.jsp"/>
	<div class="order">
	<div class="container">
		<h3 class="title">배송 정보</h3>
		<div class="menu-btn">
			<a href="./cart.jsp?cartId=<%= request.getParameter("cartId")%>" class="fill-button inverted" role="button">이전</a>
			<a href="./checkOutCancelled.jsp" class="fill-button inverted" role="button">취소</a>
		</div>
		<h3 class="subtitle">주문상품</h3>
		<table class="table table-striped">
            <thead>
                <tr>
                    <th colspan="2">상품</th>
                    <th>수량</th>
                    <th>가격</th>
                </tr>
            </thead>
            <tbody>
            	<%
						int sum = 0;
						ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
						
						for(int i=0; i<cartList.size(); i++) {
							Product product = cartList.get(i);
							int total = product.getPrice() * product.getQuantity();
							sum = sum + total;
					%>
                <tr>
                    <td class="product-name">
                    	<%=product.getProductName() %>
                    </td>
                    <td class="product-img">
                   		<div class="order-img">
                   			<a href="product.jsp?id=<%=product.getProductId()%>"><img src="assets/food-img/<%= product.getMainFileName() %>" /></a>
                   		</div>
                    </td>
                    <td><%=product.getQuantity() %></td>
                    <td><%=total %></td>
                </tr>
           		<%
					}
				%>
				<tr>
                     <th colspan="2"></th>
                     <th>총액</th>
                     <th><%=sum %></th>        
                </tr>
            </tbody>
        </table>
        
		<form action="./processShippingInfo.jsp" class="form-horizontal" method="post">
			<input type="hidden" name="cartId" value="<%= request.getParameter("cartId")%>" />
			<div class="form-group">
				<label for="name">주문자</label>
				<div class="form-input">
					<input id="name" name="name" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="addressName">주소</label>
				<div class="form-input">
					<input id="addressName" name="addressName" type="text" class="form-control" />
				</div>
			</div>
			<div class="form-group">
				<label for="pay">결제수단</label>
				<div class="select-payment form-input">
					<input type="radio" id="credit" name="pay" value="신용카드">
					<label for="credit">신용카드</label>
					<input type="radio" id="transfer" name="pay" value="계좌이체">
					<label for="transfer">계좌이체</label>
				</div>
			</div>
			<div class="form-group">
				<div class="order-btn">
				<input	type="submit" class="fill-button" value="<%=sum %>원 결제하기" />
		
				</div>
			</div>
		</form>
	</div>
	</div>
</body>
</html>