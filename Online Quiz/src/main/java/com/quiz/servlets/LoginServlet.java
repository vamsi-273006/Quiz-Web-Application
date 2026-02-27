package com.quiz.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.quiz.Dao.UserDao;
import com.quiz.model.User;

@SuppressWarnings("serial")
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = UserDao.loginUser(email, password);
		if (user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);

			response.sendRedirect("QuizServlet");
		} else {
			response.getWriter().println("Invalid credentials!");
		}
	}
}
