<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" >
		<title>forward Sample</title>
	</head>
	<body>
		<h1>forward Sample</h1>
		<p>ようこそ！ ${pageContext.request.getUserPrincipal().getName()} さん</p>
		
		<form method="get" action="/WorkManager/Logout">
			<input type="submit" value="ログアウト">
		</form>
	</body>
</html>