package com.tgmc;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Donate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Donate() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("fname") + " "
				+ request.getParameter("lname");
		String amount = request.getParameter("amount");
		String address = request.getParameter("address");
		if (name == "" || amount == "" || address == "") {
			RequestDispatcher r = request.getRequestDispatcher("sos.jsp");
			r.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Loaded Driver...");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/sos", "root", "");
			System.out.println("Database connected...");
			String q = "insert into support(name,amount,address) values( ?,?,?)";
			PreparedStatement pr = con.prepareStatement(q);
			pr.setString(1, name);
			pr.setString(2, amount);
			pr.setString(3, address);
			int x = pr.executeUpdate();
			if (x != 0) {
				RequestDispatcher rd = request.getRequestDispatcher("sos.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
