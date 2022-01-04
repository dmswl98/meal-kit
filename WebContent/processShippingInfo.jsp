<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.net.URLEncoder"%>
<%
	request.setCharacterEncoding("UTF-8");

	Cookie cartId = new Cookie("Shipping_cartId", URLEncoder.encode(request.getParameter("cartId"), "utf-8"));
	Cookie name = new Cookie("Shipping_name", URLEncoder.encode(request.getParameter("name"), "utf-8"));
	Cookie addressName = new Cookie("Shipping_addressName",	URLEncoder.encode(request.getParameter("addressName"), "utf-8"));
	Cookie pay = new Cookie("Shipping_pay",	URLEncoder.encode(request.getParameter("pay"), "utf-8"));
	
	cartId.setMaxAge(24 * 60 * 60);
	name.setMaxAge(24 * 60 * 60);
	addressName.setMaxAge(24 * 60 * 60);
	pay.setMaxAge(24 * 60 * 60);

	response.addCookie(cartId);
	response.addCookie(name);
	response.addCookie(addressName);
	response.addCookie(pay);

	response.sendRedirect("orderConfirmation.jsp");
%>
