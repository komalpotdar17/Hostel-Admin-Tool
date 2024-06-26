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
  
  String sname=request.getParameter("sname");
  String sdate=request.getParameter("sdate");
  String gtotal=request.getParameter("gtotal");
  
  sql = "insert into seller(sname, sdate, gtotal)values(?,?,?)";
  ps = con.prepareStatement(sql);
  ps.setString(1, sname);
  ps.setString(2, sdate);
  ps.setString(3, gtotal);
  
  done = ps.executeUpdate();
  
  if(done>0){
	  sql = "select id from seller order by id desc limit 1";
	  ps = con.prepareStatement(sql);
	  rs = ps.executeQuery();
	  if(rs.next()){
		  
		  for(i=1;i<=count;i++){

			  String pname=request.getParameter("pname"+i);
			  String pquantity=request.getParameter("pquantity"+i);
			  String price=request.getParameter("price"+i);
			  String total=request.getParameter("total"+i);
			  String sellerId = rs.getString("id");

			    sql = "insert into stock(pname, pquantity, price, total, sellerid)values(?, ?, ?, ?, ?)";
			     ps = con.prepareStatement(sql);
			     ps.setString(1, pname);
			     ps.setString(2, pquantity);
			     ps.setString(3, price);
			     ps.setString(4, total);
			     ps.setString(5, sellerId);
			     
			     done = ps.executeUpdate();
			 }
		  
	  }
	  %>
	  <script>
	     alert("Data Added Successfully");
	     location.href="addMessStock.jsp";
	  </script>
  <% }%>
  
  