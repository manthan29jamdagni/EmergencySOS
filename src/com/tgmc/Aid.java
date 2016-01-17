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
		MongoClient mongoClient = new MongoClient();
		System.out.println("mongo client connected");
		MongoDatabase mongoDB = mongoClient.getDatabase("tgmc");
		System.out.println("database successfully connected");
		mongoDB.getCollection("user").insertOne(
				new Document("LoanApplicant", new Document()
						.append("name", first_name + " " + last_name)
						.append("email", email).append("date", date)
						.append("sex", sex).append("purpose", purpose)));
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		request.setAttribute("faid", "<script>alert('Success')</script>");
		rd.forward(request, response);
		mongoClient.close();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

}
