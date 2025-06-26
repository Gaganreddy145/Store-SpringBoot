<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For More Store</title>
<style>
    body {
        margin: 0;
        font-family: 'Segoe UI', sans-serif;
        background-color: #f9f9f9;
    }

    /* Header Bar */
    .header {
        background-color: #00bcd4;
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
        color: white;
    }

    .header a {
        color: white;
        text-decoration: none;
        font-weight: 500;
        margin: 0 15px;
    }

    .header a:hover {
        text-decoration: underline;
    }

    /* Search and Category Bar */
    .search-container {
        display: flex;
        justify-content: center;
        align-items: center;
        margin: 20px;
        gap: 20px;
        flex-wrap: wrap;
    }

    .input-container {
        position: relative;
        width: 300px;
    }

    .input-container input[type="text"] {
        width: 100%;
        padding: 10px 45px 10px 15px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
        box-sizing: border-box;
    }

    .input-container img {
        position: absolute;
        right: 12px;
        top: 50%;
        transform: translateY(-50%);
        width: 20px;
        height: 20px;
        pointer-events: none;
    }

    select {
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    /* Items Grid */
    .items-container {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
        gap: 20px;
        padding: 20px 40px;
    }

    .item-card {
        background-color: white;
        padding: 15px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        transition: transform 0.2s;
    }

    .item-card:hover {
        transform: scale(1.03);
    }

    .item-card img {
        width: 100%;
        height: 120px;
        object-fit: contain;
        margin-bottom: 10px;
    }

    .item-card p {
        margin: 5px 0;
        font-size: 14px;
    }

    .item-card p:first-of-type {
        font-weight: bold;
        font-size: 16px;
    }
</style>
</head>
<body>

    <jsp:include page="Header.jsp" />

    <!-- Search and Category -->
    <div class="search-container">
        <div class="input-container">
            <input type="text" placeholder="Search products..." />
            <img src="/images/search-logo.png" alt="Search logo" />
        </div>
        <div>
            <select name="category">
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
    </div>

    <!-- Items Grid -->
    <div class="items-container">
        <div class="item-card">
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
        </div>
    </div>

</body>
</html>
