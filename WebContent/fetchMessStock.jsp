<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <tr>
    
<%@page import="java.sql.*" %>

 <%
      String startdate=request.getParameter("startdate");
      String enddate=request.getParameter("enddate");
      
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
      String sql="select sl.sname,sl.sdate,st.pname,st.pquantity,st.price,st.total from seller as sl inner join stock as st on sl.sellerid=st.sellerid where sl.sdate between ? and ?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,startdate);
      ps.setString(2,enddate);
      ResultSet rs=ps.executeQuery();
      
      int i=1;
      while(rs.next()){
    	  
      %>
  
     <td><%=rs.getString("pname") %></td>
     <td><%=rs.getString("sname") %></td>
     <td><%=rs.getString("sdate") %></td>
     <td><%=rs.getString("pquantity") %></td>
     <td><%=rs.getString("price") %></td>
     <td><%=rs.getString("total") %></td>
     
     </tr>
     <% i++;}%>

     
     
    	  
    	  
     
      
      
     
