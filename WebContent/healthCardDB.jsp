<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
        
   <%
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
   
   PreparedStatement ps=null;
   ResultSet rs=null;
   int done=0;
   String sql="";
   
   int i=0;
   
   String Bloodgroup=request.getParameter("bloodgrp");
   String weight=request.getParameter("weight");
   String height=request.getParameter("height");
   String bmi=request.getParameter("bmi");
   String studentid=request.getParameter("studid");
   String projectid=request.getParameter("projectid");
   int count=Integer.parseInt(request.getParameter("count"));
   
  
   sql="insert into healthcard(studid, projectid, blood, weight, height, bmi)values(?,?,?,?,?,?)";
   
   ps=con.prepareStatement(sql);
   
   ps.setString(1,studentid);
   ps.setString(2,projectid);
   ps.setString(3,Bloodgroup);
   ps.setString(4,weight);
   ps.setString(5,height);
   ps.setString(6,bmi);
   
    done=ps.executeUpdate();
    
   if(done>0){
	   
	   
	   sql="select hid from healthcard order by hid desc limit 1";
	   ps=con.prepareStatement(sql);
	   rs=ps.executeQuery();
	   
	   String hid="";
	   if(rs.next()){
		   for(i=1;i<=count;i++){
			   
			   hid=rs.getString("hid");	
			   String diagnosis=request.getParameter("diagnosis"+i);
			   String treatment=request.getParameter("treatment"+i);
			   String advice=request.getParameter("advice"+i);
			   
			   sql="insert into healthcare( hid, diagnosis, treatment, advice)values(?,?,?,?)";
			   ps=con.prepareStatement(sql);
			   ps.setString(1,hid);
			   ps.setString(2,diagnosis);
			   ps.setString(3,treatment);
			   ps.setString(4,advice);
			   done=ps.executeUpdate();
		   }
		 
		   
		}
	   %>
	   <script>
	   alert("Data Added Successfully..!!");
	   location.href="healthcard.jsp";
	   </script>
	   <%}else{%>
	   <script>
	   alert("Error..!!");
	   location.href="healthcard.jsp";
	   </script>

	   <%}%>
   
  