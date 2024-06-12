<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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
			
			
   <h2>Add Mess Stock</h2>	
   <form action="addMessStockDB.jsp" method="post">	
  	
    <div class="row pt-3" >
    

     <div class="col-sm-6">

      <label><b>Seller Name</b></label>
      <input type="text" name="sname" class="form-control mt-2">
      
     </div>

     <div class="col-sm-6">

      <label><b>Date</b></label>
      <input type="date" name="sdate" class="form-control mt-2">
      
      <br>
      </div>


     <div class="col-sm-3">
     
       <label><b>Product Name</b></label>
       <input type="text" name="pname1" id="pname1" class="form-control mt-2">
       
     </div>   
     
     <div class="col-sm-3">
     
      <label><b>Quantity</b></label>
      <input type="text" name="pquantity1" id="pquantity1" class="form-control mt-2">
      
     </div>   
     
     <div class="col-sm-3">
     
      <label><b>Price</b></label>
      <input type="text" name="price1" id="price1" class="form-control mt-2" onkeyup="multiplication(1); finalTotal()">
      
     </div> 
       
     <div class="col-sm-3">
     
      <label><b>Total</b></label>
      <input type="text" name="total1" id="total1" class="form-control mt-2 total" readonly>
      
      <br>
      
     </div>


    <div class="addRow">

    </div>


    <div class="col-sm-12">

    <button id="appendex" type="button" class="btn btn-success btn-lg float-right">Add </button>

    </div>

    <input type="hidden" name="count" id="count" value="1">

    <div class="col-sm-3">

    <label><b>Grand Total</b></label>
    <input type="text" name="gtotal" id="gtotal" class="form-control mt-2" readonly>

    <br>

    </div> 

    <div class="col-sm-12" style="text-align:center">

    <input type="submit" value="Submit" class="btn btn-success btn-lg">

    <br><br>

</div>

</div>

</form>
</div>
</div>

<jsp:include page="Footer.jsp"></jsp:include>

  <script>
  $(document).ready(function(){
	var a=1;
	  $("#appendex").click(function(){
		  a++;
		  $("#count").val(a);
		  var text = `
			  <div class="col-sm-3 `+a+`">
			  <label><b>Product Name</b></label>
			  <input type="text" name="pname`+a+`" id="pname`+a+`" class="form-control">
			  </div>   
			  <div class="col-sm-3 `+a+`">
			  <label><b>Quantity</b></label>
			  <input type="text" name="pquantity`+a+`" id="pquantity`+a+`" class="form-control">
			  </div>   
			  <div class="col-sm-3 `+a+`">
			  <label><b>Price</b></label>
			  <input type="text" name="price`+a+`" id="price`+a+`" onkeyup="multiplication(`+a+`);finalTotal()" class="form-control">
			  </div>   
			  <div class="col-sm-2 `+a+`">
			  <label><b>Total</b></label>
			  <input type="text" name="total`+a+`" id="total`+a+`" class="form-control total"  readonly>
			  </div>
			  <div class="col-sm-1 `+a+`">
			  <br>
			  <button type="button" id="removeRow`+a+`" class="form-control btn btn-danger btn-xs">X</button>
			  <br><br>
			  </div>

		  `;
		  $("#count").val(a);
		  $(".addRow").append(text);
		  
		  $("#removeRow"+a+"").click(function(){
			 $("."+a+"").remove();
			 a--;
			 $("#count").val(a);
		  
		  })
	    
	  });
	});
	
	
	
  function multiplication(x){
	
	var qty=$("#pquantity"+x+"").val();
	var price=$("#price"+x+"").val();
	var total=Number(price)* Number(qty);
	$("#total"+x+"").val(total);	
  }


  function finalTotal(){
	var t = 0;
	var total = $(".total");
	total.each(function(){
		t += Number($(this).val()); 
		
	});
	$("#gtotal").val(t);
  }

  </script>

</body>
</html>