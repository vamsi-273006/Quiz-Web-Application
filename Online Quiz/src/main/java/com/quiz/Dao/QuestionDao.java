package com.quiz.Dao;

import java.sql.*;
import java.util.*;

import com.quiz.connection.JdbcConnection;
import com.quiz.model.Question;

public class QuestionDao {

	public static List<Question> getAllQuestions() {
		List<Question> list = new ArrayList<>();
		try {
			Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM questions");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Question q = new Question();
				q.setId(rs.getInt("id"));
				q.setQuestion(rs.getString("question"));
				q.setOptionA(rs.getString("optionA"));
				q.setOptionB(rs.getString("optionB"));
				q.setOptionC(rs.getString("optionC"));
				q.setOptionD(rs.getString("optionD"));
				q.setCorrectAnswer(rs.getString("correctAnswer"));
				list.add(q);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}
