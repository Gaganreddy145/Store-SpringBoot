<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="post">
		<label>Name: </label>
		<input type="text" name="name" required/>
		<label>Price: </label>
		<input type="number" name="price" required/>
		<label>Weight: </label>
		<input type="weight" name="weight" required/>
		<select name="category" id="category">
			<option value=""></option>
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
         <textarea rows="3" cols="10"></textarea>
         <label>Quantity: </label>
         <input type="number" name="quantity" required/>
         <div id="image-urls">
         	<input type="text" required/>
         	
         	<!--  <button id="remove">Remove</button>  -->
         </div>
         <button id="add">Add</button>
         <button id="remove" hidden="true">Remove</button>
	</form>
	<script type="text/javascript" src="/js/addItem.js"></script>
</body>
</html>