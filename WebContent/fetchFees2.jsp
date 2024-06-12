<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*" %>
  <thead> 
       <tr>
        <th> Receipt No </th>
        <th> Paid Fees </th>
        <th> Remained Fees </th>
        <th> Date </th>
       </tr>
      </thead>
    <tr>
 <%
      String sname=request.getParameter("sname");
      String ayear=request.getParameter("ayear");
     
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
      String sql="select s.studid,s.totalfees,s.cfess,f.fees,f.receipt_no,f.feesdate,f.remainfees from student as s inner join feesdetails as f on s.studid=f.studid where s.studid=? and s.yearid=?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setString(1,sname);
      ps.setString(2,ayear);
      ResultSet rs=ps.executeQuery();
      int fees=0, gTotal=0;
      int i= 1;
      while(rs.next()){ 
    	  /* fees += rs.getInt("fees"); */
    	  /* gTotal = rs.getInt("totalfees") - fees - rs.getInt("cfess"); */
    	  
    %>
    <td><%=rs.getString("receipt_no")%></td>
     <td><%=rs.getString("feesdate")%></td>
    <td><%=rs.getInt("fees")%></td>
  
    <td><%=rs.getString("remainfees")%></td>
   
    
    
    </tr>
    <% i++;}%>
    
    
    