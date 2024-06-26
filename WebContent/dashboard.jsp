<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<jsp:include page="link.jsp"></jsp:include>
<style>
h3{
margin-top:8px;
}
h2{
display:inline-block;
margin-bottom:10px;
margin-right:8px;
}
span{
color: #737373;
}
#span1{
margin-top:10px;
}
#p1{
padding-top:75px;
padding-left:10px;
color:white;
}
#a1{
color:white;
padding-left:70px;
padding-bottom:6px;
padding-right:85px;
padding-top:5px;
opacity:0.8;
}


</style>
</head>
<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
	<div class="main-page">
	
	 <h2>Dashboard</h2><span>(Home Page)</span><br><br>
	 <h2 class="ml-3">Student</h2><span id="span1">(Admission Related)</span>
	 <div class="row">
	 
	 
<div class="col-sm-3">
    <div style="background-color: #ff0000; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">New Admission</p>
        <a href="Registration.jsp" id="a1" style="background-color: #cc0000; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div>

<div class="col-sm-3">
    <div style="background-color: #ff9900; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Student Registration</p>
        <a href="Registration.jsp" id="a1" style="background-color: #cc7a00; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div>

<div class="col-sm-3">
    <div style="background-color: #00ccff; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Add Student Fees</p>
        <a href="addfees.jsp" id="a1" style="background-color: #00bfff; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div>

<div class="col-sm-3">
    <div style="background-color: #33cc33; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">View Student Fees</p>
        <a href="studFeesDetails.jsp" id="a1" style="background-color: #29a329; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 
   </div>
   
   
    <h2 class="ml-3">Reports</h2>
    <div class="row">
	 
<div class="col-sm-3">
    <div style="background-color: #00ccff; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">All Student Report</p>
        <a href="allStudentList.jsp" id="a1" style="background-color: #00bfff; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #66ff33; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Class Reports</p>
        <a href="classReports.jsp" id="a1" style="background-color: #40ff00; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #ff0066; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">More Reports</p>
        <a href="moreReports.jsp" id="a1" style="background-color: #cc0052; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 
</div>
	 
	 <h2 class="ml-3">Stock</h2>
     <div class="row">
     
<div class="col-sm-3">
    <div style="background-color: #ff0000; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Add Stock</p>
        <a href="addStationary.jsp" id="a1" style="background-color: #cc0000; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #ff9900; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Display Stock</p>
        <a href="DisplayStock.jsp" id="a1" style="background-color: #cc7a00; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #009933; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Available Stock</p>
        <a href="allStockList.jsp" id="a1" style="background-color: #006622; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

</div>
     
     
     <h2 class="ml-3">Medical Section</h2>
     <div class="row">
     
<div class="col-sm-3">
    <div style="background-color: #009933; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">Add Health Card</p>
        <a href="healthcard.jsp" id="a1" style="background-color: #006622; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #ff99cc; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">View Health Card</p>
        <a href="healthcardview.jsp" id="a1" style="background-color: #ff66b3; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 

<div class="col-sm-3">
    <div style="background-color: #00ccff; height: 150px; width: 95%; display: flex; flex-direction: column; justify-content: space-between; padding: 10px; box-sizing: border-box;">
        <p id="p1" style="margin: 0;">History Health Card</p>
        <a href="healthCardHistory.jsp" id="a1" style="background-color: #00bfff; color: white; text-align: center; padding: 5px 10px; text-decoration: none; display: inline-block;">
            More Info <i class="fa-solid fa-circle-arrow-right"></i>
        </a>
    </div>
</div> 
</div>
     
     
</div>
</div>
<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>