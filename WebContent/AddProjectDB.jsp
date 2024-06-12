<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*"%>
    
    <%@ page import = "java.io.*,java.util.*" %>
<%@ page import = "java.text.*" %>
    
<% 


String projectname=request.getParameter("projectname");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="insert into addproject(projectname, date, status)values(?,'09/08/2022','Activate')";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,projectname);

int done=ps.executeUpdate();
if(done>0){
%>
<script>
alert("Project Added Successfully..!!");
location.href="AddProject.jsp";
</script>
<%}else{%>
<script>
alert("Error");
location.href="AddProject.jsp";
</script>

<%}%>