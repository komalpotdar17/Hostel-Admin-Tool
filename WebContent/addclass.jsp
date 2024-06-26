<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      <%@page import="java.sql.*" %>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Class</title>

<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="link.jsp"></jsp:include>

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

</head>

<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">

 <div class="main-page">

   <h2 class="mb-4 mr-2">Class</h2><span>(All Classes)</span>
   
   <div class="row">
   
     <div class="col-md-12">
     
     <form action="addclassDB.jsp" method="post">
     
       <label><b>Select Medium:</b></label>
       <select class="form-control">
          <option>--Select Medium--</option>
            <%
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
             String sql1="select * from medium";
             PreparedStatement ps1=con.prepareStatement(sql1);
             ResultSet rs1= ps1.executeQuery();
        
             while(rs1.next()){
       
             %>
          <option values=" <%=rs1.getString("id") %>">
          <%=rs1.getString("medium_name") %>
          </option>
          <%} %>
          </select>
       <br>
    
      <label><b>Add Class:</b></label>
      <input type="text" class="form-control" name="classname">   
        
       <br>
      
      <input type="submit" value=" Add Class" class="btn btn-success btn-sm float-right" >
     
      </form>
      
      <br>
      <br> 
     
    </div>
    
    
    <div class="col-md-12">
    <table class=" table table-bordered table-striped" id="mytable">
    
     <thead>
      <tr>
       <th>Serial No</th>
       <th>Add Class</th>
       <th>Date(Updated) </th>
       <th>Status</th>
      </tr>
    </thead>
  
    <tbody>
     <tr>
      <%
        String sql="select * from addclass order by id desc";

        PreparedStatement ps=con.prepareStatement(sql); 
        ResultSet rs = ps.executeQuery();
        int i=1;
        while(rs.next()){
      %>

     <td><%=i %></td>
     <td><%=rs.getString("classname") %></td>
     <td><%=rs.getString("date") %></td>
     <td><%=rs.getString("status") %></td>
<!--  
<td><a href="deleteRecord.jsp?pid=<%=rs.getString("id")%>">Delete</a></td>
<td><a href="updateRecord.jsp?pid=<%=rs.getString("id")%>">Update</a></td>
-->
  </tr>
    <%i++;} %>
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