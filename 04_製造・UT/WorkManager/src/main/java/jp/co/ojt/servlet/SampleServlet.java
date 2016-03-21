package jp.co.ojt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SampleServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// フォワード(jsp <-> servlet)
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/redirect.jsp");
		dispatcher.forward(request, response);

	}

}
