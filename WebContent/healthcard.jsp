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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<title>Health Card</title>

<jsp:include page="link.jsp"></jsp:include>

<style>

b{
  display:inline-block;
 }

</style>

</head>
<body class="cbp-spmenu-push">

<jsp:include page="slide.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div id="page-wrapper" style="min-height: auto;">
<div class="main-page">

<div class="container">

<form action="healthCardDB.jsp" method="post">
<div class="row">

<div class="col-md-2">
 <label><b>Project:</b></label>
 </div>
 <div class="col-md-8">
        <select class="form-control" id="project" name="projectid">
        <option>--Select --</option>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        
        String sql1="select * from addproject";
        PreparedStatement ps1=con.prepareStatement(sql1);
        ResultSet rs1= ps1.executeQuery();
        
        while(rs1.next()){
       
        %>
        <option value="<%=rs1.getString("projectid") %>">
        <%=rs1.getString("projectname") %>
        </option>
        <%} %>
        </select>
        
 </div>

</div>

<div class="row">

<div class="col-md-2">
 <label><b>Student Name:</b></label>
 </div>
 <div class="col-md-8">
        <select class="form-control" id="sname" name="studentid">
        <option>--Select --</option>
        <%
        String sql2="select * from student";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2= ps2.executeQuery();
        
        while(rs2.next()){
       
        %>
        <option value="<%=rs2.getString("id") %>">
        <%=rs2.getString("studname") %>
        </option>
        <%} %>
             
        </select>
        
 </div>

</div>
<div class="row studentinfo" >


</div>

<input type="button" value="Add Diagnosis" class="btn btn-success" id="addrow">

<div class="row" id="adddata">
<div class="col-md-4">
Diagnosis/Clinical History
</div>

<div class="col-md-4">
Treatment/R<sub>x</sub>
</div>


<div class="col-md-4">
Advice
</div>

<input type="hidden" id="count" name="count">


</div>

</form>
</div>
</div>
</div>

<script type="text/javascript">
$("#project").on("change",function(){
	var projectid=$(this).val();
	
	
	$.ajax({
		
	    url :'fetchStudentDetail.jsp?projectid='+projectid,
	    method : 'post',      																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									
	    success :function(response)
	    
	    {
	    	
	    	$("#sname").html(response.trim())
	    	
	    }

	})
})

</script>

<script>
$("#sname").on("change",function(){
	var sname=$(this).val();
	
	
	$.ajax({
		
	    url :'fetchStudentInfo.jsp?sname='+sname,
	    method : 'post',      																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																									
	    success :function(response)
	    
	    {
	    	
	    	$(".studentinfo").html(response.trim())
	    	
	    }

	})
})

var a=0;

$("#addrow").click(function(){
	a++;
	$("#count").val(a);
	var text=`
	<div class="col-md-4 data`+a+`">
	<textarea class="form-control" rows="10" id="diagnosis`+a+`" name="diagnosis`+a+`" placeholder="Enter Diagnosis/Clinical History"></textarea><br>
	</div>
	<div class="col-md-4 data`+a+`">
	<textarea class="form-control" rows="10" id="treatment`+a+`" name="treatment`+a+`" placeholder="Enter Treatment/Rx"></textarea><br>
	</div>
	<div class="col-md-3 data`+a+`">
	<textarea class="form-control" rows="10" id="advice`+a+`" name="advice`+a+`" placeholder="Enter Advice"></textarea><br>
	</div>
	<div class="col-md-1 data`+a+`">
	<input type="button" value="X" id="remove`+a+`" class="btn btn-danger">
	</div>
	`;
	$("#adddata").append(text);
	$("#remove"+a+"").click(function(){
		$(".data"+a+"").remove();
		a--;
		$("#count").val(a);
	})
})
</script>
<jsp:include page="Footer.jsp"></jsp:include>

</body>
</html>