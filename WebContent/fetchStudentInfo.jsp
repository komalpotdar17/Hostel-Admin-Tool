<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<head>
<style>
.col-md-4 input[type=text], .col-md-2 input[type=text] {
border:none;
background: transparent;
border-bottom:3px solid ;
}

</style>
</head>
<% 

String sname=request.getParameter("sname");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="select m.medium_name ,c.classname ,s.* from student as s inner join  addclass as c on c.id=s.classid inner join medium as m on m.medium_id=s.mediumid where s.id=?";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,sname);
ResultSet rs=ps.executeQuery();

while(rs.next()){
%>

  <div class= "row">
  
  <div class="col-md-4">
  <label><b>Class:</b></label>
  <input type="text" value="<%=rs.getString("classname")%>">
 
    </div>
    
    <div class="col-md-4">
  <label><b>Medium:</b></label>
  <input type="text" value=" <%=rs.getString("mediumid")%>">
   </div>
   
    <div class="col-md-4">
       <img src="<%=rs.getString("studphoto")%>" style="height:100px; width:100px;">
   
    </div>
    
  <div class="col-md-2">
  <label><b>DOB:</b></label>
  <input type="text" value=" <%=rs.getString("dob")%>">
   
    </div>
    
  
    <div class="col-md-2">
      <label><b>Age:</b></label>
      <input type="text" value="<%=rs.getString("age")%>">
 
    </div> 
    
   
    <div class="col-md-2">
     <label><b>Gender:</b></label>
    <input type="text" value="<%=rs.getString("gender")%>">
    </div>
    </div>
    <br>
    <div class="row">
    <div class="col-md-4">
    <label><b>Father Name:</b></label>
    
    <input type="text" value="<%=rs.getString("fathername")%>">
    </div>
    
  
    <div class="col-md-4">
      <label><b>Mobile Number:</b></label>
    <input type="text" value="<%=rs.getString("fathermobile")%>">
    </div>
    
</div>
<br>
 <div class="row">
          <div class="col-md-4">
             <label><b>Mother Name:</b></label>
             <input type="text" value="<%=rs.getString("mothername")%>">
          </div>
    
    
         <div class="col-md-4">
            <label><b>Mobile Number:</b></label>
            <input type="text" value="<%=rs.getString("mothermobile")%>">
        </div>
    
 </div><br>
 
    <div class="row">
    <div class="col-md-2">
    <label><b>Village:</b></label>
    <input type="text" value="<%=rs.getString("village")%>">
    </div>
    
    <div class="col-md-2">
    <label><b>Tehsil:</b></label>
    <input type="text" value="<%=rs.getString("tehsil")%>">
    </div>
    
    
    <div class="col-md-2">
    <label><b>Distt:</b></label>
   <input type="text" value="<%=rs.getString("city")%>">
    </div>
    </div><br>
    
    <div class="row">
    <div class="col-md-3">
    <label><b>Blood Grp:</b></label>
    <input type="text" name="bloodgrp">
    </div>
    
    
    <div class= "col-md-3">
    <label><b>Height:</b></label>
    
    <input type="text" name="height" >
    </div>
    
      <div class= "col-md-3">
      <label>Weight:</label>
      <input type="text" name="weight">
      </div>
      
      
       <div class= "col-md-3">
      <label>BMI:</label>
      <input type="text" name="bmi">
      </div>
      
        <div class="col-sm-12 mb-4" style="text-align:center;">
       <br>
       <input type="submit" value="Submit" class="btn btn-success btn-lg" >
       
       </div>     
      
     </div>
   <%} %>
