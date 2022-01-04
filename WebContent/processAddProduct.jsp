<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>


<%
	request.setCharacterEncoding("UTF-8");

	String filename = "";
	String realFolder = "C:\\uploadimg";
	int maxSize = 5 * 1024 * 1024;
	String encType = "utf-8";
	
	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String productId = multi.getParameter("productId");
	String productName = multi.getParameter("productName");
	String price = multi.getParameter("price");
	String level = multi.getParameter("level");
	String duration = multi.getParameter("duration");
	String nutrition = multi.getParameter("nutrition");
	String isOnSale = multi.getParameter("isOnSale");
	
	Enumeration files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
		
	PreparedStatement pstmt = null;
	
	String sql = "insert into product values(?,?,?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, productId);
	pstmt.setString(2, productName);
	pstmt.setString(3, price);
	pstmt.setString(4, level);
	pstmt.setString(5, duration);
	pstmt.setString(6, nutrition);
	pstmt.setString(7, nutrition);
	pstmt.setString(8, fileName);
	pstmt.executeUpdate();
	
	if(pstmt != null) {
		pstmt.close();
	}
	if(conn != null) {
		conn.close();
	}
	
	response.sendRedirect("products.jsp");
%>