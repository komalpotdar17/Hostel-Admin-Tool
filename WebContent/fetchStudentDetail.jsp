<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
 <option>--Select Student Name--</option>
<%
String projectid=request.getParameter("projectid");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="select s.* from student as s inner join addproject as a on a.id=s.projectid where a.id=?";
PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,projectid);

ResultSet rs=ps.executeQuery();
while(rs.next()){
	
	
	%>
	<option value="<%=rs.getString("id") %>"> <%=rs.getString("studname") %></option>
<%

}
%>
