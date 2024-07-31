package com.jung.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.cj.x.protobuf.MysqlxCrud.Update;

public class MysplService {
	private Connection connection;
	
	// 클래스를 설계 하는 입장에서
	// 객체를 하나만 만들어서 공용으로 사용하도록 설계
	// Singleton (Design pattern)
	private static MysplService mysplService = null;
	
	// singleton 객체를 돌려주는 메소드
	// static: 객체 생성 없이 사용 가능한 메소드, 멤버 변수
	// static 메소드 에서는 static 멤버 변수만 사용 가능
	public static MysplService getInstance() {
		
		if (mysplService == null) {
			mysplService = new MysplService();
		}
		
		return mysplService;
	}
	
	//접속
	public void connet() {
		// 데이터 베이스 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());

			// 접속주소, 포트, id, password
			String url = "jdbc:mysql://localhost:3306/dulumary";
			String id = "root";
			String password = "root";
			
			connection = DriverManager.getConnection(url, id, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
					
	}
	
	//select 쿼리 수행
	public ResultSet select(String query){
		
		try {
			Statement statement = connection.createStatement();
			return statement.executeQuery(query);
		} catch (Exception e) {
			return null;
		}
		
	}

	//insert, update, delete 쿼리수행
	public int update(String query){
		try {
			Statement statement = connection.createStatement();
			// 실행된 행의 개수 return
			return statement.executeUpdate(query);
			
		} catch (SQLException e) {
			return -1;
		}
	}
	
	//접속끊기
	public void disconnect(){
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
}
