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

public class Relief extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Relief() {
		super();

	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
			}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String place = request.getParameter("place");
		String item = request.getParameter("item");
		if (place == "" || item == "") {
			RequestDispatcher r = request.getRequestDispatcher("/sos.jsp");
			r.forward(request, response);
		}
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Loaded Driver...");
			Connection con = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/sos", "root", "om");
			System.out.println("Database connected...");
			String q = "insert into relief(place,items) values( ?, ?)";
			PreparedStatement pr = con.prepareStatement(q);
			pr.setString(1, place);
			pr.setString(2, item);
			int x = pr.executeUpdate();
			if (x != 0) {
				RequestDispatcher rd = request.getRequestDispatcher("/sos.jsp");
				rd.forward(request, response);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
