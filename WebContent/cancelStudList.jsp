<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
     
      <h2 class="mb-4 mr-2">Student List</h2><span>(All Students)</span>
      
       <div class="row">
   
     <div class="col-md-12">
     <h3>List With Full Details</h3>
     <br>
     <table class=" table table-bordered table-striped" id="mytable">
     <thead>
 <tr>
     <th>Sr.No</th>
     <th>Name</th>
     <th>Gender </th>
     <th>F Mobile</th>
     <th>Project</th>
     <th>A.Year</th>
     <th>Medium</th> 
     <th>Class</th>
     <th>Action</th>
      
 </tr>
 </thead>
  
  <tbody>
  <tr>
  <%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="select * from student where cancalreg='yes'order by studid desc";

PreparedStatement ps=con.prepareStatement(sql); 
ResultSet rs = ps.executeQuery();
int n = 1;
while(rs.next()){
%>

<td><%=n %></td>
<td><%=rs.getString("studname") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("fathermobile") %></td>
<td><%=rs.getString("projectname") %></td>
<td><%=rs.getString("yearid") %></td>
<td><%=rs.getString("mediumid") %></td>
<td><%=rs.getString("classid") %></td>
<td> <a href="RestoreReg.jsp?pid=<%=rs.getString("studid")%>" onclick="confirm1();" style="color:red">Restore Registration</a></td>

</tr>
<%n++;} %>
</tbody>
</table>   
 
     
     </div>
     </div>
 </div>
 </div>
 


<script src="jquery-ztables-1.2.js"></script>

<script>
  var table = $('#mytable').ZTable({
    pagination: true,
    wrap: true,
    pageSize: 10,
    controls:{
      paginate: true,
      status: true,
      copy: true,
      colVis: true
    }
});
</script>

<script async src="https://www.googletagmanager.com/gtag/js?id=G-1VDDWMRSTH"></script>

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1VDDWMRSTH');
</script>
<script>
function confirm1(){
	var x=confirm("Are you sure to restore registration?");
	if(x==true){
		
		return true;
	}
	else{
		
		return false;
	}
	
}
</script>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>