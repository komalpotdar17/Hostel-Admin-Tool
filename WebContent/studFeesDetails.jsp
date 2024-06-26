<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
     <%@page import="java.sql.*" %>
 <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Student Fees</title>
     
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css"/>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="link.jsp"></jsp:include>
</head>
<style>
#h2{
display:inline-block;
}

#row1{
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
			
			  
			        
	
    <h2 id="h2" class="mb-4 mr-2">Display Student Fees Details</h2>
     <div class="row" id="row1">
     <div class="col-sm-4">
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
        <option value="<%=rs1.getString("id") %>">
        <%=rs1.getString("studname") %>
        </option>
        <%} %>
        </select>
     </div>
      <div class="col-sm-4">
        <label><b>A.Y.</b></label>
        <select class="form-control" id="ayearr">
        <option>--Select Academic Year--</option>
        <%
        String sql2="select * from student";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2= ps2.executeQuery();
        
        while(rs2.next()){
       
        %>
        <option values=" <%=rs2.getString("id") %>">
        <%=rs2.getString("yearid") %>
        </option>
        <%} %>
        </select>
        <br>
     </div>
      <div class="col-sm-1 mt-3 mr-2">
     <button class="btn btn-info btn-lg" id="search">Search</button>
      </div>
    
      <div class="col-sm-1 mt-3">
      <input type="button" onclick="window.print();return false;" value="Print" class="btn btn-success btn-lg float-right">
      </div>
      <div class="col-sm-12">
       <table class="table">
        
        
       <tbody>
        <tr id="feesdetails">
           
        </tr>
        </tbody>
        </table>
       <br>
       </div>
       <div class="col-sm-12">
       
      <table class="table" id="feesdetails1">
      
      </table>
      <tbody>
    
      </tbody>
  
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

<script>
$("#search").on("click",function(){
	var sname=$("#sname").val();
	
	var ayear=$("#ayearr").val();
	
	$.ajax({
		url : 'fetchFees3.jsp?sname='+sname+'&&ayear='+ayear,
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
$("#search").on("click",function(){
	var sname=$("#sname").val();
	
	var ayear=$("#ayearr").val();
	
	$.ajax({
		url : 'fetchFees2.jsp?sname='+sname+'&&ayear='+ayear,
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