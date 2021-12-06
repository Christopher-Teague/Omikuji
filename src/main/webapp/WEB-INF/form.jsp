<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>

<head>
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />

<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/main.css"/>

<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<div class="d-flex justify-content-center mt-5">
	<h1>Send an Omikuji!</h1>
	</div>
	<form action="/processForm" method="post" class="mt-5 p-5 border border-secondary">
	  <div class="mb-3">
	  	<label for="years" class="form-label">Pick any number from 5 to 25:</label>
	  	<select name="years" class="ms-2">
	  		<% for (int num = 5; num <= 25; num ++) { %>
	  		<option value="<%= num %>"> <%= num %> </option> 
	  		<% } %>
	  	</select>
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Enter the name of any city:</label>
	    <input name="city" type="text" class="form-control">	    
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Enter the name of any real person:</label>
	    <input name="name" type="text" class="form-control">	    
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Enter professional endeavor or hobby:</label>
	    <input name="hobby" type="text" class="form-control">	    
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Enter any type of living thing:</label>
	    <input name="livingThing" type="text" class="form-control">	    
	  </div>
	  <div class="mb-3">
	    <label class="form-label">Say something nice to someone:</label>
	    <textarea name="saySomething" class="form-control" rows=3></textarea>	    
	  </div>
	  <div class="d-flex justify-content-between">
	  <p>Send and show a friend!</p>
	  <button type="submit" class="btn btn-primary">Send</button>
	  </div>	  
</form>

	</div>
</body>
</html>