<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Student Fees</title>

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

</style>

</head>
<body class="cbp-spmenu-push">

<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
    <div class="main-page">

     
    <form action="addfeesDB.jsp" method="post">
     <div class="row">
     
     <div class="col-sm-12">
     
      <h3>Fees Details</h3>
      <hr>
      
     </div>
     
     <div class="col-md-8">
     
        <label><b>Student Name</b></label>
        <select class="form-control" name="sname" id="sname">
        <option>--Select Student Name--</option>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        String sql1="select * from student";
        PreparedStatement ps1=con.prepareStatement(sql1);
        ResultSet rs1= ps1.executeQuery();
        
        while(rs1.next()){
       
        %>
        <option value="<%=rs1.getString("studid") %>">
        <%=rs1.getString("studname") %>
        </option>
        <%} %>
        </select>
      </div>
        
      <div class="col-md-4">
        <label><b>A.Y.</b></label>
        <select class="form-control" id="ayearr">
        <option>--Select Academic Year--</option>
        <%
        String sql2="select * from student";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2= ps2.executeQuery();
        
        while(rs2.next()){
       
        %>
        <option values=" <%=rs2.getString("studid") %>">
        <%=rs2.getString("yearid") %>
        </option>
        <%} %>
        </select>
        <br>
      </div>
       
      <div class="col-sm-12">
        <table class="table">
        
        <thead> 
          <tr>
           <th> Total </th>
           <th> Concession </th>
           <th> Paid</th>
           <th> Remained </th>
         </tr>
        </thead>
        
        <tbody>
          <tr id="feesdetails">
           
          </tr>
        </tbody>
        </table>
       
       </div>
       
       <div class="col-sm-8">
       
       <label>Date</label><br>
       <input type="text" name="date" class="form-control">
       
       <br>
       
       </div>
       
       <div class="col-sm-12">
       
       <label>Receipt/Bill No Here</label><br>
       <input type="text" name="receiptno" class="form-control"  placeholder="Enter Receipt No">
       
       <br>
       
       </div>
       
       <div class="col-sm-12">
       
       <label>Enter Fees Here</label><br>
       <input type="text" name="fees" class="form-control"  placeholder="Enter Current Paid Fees">
       
       <br>
       
       </div>
       
       <div class="col-sm-12">
       
       <label>Remark</label><br>
       <input type="text" name="remark" class="form-control" placeholder="Enter Remark">
       
       <br>
       
       </div>
       
       <div class="col-sm-12 mb-4" style="text-align:center;">
       
       <input type="submit" value=" Submit" class="btn btn-success btn-lg float-right" >
       
       </div>
       
     </div>
     
     <div class="row">
     
     <div class="col-sm-12">
     
     <h3>Fees Payment Details</h3>
     <hr>
     <table class="table">
      <thead> 
       <tr>
        <th> Receipt No </th>
        <th> Paid Fees </th>
        <th> Remained Fees </th>
        <th> Date </th>
       </tr>
      </thead>
     
      <tbody id="feesdetails1">
    
      </tbody>
     </table>
     
     </div>
     </div>
     
     </form>
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

<script async src="https://www.googletagmanager.com/gtag/js?id=G-1VDDWMRSTH"></script>

<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1VDDWMRSTH');
</script>  

<script>
$("#ayearr").on("change",function(){
	var sname=$("#sname").val();
	
	var ayear=$("#ayearr").val();
	
	$.ajax({
		url : 'fetchFees.jsp?sname='+sname+'&&ayear='+ayear,
		method : 'post',
		//data : 'sname='+sname+'&&ayear='+ayear,
		
		success : function(response){
			//alert(response.trim());
			$("#feesdetails").html(response.trim());
		}
	});
})
</script>

<script>
$("#ayearr").on("change",function(){
	var sname=$("#sname").val();
	
	var ayear=$("#ayearr").val();
	
	$.ajax({
		url : 'fetchFees1.jsp?sname='+sname+'&&ayear='+ayear,
		method : 'post',
		//data : 'sname='+sname+'&&ayear='+ayear,
		
		success : function(response){
			//alert(response.trim());
			$("#feesdetails1").html(response.trim());
		}
	});
})

</script>

<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>

