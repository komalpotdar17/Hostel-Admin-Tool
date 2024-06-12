<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Mess Stock</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
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

</style>
</head>
<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
	<div class="main-page">
	
	<h2> Mess Stock</h2>	
	
	<div class="row">
	
	<div class="col-md-3">
	<br>
	
	<label><b>From: </b></label>
	<input type="date" name="startdate" id="startdate">
	
	</div>
	
	<div class="col-md-3">
	<br>
	
	<label><b>To:  </b></label>
	<input type="date" name="enddate" id="enddate">
	
	</div>
	
	<br>
	
	<div class="col-md-12">
	
	<input type="button" onclick="window.print();return false;" value="Print" class="btn btn-success btn-lg float-right">
	<br><br><br>
	</div>
	
   <div class="col-sm-12">
      <table class="table">
        
        <thead> 
          <tr>
           <th> Product Name </th>
           <th> Seller Name </th>
           <th> Date</th>
           <th> Quantity </th>
           <th> Price </th>
           <th> Total </th>
         </tr>
        </thead>
        
        <tbody id="messStock">
        
       
        </tbody>
	
	
	</table>
	</div>
	</div>


</div>
</div>

<script>
$("#enddate").on("change",function(){
	var startdate=$("#startdate").val();
	
	var enddate=$("#enddate").val();
	
	$.ajax({
		url : 'fetchMessStock.jsp?startdate='+startdate+'&&enddate='+enddate,
		method : 'post',
		//data : 'sname='+sname+'&&ayear='+ayear,
		
		success : function(response){
			//alert(response.trim());
			$("#messStock").html(response.trim());
		}
	});
})
</script>


<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>