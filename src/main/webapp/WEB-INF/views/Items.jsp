<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.store.entites.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For More Store</title>
<link href="/css/items-style.css" rel="stylesheet">
</head>
<body>

    <jsp:include page="Header.jsp" />

    <!-- Search and Category -->
    <div class="search-container">
        <div class="input-container">
            <input type="text" placeholder="Search products..." id="search"/>
            <img src="/images/search-logo.png" alt="Search logo" />
        </div>
        <div>
            <select name="category" id="category">
            	<option value="all">All</option>
                <option value="grocery">Grocery</option> 
                <option value="beverages">Beverages</option>
                <option value="diary">Dairy</option>  
                <option value="snacks">Snacks</option>
                <option value="frozen">Frozen Foods</option>  
                <option value="fruits">Fruits</option> 
                <option value="vegetables">Vegetables</option>
                <option value="household">Household</option> 
                <option value="pet">Pet Supplies</option>  
            </select>
        </div>
        <div>
        	<button id="low-high" >Price - low to high</button>
        	<button id="high-low" >Price - high to low</button>
        </div>
    </div>
    
    <%String jsonItems = (String) request.getAttribute("jsonItems"); %>

    <!-- Items Grid -->
    <div class="items-container">
       <!--  <div class="item-card">
            <img src="/images/apple.jpg" alt="Apple image"/>
            <p>Apple</p>
            <p>Price: 250.00</p>
        </div>
        <div class="item-card">
            <img src="/images/apple.jpg" alt="Banana image"/>
            <p>Banana</p>
            <p>Price: 100.00</p>
        </div>
        <div class="item-card">
            <img src="/images/milk.jpeg" alt="Milk image"/>
            <p>Milk</p>
            <p>Price: 60.00</p>
        </div>
        <div class="item-card">
            <img src="/images/apple.jpg" alt="Biscuits image"/>
            <p>Biscuits</p>
            <p>Price: 40.00</p>
        </div>
        <div class="item-card">
            <img src="/images/apple.jpg" alt="Cleaner image"/>
            <p>Floor Cleaner</p>
            <p>Price: 150.00</p>
        </div> -->
        <%
        	List<Item> items = (List<Item>) request.getAttribute("items");
        	
        	for(Item item:items){%>
        		 <div class="item-card">
		            <img src="/images/apple.jpg" alt="Cleaner image"/>
		            <p><%= item.getItemName() %></p>
		            <p>Price: <%= item.getPrice() %></p>
		            <%	long id = item.getItemId();
		            	//Gson gson = new Gson();
		            	//String jsonItem = gson.toJson(item);
		            %>
		            <button onclick="addToCart(<%= id%>)">Add to Cart</button>
		        </div>
        	<% }
        %>
    </div>
    <script>
    	window.itemsDataJson = <%= jsonItems%>
    </script>
	<script type="text/javascript" src="/js/sort.js"></script>
</body>
</html>
