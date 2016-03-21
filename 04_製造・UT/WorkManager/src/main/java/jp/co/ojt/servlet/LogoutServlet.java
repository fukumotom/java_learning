package jp.co.ojt.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutServlet extends HttpServlet {

	private static final long serialVersionUID = -1971958283532858214L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// ログイン情報削除
		HttpSession session = request.getSession();
		session.invalidate();
		System.out.println("session削除しました。" + request.getUserPrincipal().getName());
		
		response.sendRedirect("/WorkManager/SampleServlet");
	}

}
