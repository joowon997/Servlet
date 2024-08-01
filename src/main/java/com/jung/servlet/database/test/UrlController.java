package com.jung.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jung.servlet.common.MysplService;

@WebServlet("/db/url/insert")
public class UrlController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String link = request.getParameter("link");
		
		MysplService mysplService = MysplService.getInstance();
		mysplService.connet();
		
		String qeury = "INSERT INTO `url`\r\n"
				+ "(`name`, `link`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +"', '" + link + "')";

		mysplService.update(qeury);
		
		response.sendRedirect("/db/url/list.jsp");
		
	}
	
}
