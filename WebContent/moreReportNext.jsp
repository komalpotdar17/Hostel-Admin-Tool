<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*"%>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<jsp:include page="link.jsp"></jsp:include>
<style>
.row{
border-top:3px solid #e6e6e6;
background-color:white;
}

</style>

</head>
<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
			<div class="main-page">
			
<div class="row">
<div class="col-sm-12">
<br>
<input type="button" onclick="window.print();return false;" value="Print" class="btn btn-success btn-lg float-right">
<br><br>

<table class="table table-striped" id="mytable">
<thead>
<tr>
<th> Sr.No. </th>
<th> Student Name </th>
<th> Admission Year </th>
<th> Total Fees </th>
<th> Paid Fess </th>
<th> Remained Fees</th>
</tr>
</thead>
<tbody>
<tr>
 <%
    String cname=request.getParameter("cname");
    String className=request.getParameter("className");
    String ayear=request.getParameter("ayear");
    String clgname=request.getParameter("clgname");
    
    System.out.print(cname);
    System.out.print(className);
    System.out.print(ayear);
    System.out.print(clgname);
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
    String sql="select s.studid,s.studname,s.yearid,s.totalfees,s.cfess,f.fees,f.remainfees from student as s inner join feesdetails as f on s.studid=f.studid where s.mediumid=? and s.classid=? and s.yearid=? and s.schclgid=?";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1,cname);
    ps.setString(2,className);
    ps.setString(3,ayear);
    ps.setString(4,clgname);
    ResultSet rs = ps.executeQuery();
    int n = 1;
    while(rs.next()){
    %>

<td><%=n %></td>
<td><%=rs.getString("studname") %></td>
<td><%=rs.getString("yearid") %></td>
<td><%=rs.getString("totalfees") %></td>
<td><%=rs.getString("fees") %></td>
<td><%=rs.getString("remainfees") %></td>
</tr>
<%} %>

</tbody>
</table>
</div>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="jquery-ztables-1.2.js"></script>
<script>
  var table = $('#mytable').ZTable({
    pagination: true,
    wrap: false,
    pageSize: 10,
    controls:{
      paginate: true,
      status: true,
      copy: true,
      colVis: true
    }
});
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>