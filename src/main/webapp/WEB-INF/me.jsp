<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Protected resource</title>
	</head>
	<body>
		<h1>Hello User: ${pageContext.request.remoteUser}, thank you for visiting</h1>
		This is a protected resource, you must be authenticated to access it.
		System time: <%= System.currentTimeMillis() %>
	</body>
</html>