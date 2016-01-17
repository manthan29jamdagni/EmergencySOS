package com.tgmc;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoDatabase;

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
			RequestDispatcher r = request.getRequestDispatcher("/sos.jsp");
			r.forward(request, response);
		}
		MongoClient mongoClient = new MongoClient();
		System.out.println("mongo client connected");
		MongoDatabase mongoDB = mongoClient.getDatabase("temptgmc");
		System.out.println("database successfully connected");
		mongoDB.getCollection("donate").insertOne(
				new Document("Donater", new Document().append("name", name)
						.append("amount", amount).append("address", address)));
		mongoClient.close();
		RequestDispatcher r = request.getRequestDispatcher("/index.jsp");
		request.setAttribute("faid","<script>alert('Thanks For Showing Interest in Donating to us we have your address we'll contact you soon!!')</script>");
		r.forward(request, response);
	}

}
