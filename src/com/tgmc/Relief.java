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
			RequestDispatcher r = request.getRequestDispatcher("sos.jsp");
			r.forward(request, response);
		}
		System.out.println("Post Working");
		MongoClient mongoClient = new MongoClient();
		System.out.println("mongo client connected");
		MongoDatabase mongoDB = mongoClient.getDatabase("temptgmc");
		System.out.println("database successfully connected");
		mongoDB.getCollection("relief").insertOne(
				new Document("reliefcenter", new Document().append("Place",
						place).append("Item", item)));
		System.out.println("Insertion Succesful");
		mongoClient.close();
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		request.setAttribute("faid", "<script>alert('Success')</script>");
		rd.forward(request, response);
	}

}
