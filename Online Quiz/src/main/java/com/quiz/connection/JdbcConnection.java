package com.quiz.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class JdbcConnection {

	static String URL = "jdbc:mysql://localhost:3306/online_quiz";
	static String USER = "root";
	static String pass = "2211";
	
	private static Connection connection;

	public static Connection getConnection() {
		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			 connection = DriverManager.getConnection(URL,USER,pass); // your MySQL password

		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
