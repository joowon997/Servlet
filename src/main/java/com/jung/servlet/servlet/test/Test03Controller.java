package com.jung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy/MM/dd/ HH:mm:ss");
		
		String nowTime = formatter.format(now);
		
		out.println(
		"<html><head><title>뉴스기사</title></head>"
		+ "<body><h1>[단독] 고양이가 야옹해</h1><p>기사 입력시간 : "+ nowTime
		+ "</p><hr><p>끝</p></body></html>"
				);
	}
	
	
	
}
