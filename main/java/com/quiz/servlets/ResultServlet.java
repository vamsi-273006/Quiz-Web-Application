package com.quiz.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import com.quiz.Dao.*;
import com.quiz.connection.JdbcConnection;
import com.quiz.model.*;

@SuppressWarnings("serial")
@WebServlet("/ResultServlet")
public class ResultServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<Question> questions = QuestionDao.getAllQuestions();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		int score = 0;

		for (Question q : questions) {
			String userAnswer = request.getParameter("answer_" + q.getId());
			if (userAnswer != null && userAnswer.equals(q.getCorrectAnswer())) {
				score++;
			}
		}

		try {
			Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO results(user_id, score) VALUES(?, ?)");
			ps.setInt(1, user.getId());
			ps.setInt(2, score);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

		request.setAttribute("score", score);
		request.setAttribute("total", questions.size());
		request.getRequestDispatcher("Result.jsp").forward(request, response);
	}
}
