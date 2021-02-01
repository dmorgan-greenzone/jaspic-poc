<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Unprotected Resource: Current Time</title>
	</head>
	<body>
		<h1>Hello User: ${pageContext.request.remoteUser}, or guest.  This is an open resource</h1>
		Today's date: <%= (new java.util.Date()).toLocaleString()%><br>
		System time: <%= System.currentTimeMillis() %>
	</body>
</html>