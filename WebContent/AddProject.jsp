<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import="java.sql.*" %>


 
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
-->
<!-- jQuery library -->
<!--  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
-->
<!-- Popper JS -->
<!--  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
-->
<!-- Latest compiled JavaScript -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
-->

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="link.jsp"></jsp:include>
</head>
<style>
h2{
display:inline-block;
}
span{
color: #737373;
}
.row{
box-shadow:0 -5px 5px -5px #bfbfbf;
background-color:white;
padding-top:8px;
}
</style>

<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
<div class="main-page">
			
			  
			        
	
    <h2 class="mb-4 mr-2">Project</h2><span>(All Projects)</span>
    <div class="row">
     <div class="col-sm-12">
     <form action="AddProjectDB.jsp" method="post">
     <labe><b>Project name:</b></label>
     <input type="text" name="projectname" placeholder="Enter Project Name" class="form-control mt-2">
     <br>
     <input type="submit" value="Create Project" class="btn btn-success btn-sm float-right">
     </form>
     <br><br> 
    </div>
   <div class="col-sm-12">
 <table class=" table table-bordered table-striped" id="mytable">
 <thead>
 <tr>
     <th>Serial No</th>
     <th>Project Name</th>
     <th>Date </th>
     <th>Status</th>
 
 </tr>
 </thead>
  
  <tbody>
  <tr>
  <%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="select * from addproject order by projectid desc";

PreparedStatement ps=con.prepareStatement(sql); 
ResultSet rs = ps.executeQuery();
int n = 1;
while(rs.next()){
%>

<td><%=n %></td>
<td><%=rs.getString("projectname") %></td>
<td><%=rs.getString("date") %></td>
<td><%=rs.getString("status") %></td>
<!--  
<td><a href="deleteRecord.jsp?pid=<%=rs.getString("projectid")%>">Delete</a></td>
<td><a href="updateRecord.jsp?pid=<%=rs.getString("projectid")%>">Update</a></td>
-->
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
<script async src="https://www.googletagmanager.com/gtag/js?id=G-1VDDWMRSTH"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1VDDWMRSTH');
</script>
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>