<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assign Mess Stock</title>
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
			
			
   <h2>Assign Mess Stock</h2>	
   <form action="assignMessStockDB.jsp" method="post">
   
   <div class="row pt-3" >
   
   <div class="col-sm-6">

      <label><b>Assign To</b></label>
      <input type="text" name="assigname" class="form-control mt-2">
      
     </div>
     

     <div class="col-sm-6">

      <label><b>Date</b></label>
      <input type="date" name="adate" class="form-control mt-2">
      
      <br>
      </div>
      
      <div class="col-sm-6">
     
       <label><b>Product Name</b></label>
        <select class="form-control" name="prodname1" id="pname1">
        <option>--Select Product--</option>
        <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        String sql1="select * from stock";
        PreparedStatement ps1=con.prepareStatement(sql1);
        ResultSet rs1= ps1.executeQuery();
        
        while(rs1.next()){
       
        %>
        <option value="<%=rs1.getString("prodid") %>">
        <%=rs1.getString("pname") %>
        </option>
        <%} %>
        </select>
        
        </div>
        
        <div class="col-sm-6">
     
      <label><b>Quantity To Assign</b></label>
      <input type="text" name="pquantity1" id="pquantity1" class="form-control">
      <br>
       </div>  
       
      <div class="addRow">

      </div> 
      
      <div class="col-sm-12">

      <button id="appendex" type="button" class="btn btn-success btn-lg float-right">Add </button>

      </div>

      <input type="hidden" name="count" id="count" value="1">
      
      <br>
      
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
		      
			  <div class="col-sm-6 `+a+`">
			     
		       <label><b>Product Name</b></label>
		        <select class="form-control" name="prodname`+a+`" id="pname`+a+`">
		        <option>--Select Product--</option>
		        <%
		        String sql="select * from stock";
		        PreparedStatement ps=con.prepareStatement(sql);
		        ResultSet rs= ps.executeQuery();
		        
		        while(rs.next()){
		       
		        %>
		        <option value="<%=rs.getString("prodid") %>">
		        <%=rs.getString("pname") %>
		        </option>
		        <%} %>
		        </select>
		        
		        </div>
		        
		      <div class="col-sm-5 `+a+`">
		     
		      <label><b>Quantity To Assign</b></label>
		      <input type="text" name="pquantity`+a+`" id="pquantity`+a+`" class="form-control">
		      <br>
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
	
	</script>
   </body>
   </html>