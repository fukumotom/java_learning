<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
	<body>
		<title>ログイン画面</title>
		<% if("true".equals(request.getParameter("error"))) {%><li>ID または PW が違います。</li><%} %>
		<h2>ユーザ情報を入力してください。</h2>
		<form method="post" action="j_security_check">
			<table>
				<tr>
					<td>ユーザ名：</td><td><input type="text" name="j_username"></td>
				</tr>
				<tr>
					<td>パスワード：</td><td><input type="text" name="j_password"></td>
				</tr>
	
				<tr>
					<td></td><td><input type="submit" name="ログイン"></td>
				</tr>
			</table>
		</form>
		<form method="post" action="WEB-INF/jsp/USerRegistForm.jsp">
			<input type="submit" value="ユーザ新規登録">
		</form>
    </body>
</html>