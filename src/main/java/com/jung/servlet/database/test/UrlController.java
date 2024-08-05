package com.jung.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.jung.servlet.common.MysplService;

@WebServlet("/db/url/insert")
public class UrlController extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String link = request.getParameter("link");
		
		String[] selectArray = request.getParameterValues("select");
		
		String select = "";
		for(int i = 0; i < selectArray.length; i++) {
			
			select += "," + selectArray[i];
		}
		select = select.substring(1);
		
		MysplService mysplService = MysplService.getInstance();
		mysplService.connet();
		
		//추가
		if (name != null && link != null ) {
			String qeury = "INSERT INTO `url`\r\n"
					+ "(`name`, `link`)\r\n"
					+ "VALUE\r\n"
					+ "('" + name +"', '" + link + "')";
			
			mysplService.update(qeury);
		}

		//삭제
		if (selectArray != null) {
			
			String qeury = "DELETE FROM `url` WHERE `id` IN (" + select + ");";
			
			mysplService.update(qeury);
			
		}

		response.sendRedirect("/db/url/list.jsp");
		
	}
	
}
