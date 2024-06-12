<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*"%>

<%@ page import = "java.io.*,java.util.*" %>

<%@ page import = "java.text.*" %>
    
<% 
   String studId=request.getParameter("sname");
   String date=request.getParameter("date");
   String receiptno=request.getParameter("receiptno");
   String fees=request.getParameter("fees");
   String remark=request.getParameter("remark");
   String rfees=request.getParameter("rfees");
   
   
   
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="insert into feesdetails(studid, feesdate, receipt_no, fees, remainfees, remark)values(?,?,?,?,?,?)";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,studId);
ps.setString(2,date);
ps.setString(3,receiptno);
ps.setString(4,fees);
ps.setString(5,rfees);
ps.setString(6,remark);

int done=ps.executeUpdate();
if(done>0){
%>

<script>
alert("Fees Details Added Successfully..!!");
location.href="addfees.jsp";
</script>

<%}else{%>

<script>
alert("Error");
location.href="addfees.jsp";
</script>

<%}%>
   