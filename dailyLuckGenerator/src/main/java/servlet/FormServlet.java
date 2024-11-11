package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/FormServlet")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
		throws ServletException, IOException {

		//リクエストパラメータ値の文字コードを指定
		request.setCharacterEncoding("UTF-8");
		
		//フォームからのリクエストパラメータの値取得
		String name = request.getParameter("name");
		String bloodType = request.getParameter("bloodType");
		String gender = request.getParameter("gender");
	
		
		//リクエストに属性を追加し、JSPに渡せるようにする
		request.setAttribute("name", name);
		request.setAttribute("bloodTyoe", bloodType);
		request.setAttribute("gender", gender);
		
		//dailyLuck.jsp にフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher("WEB-INF/views/dailyluck.jsp");
		dispatcher.forward(request, response);
	}

}
