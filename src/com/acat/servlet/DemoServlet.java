package com.acat.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dom4j.Document;
import org.dom4j.io.SAXReader;

public class DemoServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/xml;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		try{
			String path = getServletContext().getRealPath("/cities.xml");
			SAXReader reader = new SAXReader();
			Document document = reader.read(path);
			String xmlText = document.asXML();
			System.out.println(xmlText);
		}catch(Exception e){
			throw new RuntimeException(e);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}	

}
