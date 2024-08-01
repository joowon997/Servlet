package com.jung.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jung.servlet.common.MysplService;

@WebServlet("/db/user/insert")
public class UesrCreateController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		MysplService mysplService = MysplService.getInstance();
		
		mysplService.connet();
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name + "', '" + birthday + "', '" + email + "');";
		
		int count = mysplService.update(query);
		
//		out.println("삽입 개수 : " + count);
		
		// 리다이렉트 (redirect)
		// 클라언트에게 특정페이지로 이동하도록 response에 정보를 담는다
		response.sendRedirect("/db/user/list.jsp");
		
	}
}
