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
	    padding: 10px 45px 10px 15px; /* Right padding increased */
	    border-radius: 8px;
	    border: 1px solid #ccc;
	    font-size: 14px;
	    box-sizing: border-box;
	}
	
	.input-container img {
	    position: absolute;
	    right: 12px;
	    top: 50%;
	    transform: translateY(-50%); /* Vertically center the icon */
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
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
        gap: 20px;
        padding: 20px 40px;
    }

    .items-container div {
        background-color: white;
        padding: 20px;
        text-align: center;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        transition: transform 0.2s;
    }

    .items-container div:hover {
        transform: scale(1.03);
    }
</style>
</head>
<body>

    <!-- Header with links -->
    <div class="header">
        <div>
            <a href="/previousOrders">Previous Orders</a>
            <a href="/cart">Cart</a>
        </div>
        <div>
            <a href="/profile">Profile Details</a>
        </div>
    </div>

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
        <div>Item 1</div>
        <div>Item 2</div>
        <div>Item 3</div>
        <div>Item 4</div>
        <div>Item 5</div>
        <div>Item 6</div>
    </div>

</body>
</html>
