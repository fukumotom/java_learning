package jp.co.ojt.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TaskRedirectServlet extends HttpServlet {

	private static final long serialVersionUID = -1971958283532858214L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// リダイレクト(jsp <-> servlet)
//		response.sendRedirect("/WorkManager/SampleServlet");
		response.sendRedirect("http://localhost:8080/WorkManager/SampleServlet");
	}

}
