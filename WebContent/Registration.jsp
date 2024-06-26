<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>




<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<jsp:include page="link.jsp"></jsp:include>
<style>
.required:after{
content:"*";
color:red;
}
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
span{
color: #737373;
}

</style>
</head>
<body class="cbp-spmenu-push">
<jsp:include page="slide.jsp"></jsp:include>    
<jsp:include page="header.jsp"></jsp:include>   

<div id="page-wrapper">
			<div class="main-page">



     <h2>Admission Details</h2><span>(Student Details)</span>
     <form action="RegistrationDB.jsp" method="post" enctype="multipart/form-data">
     
     <div class="row">
     <div class="col-sm-12">
     
     <h3>Personal Details</h3>
     <hr>
     
     
     <div class="col-sm-6">
     <label class="required mb-2"><b>Addmission Status</b></label>
     <br>
     <input type="radio" class="mr-1" name="admissionstatus" value="old" id="old" required>Old
    
     <input type="radio" class="ml-4 mr-1" name="admissionstatus" value="new"  id="new" required>New 
     <br><br>
     </div>
     
     
     <div class="col-sm-6">
     <label class="required"><b> Date Of Admission/Reporting Date</b></label>
     <input type="date" name="admissiondate" class="form-control" required>
     <br><br>
     </div>
     
     <div class="col-sm-6">
     <label class="required"><b> Student Full Name</b></label>
     <input type="text" name="studname" class="form-control" placeholder="Enter Student Full name" required>
     <br><br>
     </div>
      
     <div class="col-sm-6">
     <label><b> Student Mobile No</b></label>
     <input type="number" name="studmobile" class="form-control" placeholder="Enter Student mobile number">
     <br><br>
     </div>
     </div>
     </div>
     
     <div class="row">
     <div class="col-sm-12">
     <h3>Personal Details</h3>
     <hr>
     
      
     <label><b> Date Of Birth</b></label>
     <input type="date" name="dob" class="form-control">
      
      <br>
      
      <label><b> Age</b></label>
      <input type="number" name="age" class="form-control" placeholder="Enter age">
     
     <br>
     
     <label class="required mb-2"><b> Gender</b></label>
     <br>
     <input type="radio" class="mr-1" name="gender" value="male" required> Male
     <input type="radio" class="ml-4 mr-1" name="gender" value="female" required> Female
     <br>
     <br>
     
     <label><b> Blood Group (Optional)</b></label>
     <input type="text" name="blood" class="form-control">
      <br> 
     
     <label><b> Adhar Number (Optional)</b></label>
     <input type="text" name="adhar" class="form-control">
     
     <br> 
      
     <label><b> Religion</b></label>
     <select name="religion" class="form-control">
     <option>--Select Religion--</option>
     <%
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
        String sql1="select * from religion";
        PreparedStatement ps1=con.prepareStatement(sql1);
        ResultSet rs1= ps1.executeQuery();
        
        while(rs1.next()){
       
        %>
        <option values=" <%=rs1.getString("id") %>">
        <%=rs1.getString("religionname") %>
        </option>
        <%} %>
     </select>
     <br> 
     
     <label><b> Category</b></label>
     <input type="text" name="category" class="form-control">
     
     <br> 
     
     <label><b> Caste</b></label>
     <input type="text" name="caste" class="form-control">
     <br> 
     </div>
     </div>
     
     <div class="row">
     <div class="col-sm-12">
     <h3>Corresponding Details</h3>
     <hr>
     <label><b> Corresponding Address</b></label>
     <br><br>
      <div class="col-sm-6">
     <label><b> Village:</b></label>
     <input type="text" name="village" class="form-control" placeholder="Enter address">
     <br> 
      <br>
      </div>
      
     <div class="col-sm-6">
     <label><b> City/Dist:</b></label>
     <input type="text" name="city" class="form-control" placeholder="Enter City name">
     <br><br>
     </div>
     
      
     <div class="col-sm-6">
     <label><b> Post:</b></label>
     <input type="text" name="post" class="form-control" placeholder="Enter Post">
     <br><br>
     </div>
     
     <div class="col-sm-6">
     <label><b> Tehsil:</b></label>
     <input type="text" name="tehsil" class="form-control" placeholder="Enter Tehsil ">
     <br> <br>
     </div>
     
     
     <div class="col-sm-6">   
     <label><b> State</b></label>
     <select name="state" class="form-control">
      <option> Maharashtra  </option>
     <option> Rajsthan </option>
     <option> Bihar   </option>
     <option> Telagana </option>
     <option> Andhra Pradesh </option>
     <option> Assam </option>
     <option> Punjab </option>
     <option> Karnatak </option>
     <option> Uttar Pradesh </option>
     <option> Haryana </option>
     <option> West Bengal </option>
     <option> Tripura </option>
     <option> Uttarakhand </option>
     <option> Chhattisgarh </option>
     <option> Tamil Nadu </option>
     <option> Mizoram </option>
     <option> Goa </option>
     <option> Madhya Pradesh </option>
     <option> Sikkim </option>
     <option> Arunachal Pradesh </option>
     <option> Kerala </option>
     <option> Himachal Pradesh </option>
     <option> Meghalaya </option>
     <option> Gujarat </option>
     <option> Odisha </option>
     <option> Manipur </option>
     <option> Jharkhand </option>
     <option> Nagaland </option>
     <option> Delhi </option>
     <option> Jammu & Kashmir </option>
     </select>
     <br> <br>
     </div>
     
     <div class="col-sm-6">
     <label><b> Pin:</b></label>
     <input type="text" name="pin" class="form-control" placeholder="Enter Pin">
     <br><br>
     </div> 
     </div>
     </div>
  
     <input type="checkbox" name="isper" class="mb-4"><b class="ml-2">Corresponding address is a Permanent address?</b>
     
     
     <div class="row">
     
     <div class="col-sm-12">
     <h3>Permanent Details</h3>
     <hr>
     <label><b> Corresponding Address</b></label>
     
     <br><br>
     <div class="col-sm-6">
     <label><b> Village:</b></label>
     <input type="text" name="villagep" class="form-control" placeholder="Enter address">
     <br> <br>
     </div>
     
     
     <div class="col-sm-6">
     <label><b> City/Dist:</b></label>
     <input type="text" name="cityp" class="form-control" placeholder="Enter City name">
     <br><br>
     </div>
      
     <div class="col-sm-6">   
     <label><b> Post:</b></label>
     <input type="text" name="postp" class="form-control" placeholder="Enter Post">
     <br> <br>
     </div>
     
     <div class="col-sm-6">
     <label><b> Tehsil:</b></label>
     <input type="text" name="tehsilp" class="form-control" placeholder="Enter Tehsil ">
     <br> <br>
     </div>
     
     <div class="col-sm-6">   
     <label><b> State</b></label>
     <select name="statep" class="form-control">
     <option> Maharashtra  </option>
     <option> Rajsthan </option>
     <option> Bihar   </option>
     <option> Telagana </option>
     <option> Andhra Pradesh </option>
     <option> Assam </option>
     <option> Punjab </option>
     <option> Karnatak </option>
     <option> Uttar Pradesh </option>
     <option> Haryana </option>
     <option> West Bengal </option>
     <option> Tripura </option>
     <option> Uttarakhand </option>
     <option> Chhattisgarh </option>
     <option> Tamil Nadu </option>
     <option> Mizoram </option>
     <option> Goa </option>
     <option> Madhya Pradesh </option>
     <option> Sikkim </option>
     <option> Arunachal Pradesh </option>
     <option> Kerala </option>
     <option> Himachal Pradesh </option>
     <option> Meghalaya </option>
     <option> Gujarat </option>
     <option> Odisha </option>
     <option> Manipur </option>
     <option> Jharkhand </option>
     <option> Nagaland </option>
     <option> Delhi </option>
     <option> Jammu & Kashmir </option>
     </select>
     <br><br>
     </div>
      
     <div class="col-sm-6">
     <label><b> Pin:</b></label>
     <input type="text" name="pinp" class="form-control" placeholder="Enter Pin">
     <br><br>
     </div> 
     </div>
     </div>
     
    <div class="row">
    <div class="col-sm-12">
     <h3>Primary Details</h3>
     <hr>
     
        
     <label class="required mb-2"><b> Select Student Type</b></label>
     <br>
     <input type="radio" class="mr-1" name="studtype" onclick="show4();" value="private" required> Private
     <input type="radio" class="ml-4 mr-1" name="studtype" onclick="show5();"  value="project" required> Project
     
     <br>
     <br>
     <div id="projectn">
     <label><b> Project Name</b></label>
     <select name="projectname" class="form-control" required>
     
     <option> --Select Project-- </option>
     <%
        String sql6="select * from addproject";
        PreparedStatement ps6=con.prepareStatement(sql6);
        ResultSet rs6= ps6.executeQuery();
        
        while(rs6.next()){
       
        %>
        <option value="<%=rs6.getString("id") %>">
        <%=rs6.getString("projectname") %>
        </option>
        <%} %>
     </select>
     <br> 
     </div>
     
     <label class="required"><b> Academic Year</b></label>
     <select name="academicyear" class="form-control" required>
     
     <option> --Select Academic Year-- </option>
     <%
        String sql2="select * from year";
        PreparedStatement ps2=con.prepareStatement(sql2);
        ResultSet rs2= ps2.executeQuery();
        
        while(rs2.next()){
       
        %>
        <option value="<%=rs2.getString("id") %>">
        <%=rs2.getString("year") %>
        </option>
        <%} %>
     </select>
     <br> 
     
     <label><b> Application Number</b></label>
     <input type="number" name="applicantnum" class="form-control" placeholder="Enter Appliaction Number">
     
     <br>
     
     <label class="required"><b> School/College Name</b></label>
     <select name="sch/clgname" class="form-control" required>
     <option>--Select School/College Name--  </option>
      <%
        String sql3="select * from college";
        PreparedStatement ps3=con.prepareStatement(sql3);
        ResultSet rs3= ps3.executeQuery();
        
        while(rs3.next()){
       
        %>
        <option value="<%=rs3.getString("id") %>">
        <%=rs3.getString("cname") %>
        </option>
        <%} %>
     </select>
     <br> 
     
     <label class="required"><b> Medium</b></label>
     <select name="medium" class="form-control" required>
     <option>Select Medium  </option>
      <%String sql4="select * from medium";
        PreparedStatement ps4=con.prepareStatement(sql4);
        ResultSet rs4= ps4.executeQuery();
        
        while(rs4.next()){
       
        %>
        <option value="<%=rs4.getString("id") %>">
        <%=rs4.getString("medium_name") %>
        </option>
        <%} %>
     
     </select>
     <br> 
     
     <label class="required"><b> Class</b></label>
     <select name="class1" class="form-control">
     <option> Select Class </option>
     <%
        String sql5="select * from addclass";
        PreparedStatement ps5=con.prepareStatement(sql5);
        ResultSet rs5= ps5.executeQuery();
        
        while(rs5.next()){
       
        %>
        <option value="<%=rs5.getString("id") %>">
        <%=rs5.getString("classname") %>
        </option>
        <%} %>
     
     </select>
     <br> 
     </div>
     </div>
     
     <div class="row">
     <div class="col-sm-12">
     <h3>Parents Details</h3>
     <hr>
     </div>
     <div class="col-sm-4">
     <label><b>Father Name </b></label>
     <input type="text" name="fathername" class="form-control" placeholder="Enter Father Name">
     <br> 
      </div>
      <div class="col-sm-4">
     <label><b>Father Mobile Number</b></label>
     <input type="text" name="fathermobile" class="form-control" placeholder="Enter Mobile">
     <br> 
      </div>
      <div class="col-sm-4">
      <label><b> Father Whatsapp Number</b></label>
      <input type="text" name="fatherwhatsapp" class="form-control" placeholder="Enter Whatsapp Number">
      <br> 
      </div>
       <div class="col-sm-4">
      <label><b> Mother Name</b></label>
      <input type="text" name="mothername" class="form-control" placeholder="Enter Mother Name">
      <br> 
      </div>
       <div class="col-sm-4">
      <label><b>Mother Mobile Number</b></label>
      <input type="text" name="mothermobile" class="form-control" placeholder="Enter Mobile">
      <br> 
      </div>
       <div class="col-sm-4">
      <label><b> Mother Whatsapp Number</b></label>
      <input type="text" name="motherwhatsapp" class="form-control" placeholder="Enter Whatsapp Number">
      <br> 
      </div>
      </div>
      
     <div class="row">
     <div class="col-sm-12">
     <h3>Fee Details</h3>
     <hr>
      
      <label><b>Enter Total Fees</b></label>
      <input type="text" name="fees" class="form-control" placeholder="Enter Total Fees" id="fees">
      <br> 
      
     <label class="mb-2"><b> Concession Applicable</b></label>
     <br> 
     <input type="radio" class="mr-1" name="concession" value="yes" onclick="show2();" required  > Yes
     <input type="radio" class="ml-4 mr-1" name="concession" value="no" onclick="show1();" required> No
     <br>
     <br>
     </div>
     <div class="col-sm-4" id="cfees">
      <label><b>Concession Fees</b></label>
      <input type="text" name="cfees" class="form-control" id="cfees1" placeholder="Enter Concession Fees" onkeyup="show3();">
      </div>
      <br>
      <div class="col-sm-4" id="aftercfees">
      <label><b>Fees After Concession</b></label>
      <input type="text" name="aftercfees" class="form-control" id="aftercfees1" placeholder="Fees Afters Concession" readonly>
     <br>
      </div>
     </div>
     
     <div class="row">
     <div class="col-sm-12">
     <h3>Add Photos</h3>
     <hr>
     
      <label><b>Student Photo</b></label>
      <input type="file" name="studphoto" class="form-control" >
      <br> 
      
      
      <label><b>Father Photo</b></label>
      <input type="file" name="fatherphoto" class="form-control">
      <br> 
      
      <label><b>Mother Photo</b></label>
      <input type="file" name="motherphoto" class="form-control">
      <br> 
      </div>
      </div>
      
     <div class="row">
     
     <h3>Guardian Details</h3>
     <hr>
     
     <div class="col-sm-12">
     
     <div class="col-sm-2">
     <label><b>#  Full_Name</b></label>
     <input type="text" name="gname" class="form-control" placeholder="Enter Full Name">
     </div>
    
     
     <div class="col-sm-3">
     <label><b>Relationship_With_Candidate</b></label>
     <input type="text" name="relation" class="form-control" placeholder="Enter Relation">
     </div>
     
     
     <div class="col-sm-2">
      <label><b>Contact Number</b></label>
      <input type="text" name="cnumber" class="form-control" placeholder="Enter Contact Number">
      </div>
    
      <div class="col-sm-2">
      <label><b>Address</b></label>
      <textarea rows="5" cols="15" name="gaddress" placeholder="Enter Address" class="form-control"> </textarea>
      </div>
      
      <div class="col-sm-3">
      <label><b>Photo</b></label>
      <input type="file" name="gphoto" class="form-control">
      </div>
      </div>
      
     
     <div class="col-sm-12 mt-3">
     <div class="col-sm-2">
    
     <input type="text" name="gname2" class="form-control" placeholder="Enter Full Name">
     </div>
    
     
     <div class="col-sm-3">
     
     <input type="text" name="relation2" class="form-control" placeholder="Enter Relation">
     </div>
     
     
     <div class="col-sm-2">
    
      <input type="text" name="cnumber2" class="form-control" placeholder="Enter Contact Number">
      </div>
    
      <div class="col-sm-2">
     
      <textarea rows="5" cols="15" name="gaddress2" placeholder="Enter Address" class="form-control"> </textarea>
      </div>
      
      <div class="col-sm-3">
     
      <input type="file" name="gphoto2" class="form-control">
      </div>
      </div>
      <br><br>
      
      <div class="col-sm-12">
       <label><b>Remarks (Optional)</b></label>
      <input type="text" name="remark" class="form-control" placeholder="Enter Remarks (Optional)" >
      <br>
      </div>
      <div class="col-sm-12 mb-4" style="text-align:center">
      <input type="submit" value="Submit Form" class="btn btn-success btn-lg">
      <br>
      </div>
      </div>
      
      </form>
      </div>
      </div>
      <script>
      document.getElementById('cfees').style.display='none';
      document.getElementById('aftercfees').style.display='none';
      document.getElementById('projectn').style.display='none';
     
     function show1(){
       document.getElementById('cfees').style.display='none';
       document.getElementById('aftercfees').style.display='none';
       }
     function show2(){
       document.getElementById('cfees').style.display='block';
       document.getElementById('aftercfees').style.display='block';
       }
     
     function show3(){
      var totalfees=document.getElementById("fees").value;
      var confees=document.getElementById("cfees1").value;
      var feesafterc=Number(totalfees)-Number(confees);
      document.getElementById("aftercfees1").value=feesafterc;
       }
     function show4(){
       document.getElementById('projectn').style.display='none';
       }
     function show5(){
       document.getElementById('projectn').style.display='block';
       }
     
      
      </script>
      <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>