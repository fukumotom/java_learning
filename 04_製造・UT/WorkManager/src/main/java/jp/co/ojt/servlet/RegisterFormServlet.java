package jp.co.ojt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RegisterFormServlet extends HttpServlet {

	protected Logger logger = LoggerFactory.getLogger(RegisterFormServlet.class);

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {

		// ユーザ登録フォームを表示
		RequestDispatcher dispacher = request.getRequestDispatcher("/WEB-INF/jsp/userRegistForm.jsp");
		try {
			dispacher.forward(request, response);
		} catch (ServletException | IOException e) {
			logger.error("foward失敗：", e);
		}
	}

}
