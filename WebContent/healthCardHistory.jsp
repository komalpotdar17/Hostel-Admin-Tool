<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="https://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.6.0/flatly/bootstrap.min.css">
<link rel="stylesheet" href="jquery-ztables-1.2.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<title>Insert title here</title>

<jsp:include page="link.jsp"></jsp:include>

</head>
<body class="cbp-spmenu-push">

<jsp:include page="slide.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>

<div id="page-wrapper" style="min-height: auto;">
<div class="main-page">
    <input id="myInput" type="text" placeholder="Search.." class="form-control"><br>
    <table class="table table-bordered">
    					
    <tr class="bg-primary text-white">
        <th>SrNo</th>
        <th>Date (DD-MM-YY)</th>
        <th>Student Name</th>
        <th>Mobile</th>
        <th>Class</th>
         <th>Project</th>
    </tr>
     <tbody id="myTable">
    <tr>
      <%
      
      Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
     String sql="select h.date,h.id, s.studname, s.studmobile, p.projectname,c.classname from healthcard as h inner join student as s on h.studid=s.id inner join addproject as p on h.projectid=p.projectid inner join addclass as c on s.classid=c.id";
     PreparedStatement ps=con.prepareStatement(sql);
     ResultSet rs=ps.executeQuery();
   
     int i=1;
     while(rs.next()){
    	   %>
    	   
    	   <td><%=i %></td> 
    	 <td><%=rs.getString("date") %></td>
    	 <td><%=rs.getString("studname") %></td>
    	 <td><%=rs.getString("studmobile") %></td>
    	 
    	 <td><%=rs.getString("classname") %></td>
    	 <td><%=rs.getString("projectname") %></td>
    	 <td> <a href="viewhealthcarddetails.jsp?healthcardId=<%=rs.getString("hid") %>">View</a></td>
    	 </tr>
    	 
    	 <%i++;} %>
    	 </tbody>
    </table>
    
    
   </div> 
    
 </div>   
    <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
 <jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>







