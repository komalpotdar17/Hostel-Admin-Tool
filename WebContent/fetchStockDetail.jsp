<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <tr>
    
<%@page import="java.sql.*" %>

 <%
      String sname=request.getParameter("sname");
      String fromdate=request.getParameter("fromdate");
      String todate=request.getParameter("todate");
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
      String sql="select * from addstock where stationary_name=? and dateadded between ? and ? ";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,sname);
      ps.setString(2,fromdate);
      ps.setString(3,todate);
      ResultSet rs=ps.executeQuery();
      
      int i=1;
      while(rs.next()){
    	  
      %>
     <td><%=i %></td>
     <td><%=rs.getString("dateadded") %></td>
     <td><%=rs.getString("stationary_name") %></td>
     <td><%=rs.getString("seller_name") %></td>
     <td><%=rs.getString("billno") %></td>
     <td><%=rs.getString("qty") %></td>
     <td><%=rs.getString("price") %></td>
     <td><%=rs.getString("tprice") %></td>
     
     </tr>
     <% i++;}%>
     
