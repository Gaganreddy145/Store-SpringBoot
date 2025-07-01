<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your Orders</title>
<link rel="stylesheet" href="/css/orders-style.css">
</head>
<body>

    <jsp:include page="Header.jsp" />

    <h2>Your Orders</h2>

    <div class="orders-container">
        <div class="order-card">
            <p class="order-date">Ordered on: 24 June 2025</p>
            <div class="order-details">
                <img src="/images/apple.jpg" alt="Banana" />
                <div class="product-info">
                    <p><strong>Name:</strong> Banana</p>
                    <p><strong>Price:</strong> 100.00</p>
                    <p><strong>Quantity:</strong> 2</p>
                </div>
            </div>
            <div class="order-status">Ordered</div>
        </div>

        <div class="order-card">
            <p class="order-date">Ordered on: 20 June 2025</p>
            <div class="order-details">
                <img src="/images/apple.jpg" alt="Apple" />
                <div class="product-info">
                    <p><strong>Name:</strong> Apple</p>
                    <p><strong>Price:</strong> 250.00</p>
                    <p><strong>Quantity:</strong> 1</p>
                </div>
            </div>
            <div class="order-status">Delivered</div>
        </div>
    </div>

</body>
</html>
