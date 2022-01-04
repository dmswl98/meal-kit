<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.net.URLDecoder"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>

<%
	request.setCharacterEncoding("UTF-8");

	String cartId = session.getId();

	String shipping_cartId = "";
	String shipping_name = "";
	String shipping_addressName = "";
	String shipping_pay = "";
	
	Cookie[] cookies = request.getCookies();

	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			Cookie thisCookie = cookies[i];
			String n = thisCookie.getName();
			if (n.equals("Shipping_cartId"))
				shipping_cartId = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_name"))
				shipping_name = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_addressName"))
				shipping_addressName = URLDecoder.decode((thisCookie.getValue()), "utf-8");
			if (n.equals("Shipping_pay"))
				shipping_pay = URLDecoder.decode((thisCookie.getValue()), "utf-8");
		}
	}
%>
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
<title>Receipt</title>
    <link rel="stylesheet" href="./style.css">
    <link rel="stylesheet" href="./cart-style.css">
    <link rel="stylesheet" href="./orderConfirmation-style.css">
</head>
<body>
<jsp:include page="navbar.jsp"/>
	<div class="receipt">
	<div class="container">
	<h1 class="title">주문 정보</h1>

	<h3 class="subtitle">결제가 정상적으로 처리되었습니다.</h3>
	<div class="receipt-desc">
			<p><strong>주문 상세</strong></p>
			<p>성명 : <% out.println(shipping_name); %></p> 
			<p>주소 : <%	out.println(shipping_addressName);%></p>
			<p>결제수단 : <%out.println(shipping_pay); %></p>
	</div>
		<table>			
			<tr>
				<th>상품</th>
				<th>수량</th>
				<th>가격</th>
				<th>소계</th>
			</tr>
			<%
				int sum = 0;
				ArrayList<Product> cartList = (ArrayList<Product>) session.getAttribute("cartlist");
				if (cartList == null)
					cartList = new ArrayList<Product>();
				for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
					Product product = cartList.get(i);
					int total = product.getPrice() * product.getQuantity();
					sum = sum + total;
			%>
			<tr>
				<td><em><%=product.getProductName()%> </em></td>
				<td><%=product.getQuantity()%></td>
				<td><%=product.getPrice()%>원</td>
				<td><%=total%>원</td>
			</tr>
			<%
				}
			%>
			<tr>
				<td> </td>
				<td> </td>
				<td><strong>총액: </strong></td>
				<td><strong>₩ <%=sum%> </strong></td>
			</tr>
			</table>
				<div class="button-group">
					<a href="./shippingInfo.jsp?cartId=<%=shipping_cartId%>"class="fill-button inverted" role="button">취소</a>
					<a href="./products.jsp"  class="fill-button">쇼핑 계속하기 </a>
				</div>			
				
		</div>
	</div>
</body>
</html>
