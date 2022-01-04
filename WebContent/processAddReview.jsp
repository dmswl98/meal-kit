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
	
	MultipartRequest multipart = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());
	
	String productName = multipart.getParameter("productName");
	String title = multipart.getParameter("title");
	String starRating = multipart.getParameter("starRating");
	Integer star = Integer.valueOf(starRating);
	String content = multipart.getParameter("content");
	String userName = multipart.getParameter("userName");
	//String filename = request.getParameter("filename");
	
	Enumeration files = multipart.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multipart.getFilesystemName(fname);
	
	PreparedStatement pstmt = null;
	
	String sql = "insert into review values(?,?,?,?,?,?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, userName);
	pstmt.setString(2, productName);
	pstmt.setString(3, title);
	pstmt.setInt(4, star);
	pstmt.setString(5, content);
	pstmt.setString(6, fileName);
	pstmt.executeUpdate();
	
	if(pstmt != null) {
		pstmt.close();
	}
	if(conn != null) {
		conn.close();
	}
	
	response.sendRedirect("reviews.jsp");
%>