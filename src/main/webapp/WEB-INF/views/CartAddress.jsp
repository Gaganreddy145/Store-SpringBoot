<%@page import="java.util.List"%>
<%@page import="com.tmf.store.entites.Address"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		List<Address> addressList = (List<Address>) request.getAttribute("addresses");
	%>
</body>
</html>