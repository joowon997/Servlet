package com.jung.servlet.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jung.servlet.common.MysplService;

@WebServlet("/db/ex/ex02")
public class Ex02Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysplService mysplService = MysplService.getInstance();
		//접속
		mysplService.connet();
		
		ResultSet resultSet = mysplService.select("SELECT * FROM `used_goods`");
		
		try {
			while (resultSet.next()) {
				String title = resultSet.getString("title");
				int price = resultSet.getInt("price");
				
				out.println("제목 : " + title + " 가격 : " + price);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`)\r\n"
				+ "value\r\n"
				+ "('3', '고양이 간식 팝니다.', 2000, '안먹어서 팔아요')";
		
		int count = mysplService.update(query);

		out.println("삽입 결과 : " + count);
	
	
	}

}
