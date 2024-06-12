<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<title>Display Stock</title>
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

 <h2 class="mb-4 mr-2">Display Stock</h2><span>(All Stocks)</span>
   <div class="row" id="row1">
   <div class="col-md-12 pt-3">
     <div class="col-md-4">
    <label><b>Stationary Name</b></label>
     <select class="form-control" name="sname" id="sname">
        <option>--Select Stationary Name--</option>
         <% 
             Class.forName("com.mysql.jdbc.Driver");
             Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
             String sql1="select * from addstock";
             PreparedStatement ps1=con.prepareStatement(sql1);
             ResultSet rs1= ps1.executeQuery();
        
             while(rs1.next()){
       
             %>
          <option value="<%=rs1.getString("stationary_name")%>">
          <%=rs1.getString("stationary_name") %>
          </option>
          <%} %>
        </select>
   </div> 
    <div class="col-md-3">
     <label><b>From Date</b></label>
     <input type="date" class="form-control" id="fromdate" name="fromdate">  
   
   </div> 
    <div class="col-md-3">
    <label><b>To Date</b></label>
    <input type="date" class="form-control" id="todate" name="todate">  
   
   </div>
    <div class="col-md-2">
   <button class="btn btn-info btn-lg mt-3" id="search">Search</button>
   <input type="button" onclick="window.print();return false;" value="Print" class="btn btn-success btn-lg mt-3">
   </div> 
   </div>  
    <div class="col-md-12">
    
    
   <br><br>
    <table class=" table table-bordered table-striped" id="mytable">
    
     <thead>
      <tr>
       <th>Sr No</th>
       <th>Purchase Date</th>
       <th>Particulars </th>
       <th>Seller Name</th>
       <th>Receipt/Bill No</th>
       <th>Qty Purchased </th>
       <th>Price</th>
       <th>Total Amount</th>
      </tr>
    </thead>
    
    <tbody id="stock">
    
    </tbody>
    </table>
    
   </div>
</div>
 
 
</div>
</div>
<script async src="https://www.googletagmanager.com/gtag/js?id=G-1VDDWMRSTH"></script>
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
<script>
$("#search").on("click",function(){
	var sname=$("#sname").val();
	
	var fromdate=$("#fromdate").val();
	
	var todate=$("#todate").val();
	
	$.ajax({
		url : 'fetchStockDetail.jsp?sname='+sname+'&&fromdate='+fromdate+'&&todate='+todate,
		method : 'post',
		//data : 'sname='+sname+'&&ayear='+ayear,
		
		success : function(response){
			alert(response.trim());
			$("#stock").html(response.trim());
		}
	});
})
</script>

<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>