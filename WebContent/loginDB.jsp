<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%

String username=request.getParameter("username");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="select * from admin where username=? and password=?";
PreparedStatement ps=con.prepareStatement(sql);
ps.setString(1,username);
ps.setString(2,password);

ResultSet rs=ps.executeQuery();
if(rs.next()){

 %>	
<script>

location.href="dashboard.jsp";
</script>
<%
}
else{
%>
<script>
alert("Check username and password");
location.href="login.jsp";

</script>
<%
}
%>