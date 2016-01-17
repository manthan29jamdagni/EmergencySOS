package com.tgmc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Aid extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Aid() {
		super();

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String date = request.getParameter("date");
		String sex = request.getParameter("group1");
		String purpose = request.getParameter("purpose");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Database conne");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/sos", "root", "om");
			System.out.println("Database connected...");
			String q = "INSERT INTO user(firstname,lastname,email,dob,sex,purpose) VALUES (?,?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(q);
			ps.setString(1, first_name);
			ps.setString(2, last_name);
			ps.setString(3, email);
			ps.setString(4, date);
			ps.setString(5, sex);
			ps.setString(6, purpose);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
