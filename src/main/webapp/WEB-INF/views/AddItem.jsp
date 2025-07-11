<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<link rel="stylesheet" href="/css/add-item-style.css" >
</head>
<body>
	<jsp:include page="AdminHeader.jsp" />
    <form method="post" action="/items/admin/add">
    	<h2 style="text-align: center;">Add new item</h2>
        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required/>

        <label for="price">Price:</label>
        <input type="number" name="price" id="price" required/>

        <label for="weight">Weight:</label>
        <input type="text" name="weight" id="weight" required/>

        <label for="category">Category:</label>
        <select name="category" id="category" required>
            <option value="" disabled selected>Select a category</option>
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

        <label for="description">Description:</label>
        <textarea name="description" id="description" rows="3" cols="30" required></textarea>

        <label for="quantity">Quantity:</label>
        <input type="number" name="quantity" id="quantity" required/>

        <label>Image URLs:</label>
        <div id="image-urls">
            <input type="text" name="imageUrls" required/>
        </div>

        <div style="display: flex; gap: 10px;">
            <button type="button" id="add">Add</button>
            <button type="button" id="remove" hidden="true">Remove</button>
        </div>

        <input type="submit" value="Submit" />
    </form>

    <script type="text/javascript" src="/js/addItem.js"></script>
</body>
</html>
