<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
    
<% 


String addclass=request.getParameter("classname");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="insert into addclass(classname, date, status)values(?,'09/08/2022','Activate')";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,addclass);

int done=ps.executeUpdate();
if(done>0){
%>

<script>
alert("Class Added Successfully..!!");
location.href="addclass.jsp";
</script>

<%}else{%>

<script>
alert("Error..!!");
location.href="addclass.jsp";
</script>

<%}%>