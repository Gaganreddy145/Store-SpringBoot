<%@page import="com.google.gson.Gson"%>
<%@page import="java.util.List"%>
<%@page import="com.tmf.store.entites.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="/css/cart-style.css">
</head>
<body>

    <jsp:include page="Header.jsp" />
	<% 	
		List<Item> items = (List<Item>) request.getAttribute("items");
		Gson gson = new Gson();
		String itemsJson = gson.toJson(items);
	%>
    <div class="item-cart-container">
       <!--  <div class="item-cart">
            <div class="item-details">
                <img src="/images/apple.png" alt="Apple" />
                <div class="item-info">
                    <p><strong>Name:</strong> Apple</p>
                    <p><strong>Price:</strong> 200.00</p>
                </div>
            </div>
            <div class="item-actions">
                <button>-</button>
                <span>1</span>
                <button>+</button>
            </div>
        </div>

        <div class="item-cart">
            <div class="item-details">
                <img src="/images/banana.png" alt="Banana" />
                <div class="item-info">
                    <p><strong>Name:</strong> Banana</p>
                    <p><strong>Price:</strong> 100.00</p>
                </div>
            </div>
            <div class="item-actions">
                <button>-</button>
                <span>1</span>
                <button>+</button>
            </div>
        </div>

        <div class="item-cart">
            <div class="item-details">
                <img src="/images/biscuits.png" alt="Biscuits" />
                <div class="item-info">
                    <p><strong>Name:</strong> Biscuits</p>
                    <p><strong>Price:</strong> 100.00</p>
                </div>
            </div>
            <div class="item-actions">
                <button>-</button>
                <span>1</span>
                <button>+</button>
            </div>
        </div>  -->
    </div>

    <h4>Total Amount: 400.00</h4>

	<script>
		window.itemsDataJsonCart = <%= itemsJson%>
	</script>
	<script type="text/javascript" src = "/js/cart.js"></script>
</body>
</html>
