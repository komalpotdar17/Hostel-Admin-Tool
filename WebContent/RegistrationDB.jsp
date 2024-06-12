<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

     <%@page import="java.sql.*"%>
     <%@page import="com.oreilly.servlet.MultipartRequest" %>
    
<% 

MultipartRequest m = new MultipartRequest(request,"C:\\Users\\Vishal Potdar\\workspace\\JSPM project\\WebContent\\pictures",1048*1048*1048); 

  String admissionstatus=m.getParameter("admissionstatus");
  String admissiondate=m.getParameter("admissiondate");
  
  String studname=m.getParameter("studname");
  String studmobile=m.getParameter("studmobile");
  String dob=m.getParameter("dob");
  String age=m.getParameter("age");
  String gender=m.getParameter("gender");
  String blood=m.getParameter("blood");
  String adhar=m.getParameter("adhar");
  String religion=m.getParameter("religion");
  String category=m.getParameter("category");
  
  String caste=m.getParameter("caste");
  String village=m.getParameter("village");
  String city=m.getParameter("city");
  String post=m.getParameter("post");
  String tehsil=m.getParameter("tehsil");
  String state=m.getParameter("state");
  String pin=m.getParameter("pin");
  String isper=m.getParameter("isper");
  
  String villagep=m.getParameter("villagep");
  String cityp=m.getParameter("cityp");
  String postp=m.getParameter("postp");
  String tehsilp=m.getParameter("tehsilp");
  String statep=m.getParameter("statep");
  String pinp=m.getParameter("pinp");
  
  String studtype=m.getParameter("studtype");
  String projectname=m.getParameter("projectname");
  String academicyear=m.getParameter("academicyear");
  String applicantnum=m.getParameter("applicantnum");
  String schclgname=m.getParameter("sch/clgname");
  String medium=m.getParameter("medium");
  String class1=m.getParameter("class1");
  
  String fathername=m.getParameter("fathername");
  String fathermobile=m.getParameter("fathermobile");
  String fatherwhatsapp=m.getParameter("fatherwhatsapp");
  
  String mothername=m.getParameter("mothername");
  String mothermobile=m.getParameter("mothermobile");
  String motherwhatsapp=m.getParameter("motherwhatsapp");
  
  String fees=m.getParameter("fees");
  String concession=m.getParameter("concession");
  String cfees=m.getParameter("cfees");
  String aftercfees=m.getParameter("aftercfees");
  
  String studphoto="studentPhoto/"+m.getFilesystemName("studphoto");
  String fatherphoto="fatherPhoto/"+m.getFilesystemName("fatherphoto");
  String motherphoto="motherPhoto/"+m.getFilesystemName("motherphoto");
  
  String gname=m.getParameter("gname");
  String relation=m.getParameter("relation");
  String cnumber=m.getParameter("cnumber");
  String gaddress=m.getParameter("gaddress");
  String gphoto=m.getParameter("gphoto");
  
  String gname2=m.getParameter("gname2");
  String relation2=m.getParameter("relation2");
  String cnumber2=m.getParameter("cnumber2");
  String gaddress2=m.getParameter("gaddress2");
  String gphoto2=m.getParameter("gphoto2");
  String remark=m.getParameter("remark");
  

  
  

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydata","root","root");

String sql="insert into student(addstatus, adddate, studname, studmobile, dob, age, gender, blood, adhar, religion, category, caste, village, city, post, tehsil, state, pin, ispermanent, pvillage, pcity, ppost, ptehsil, pstate, ppin, studtype, projectname, yearid, applicationnum, schclgid, mediumid, classid, fathername, fathermobile, fatherwhatsapp, mothername, mothermobile, motherwhatsapp, totalfees, concession, cfess, aftercfees, studphoto, fatherphoto, motherphoto, gname, relation, gcontact, gaddress, gphoto, gname2, relation2, gcontact2, gaddress2, gphoto2, remark)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

PreparedStatement ps=con.prepareStatement(sql);

ps.setString(1,admissionstatus);
ps.setString(2,admissiondate);
ps.setString(3,studname);
ps.setString(4,studmobile);
ps.setString(5,dob);
ps.setString(6,age);
ps.setString(7,gender);
ps.setString(8,blood);
ps.setString(9,adhar);
ps.setString(10,religion);
ps.setString(11,category);
ps.setString(12,caste);
ps.setString(13,village);
ps.setString(14,city);
ps.setString(15,post);
ps.setString(16,tehsil);
ps.setString(17,state);
ps.setString(18,pin);
ps.setString(19,isper);
ps.setString(20,villagep);
ps.setString(21,cityp);
ps.setString(22,postp);
ps.setString(23,tehsilp);
ps.setString(24,statep);
ps.setString(25,pinp);
ps.setString(26,studtype);
ps.setString(27,projectname);
ps.setString(28,academicyear);
ps.setString(29,applicantnum);
ps.setString(30,schclgname);
ps.setString(31,medium);
ps.setString(32,class1);
ps.setString(33,fathername);
ps.setString(34,fathermobile);
ps.setString(35,fatherwhatsapp);
ps.setString(36,mothername);
ps.setString(37,mothermobile);
ps.setString(38,motherwhatsapp);
ps.setString(39,fees);
ps.setString(40,concession);
ps.setString(41,cfees);
ps.setString(42,aftercfees);
ps.setString(43,studphoto);
ps.setString(44,fatherphoto);
ps.setString(45,motherphoto);
ps.setString(46,gname);
ps.setString(47,relation);
ps.setString(48,cnumber);
ps.setString(49,gaddress);
ps.setString(50,gphoto);
ps.setString(51,gname2);
ps.setString(52,relation2);
ps.setString(53,cnumber2);
ps.setString(54,gaddress2);
ps.setString(55,gphoto2);
ps.setString(56,remark);


int done=ps.executeUpdate();
if(done>0){
%>
<script>
alert("Student Added Successfully..!!");
location.href="Registration.jsp";
</script>
<%}else{%>
<script>
alert("Error..!!");
location.href="Registration.jsp";
</script>

<%}%>


%>





















 
   