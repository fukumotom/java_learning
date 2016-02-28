<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<html>
    <body>
        <title>ログイン画面</title>
        <% if("true".equals(request.getParameter("error"))) {%><li>ID または PW が違います。</li><%} %>
        <p>コンテキストパス：<%=request.getContextPath() %></p>
        <h2>ユーザ情報を入力してください。</h2>
        <form method="post" action="j_security_check">
            ユーザ名：<input type="text" name="j_username">
            <br/>
            パスワード：<input type="text" name="j_password">
            <br/>
            <input type="submit" value="ログイン">
        </form>
    </body>
</html>