<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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

#row1{
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
  <h2 class="mb-4 mr-2">All Stock Details</h2><span>(All Stocks)</span>
  
   <div class="row" id="row1">
   
     
    <div class="col-md-12">
    <br>
     <input type="button" onclick="window.print();return false;" value="Print" class="btn btn-success btn-lg float-right">
    <br><br>
    <table class=" table table-bordered table-striped" id="mytable">
    
     <thead>
      <tr>
       <th>Sr No</th>
       <th>Last Updated</th>
       <th>Particulars </th>
       <th>Distributed Quantity</th>
       <th>Available Quantity</th>
       <th>Total Qty</th>
      </tr>
    </thead>
    
    <tbody>
    <tr>
     <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        String sql="select * from addstock";

        PreparedStatement ps=con.prepareStatement(sql); 
        ResultSet rs = ps.executeQuery();
        int i=1;
        while(rs.next()){ 
        %>
        
     <td><%=i %></td>
     <td><%=rs.getString("dateadded") %></td>
     <td><%=rs.getString("stationary_name") %></td>
     <td><%=rs.getString("seller_name") %></td>
     <td><%=rs.getString("billno") %></td>
     <td><%=rs.getString("qty") %></td>
     <td><%=rs.getString("price") %></td>
     <td><%=rs.getString("tprice") %></td>
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