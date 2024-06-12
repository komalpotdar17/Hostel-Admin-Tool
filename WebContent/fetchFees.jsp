<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>

    <%
      String sname=request.getParameter("sname");
      String ayear=request.getParameter("ayear");
     
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
      String sql="select s.studid,s.totalfees,s.cfess,f.fees from student as s left join feesdetails as f on s.studid=f.studid where s.studid=? and s.yearid=?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,sname);
      ps.setString(2,ayear);
      ResultSet rs=ps.executeQuery();
      int fees=0, gTotal=0;
      int i= 1;
      while(rs.next()){ 
    	  fees += rs.getInt("fees");
    	  gTotal = rs.getInt("totalfees") - fees - rs.getInt("cfess");
    	  if(i==1){
    %>
    <td><%=rs.getString("totalfees")%></td>
     <td><%=rs.getString("cfess")%></td>
    
    <% }i++;}%>
    
    <td><%=fees%></td>
    <td><%=gTotal%>
    <input type="hidden" value="<%=gTotal%>" name="rfees">
    </td>
    
    
    
    
    
    
    
    