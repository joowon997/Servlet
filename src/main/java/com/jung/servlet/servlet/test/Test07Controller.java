package com.jung.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.parseInt(request.getParameter("price"));
		
		out.println("<html><head><title>진행결과</title></head><body>");
		if(address.contains("서울시")) {
			out.println("<h2>" + address +"로 배달 준비중</h2><hr>");
			if (card.contains("신한카드")) {
				out.println("<div>결제 불가 카드 입니다.</div>");
			}else {
				out.println("<div>결제금액 : " + price +"</div>");
			}
		}else {
			out.println("<h2>배달 불가 지역입니다.</h2>");
		}
		
		
		out.println("</body></html>");
		
	}
}
