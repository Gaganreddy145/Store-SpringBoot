<%@page import="com.tmf.store.entites.ItemURL"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.store.entites.Item"%>
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
		Item item = (Item) request.getAttribute("item");
		String itemName = item.getItemName();
		List<ItemURL> itemImages = item.getItemUrlList();
	%>
	<%!
		public static String formatPrice(double price){
			String temp = String.valueOf(price);
			if(temp.contains(".") == false) return (temp + ".00");
			return temp;
		}
	%>
	<div>
		<% for(ItemURL url : itemImages){%>
			<img src="<%= url.getUrl() %>" alt="<%= itemName%> image <%= url.getItemUrlId()%>" />			
		<%}%>
		<h3><%= itemName %></h3>
		<p>Price: <%= formatPrice(item.getPrice())%></p>
		<p>Description: <%=item.getDescription() %></p>
		<p>Weight: <%=item.getWeight() %></p>
		<p>Category: <%= item.getCategory() %></p>
		<% if(item.getAvailableQuantity() < 4){ %>
			<h5>Only <%= item.getAvailableQuantity()%> items left. Hurry up!!!</h5>
		<% } %>
	</div>
</body>
</html>