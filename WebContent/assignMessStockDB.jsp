<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<% 

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
String sql="";
PreparedStatement ps=null;
int done=0;
ResultSet rs = null;

  int i=0;
  int count = Integer.parseInt(request.getParameter("count"));
  
  String assigname=request.getParameter("assigname");
  String adate=request.getParameter("adate");

  sql = "insert into assignto(assignedTo, date)values(?,?)";
  ps = con.prepareStatement(sql);
  ps.setString(1, assigname);
  ps.setString(2, adate);
  
   done = ps.executeUpdate();
   
    if(done>0){
	  sql = "select id from assignto order by id desc limit 1";
	  ps = con.prepareStatement(sql);
	  rs = ps.executeQuery();
	  if(rs.next()){
		  
		  for(i=1;i<=count;i++){
		  
		   String prodname=request.getParameter("prodname"+i);
		   String pquantity=request.getParameter("pquantity"+i);
		   String id= rs.getString("id");
		   
		    sql = "insert into passigned(pname, quantity, id)values(?, ?, ?)";
			     ps = con.prepareStatement(sql);
			     ps.setString(1, prodname);
			     ps.setString(2, pquantity);
			     ps.setString(3, id);
			     
			     done = ps.executeUpdate();
			 }
		  
	  }
	  %>
	  <script>
	     alert("Data Added Successfully");
	     location.href="assignMessStock.jsp";
	  </script>
<% }%>


			     