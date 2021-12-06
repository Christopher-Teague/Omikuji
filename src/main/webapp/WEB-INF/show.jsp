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
	<div class="container col-6">
		<div class="d-flex justify-content-center mt-5">
			<h1>Here's Your Omikuji!</h1>
		</div>
		<div class="d-flex justify-content-center mt-3 border border-dark border-2" style="background-color: DodgerBlue">
			<h2 class="p-3">In ${years} years, you will live in ${city} with ${name} as your roommate,
			selling ${hobby} for a living. The next time you see a ${livingThing}, you will have good luck.
			Also, ${saySomething}</h2>
			
		</div>	
		<div class="d-flex justify-content-center mt-3">
			<a href="/omikuji">go back</a>
		</div>
	</div>
</body>
</html>