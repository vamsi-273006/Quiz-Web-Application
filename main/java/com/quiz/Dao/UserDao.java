package com.quiz.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.quiz.connection.JdbcConnection;
import com.quiz.model.User;

public class UserDao {

	public static boolean registerUser(User user) {
		try {
			Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("INSERT INTO users(name, email, password, role) VALUES (?, ?, ?, ?)");
			ps.setString(1, user.getName());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getRole());
			return ps.executeUpdate() > 0;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static User loginUser(String email, String password) {
		User user = null;
		try {
			Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email=? AND password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setName(rs.getString("name"));
				user.setEmail(rs.getString("email"));
				user.setRole(rs.getString("role"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}
}
