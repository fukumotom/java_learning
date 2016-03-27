package jp.co.ojt.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import jp.co.ojt.logic.UserRegistLogic;
import jp.co.ojt.model.User;

@WebServlet("/RegisterForm")
public class UserRegister extends HttpServlet {

	protected Logger logger = LoggerFactory.getLogger(UserRegister.class);

	private static final long serialVersionUID = 1L;

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) {

		String forwardPath = null;

		String param = request.getParameter("action");
		logger.info("取得したacion:{}", param);
		
		if (param == null) {
			// ユーザ新規登録ボタン押下時
			forwardPath = "/WEB-INF/jsp/user/userRegistForm.jsp";

		} else if (param.equals("confirm")) {
			// 登録確認画面から登録ボタン押下時
			HttpSession session = request.getSession();

			// 登録データ取得
			User user = (User) session.getAttribute("registUser");

			// 登録ロジック呼び出し
			UserRegistLogic logic = new UserRegistLogic();
			logic.register(user);

			// 不要なスコープ削除
			session.removeAttribute("registUser");

			forwardPath = "/WEB-INF/jsp/user/userRegistComplete.jsp";

		}

		RequestDispatcher dispacher = request.getRequestDispatcher(forwardPath);
		try {
			dispacher.forward(request, response);
		} catch (ServletException | IOException e) {
			logger.error("foward失敗：", e);
		}
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {

		// 登録情報取得
		String name = (String) request.getParameter("userName");

		User user = new User();
		// ユーザID作成
		UserRegistLogic logic = new UserRegistLogic();
		user.setUserId(logic.createUserId());
		user.setUserName(name);

		// セッションに入力した名前を保存
		HttpSession session = request.getSession();
		session.setAttribute("registUser", user);

		// 確認画面へフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/user/userRegistConfirm.jsp");
		try {
			dispatcher.forward(request, response);
		} catch (ServletException | IOException e) {
			logger.error("フォワード失敗", e);
		}
	}

}
