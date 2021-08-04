
	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>	
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>


	<%
    try{
    	String dbURL = "jdbc:mysql://localhost:3306/BBS?serverTimezone=Asia/Seoul&useSSL=false";
			String dbID = "root";
			String dbPassword = "root";
			Connection con = DriverManager.getConnection(dbURL, dbID,dbPassword);
			
			System.out.println("연결정보 : " + con);
			System.out.println("연결정보(toString) : " + con.toString());
    	}
	catch(SQLException e){
		System.out.println("DB 접속 실패");
		e.printStackTrace();
	}
	%>
	<%="연결 성공!!" %>
