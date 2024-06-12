<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<% 
   String statname=request.getParameter("statname");
   String date=request.getParameter("date");
   String sellername=request.getParameter("sellername");
   String billno=request.getParameter("billno");
   String quantity=request.getParameter("quantity");
   String price=request.getParameter("price");
   String tprice=request.getParameter("tprice");
   
   
   Class.forName("com.mysql.jdbc.Driver");
   Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

   String sql="insert into addstock(stationary_name, dateadded, seller_name, billno, qty, price, tprice)values(?,?,?,?,?,?,?)";

   PreparedStatement ps=con.prepareStatement(sql);
   
   ps.setString(1,statname);
   ps.setString(2,date);
   ps.setString(3,sellername);
   ps.setString(4,billno);
   ps.setString(5,quantity);
   ps.setString(6,price);
   ps.setString(7,tprice);
   
   int done=ps.executeUpdate();
   if(done>0){
   %>

<script>
alert("Stock Added Successfully..!!");
location.href="addStationary.jsp";
</script>

<%}else{%>

<script>
alert("Error");
location.href="addStationary.jsp";
</script>

<%}%>
   