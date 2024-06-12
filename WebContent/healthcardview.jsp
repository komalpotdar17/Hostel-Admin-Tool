<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
      
      
      Date date = new Date();  
      SimpleDateFormat formatter = new SimpleDateFormat("dd-M-yyyy");  
      String strDate= formatter.format(date);  
      System.out.println(strDate);
        
      
      Class.forName("com.mysql.jdbc.Driver");
     Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");
     String sql="select h.date,h.hid, s.studname, s.studmobile, p.projectname,c.classname from healthcard as h inner join student as s on h.studid=s.studid inner join addproject as p on h.projectid=p.projectid inner join addclass as c on s.classid=c.id where h.date=?";
     PreparedStatement ps=con.prepareStatement(sql);
     ps.setString(1,strDate);
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







