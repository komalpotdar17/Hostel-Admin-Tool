<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>More Reports </title>

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<jsp:include page="link.jsp"></jsp:include>

<style>
.row{
border-top:3px solid #3399ff;
background-color:white;
}
h3{
margin-top:8px;
}
h2{
display:inline-block;
margin-bottom:10px;
margin-right:8px;
}
span{
color: #737373;
}


</style>
</head>
<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
	<div class="main-page">
			
	 <h2>Fees Reports</h2><span>(View Reports)</span>
	 <form action="moreReportNext.jsp" method="post">
     
     <div class="row">
     <div class="col-sm-12">
      
     <h3>Select Fees Reports</h3>
     <hr>
     </div>
     <div class="col-sm-4">
     </div>
     
     <div class="col-sm-4">
     <label><b> Course Name</b></label>
     <select name="cname" class="form-control">
     <option>All</option>
     <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        String sql="select * from medium";
        PreparedStatement ps=con.prepareStatement(sql);
        ResultSet rs= ps.executeQuery();
        
        while(rs.next()){
       
        %>
        <option value="<%=rs.getString("id") %>">
        <%=rs.getString("medium_name") %>
        </option>
        <%} %>
     </select>
     <br>
     <label><b> Class </b></label>
     <select name="className" class="form-control">
     <option>All</option>
     <% 
        String sql1="select * from addclass";
        PreparedStatement ps1=con.prepareStatement(sql1);
        ResultSet rs1= ps1.executeQuery();
        
        while(rs1.next()){
       
        %>
        <option value="<%=rs1.getString("id") %>">
        <%=rs1.getString("classname") %>
        </option>
        <%} %>
     </select>
     
     <br>
     <label><b> Academic Year </b></label>
     <select name="ayear" class="form-control">
     <option>All</option>
     <% 
        String sql2="select * from year";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2= ps2.executeQuery();
        
        while(rs2.next()){
       
        %>
        <option value="<%=rs2.getString("id") %>">
        <%=rs2.getString("year") %>
        </option>
        <%} %>
     </select>
     
     <br>
     <label><b> School/College Name </b></label>
     <select name="clgname" class="form-control">
     <option>All</option>
     <% 
        String sql3="select * from college";
        PreparedStatement ps3=con.prepareStatement(sql3);
        ResultSet rs3= ps3.executeQuery();
        
        while(rs3.next()){
       
        %>
        <option value="<%=rs3.getString("id") %>">
        <%=rs3.getString("cname") %>
        </option>
        <%} %>
     </select>
     <br>
     
      <input type="submit" value=" View Fees Reports" class="btn btn-success btn-lg float-right mb-4">
      <br>
      </div>
      
     
      <div class="col-sm-4">
      </div>
     
     



</div>
</form>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>