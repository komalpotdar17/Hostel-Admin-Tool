<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>

<%

String studentId=request.getParameter("pid");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="update student set cancalreg='yes' where studid=?";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1, studentId);

int done=ps.executeUpdate();
if(done>0){
%>

<script>
alert("Registration Cancelled Successfully..!!");
location.href="allStudentList.jsp";
</script>

<%}else{%>

<script>
alert("Error..!!");
location.href="allStudentList.jsp";
</script>

<%}%>