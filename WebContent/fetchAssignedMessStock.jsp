<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <tr>
    
<%@page import="java.sql.*" %>

 <%
      String startdate=request.getParameter("startdate");
      String enddate=request.getParameter("enddate");
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
      String sql="select ato.assignedTo,ato.date,pa.pname,pa.quantity from assignto as ato inner join passigned as pa on ato.id=pa.id where ato.date between ? and ?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,startdate);
      ps.setString(2,enddate);
      ResultSet rs=ps.executeQuery();
      
      int i=1;
      while(rs.next()){
    	  
      %>
  
     <td><%=rs.getString("pname") %></td>
     <td><%=rs.getString("assignedTo") %></td>
     <td><%=rs.getString("date") %></td>
     <td><%=rs.getString("quantity") %></td>
     
     </tr>
     <% i++;}%>