<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock</title>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<jsp:include page="link.jsp"></jsp:include>

<style>
h2{
display:inline-block;
}

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
  <h2 class="mb-4 mr-2">Add Stationary</h2><span>(Add New)</span>
  <div class="row">
     <div class="col-md-12">
     <h3>Fees Details</h3><br>
     </div>
     
     <div class="col-md-12">
     <form action="addStationaryDB.jsp" method="post">
     <label><b>Stationary Name</b></label>
     <input type="text" class="form-control" name="statname" placeholder="Enter Stationary Name">  
     <br>
     </div>
     
     <div class="col-md-3">
     <label><b>Date</b></label>
     <input type="date" class="form-control" name="date">  
     <br>
     </div>
     
     <div class="col-md-12">
     <label><b>Seller Name</b></label>
     <input type="text" class="form-control" name="sellername" placeholder="Enter Seller Name">  
     <br>
     
     <label><b>Receipt/Bill No</b></label>
     <input type="text" class="form-control" name="billno" placeholder="Enter Receipt/Bill No">  
     <br>
     
     <label><b>Quantity</b></label>
     <input type="text" class="form-control" id="quantity" name="quantity" id="quantity" placeholder="Enter Quantity">  
     <br>
     
     <label><b>Price</b></label>
     <input type="text" class="form-control" id="price" name="price" placeholder="Enter Price" onkeyup="show();">  
     <br>
     
     <label><b>Total Price</b></label>
     <input type="text" class="form-control" id="tprice" name="tprice" readonly>  
     <br>
     
     
     
     </div>
        <div class="col-sm-12 mb-4" style="text-align:center;">
       
       <input type="submit" value=" Add to stock" class="btn btn-success btn-lg float-right" >
       
       </div>     
     </form>
     
     </div>

</div>
</div>

<script>
 function show(){
	
	 var qty=document.getElementById("quantity").value;
     var price=document.getElementById("price").value;
     var total=Number(qty)*Number(price);
     document.getElementById("tprice").value=total;
  }
</script>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>