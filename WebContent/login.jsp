<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1.0">
<title>Login</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/c6000e401e.js" crossorigin="anonymous"></script>
<style>
form {
 border: 1px solid #b3b3b3;
 border-radius:10px;
 padding:50px 80px 50px 80px;
 box-shadow:8px 15px 15px 15px #d9d9d9;
}


form{
postion:relative;
}

#div0 {
background-color:#3399ff;
color:white;
border: 1px solid #e6e6e6; 
padding:10px;
text-align:center;
width:48%;
margin:auto;
height:80px;
}
.fa-solid{
position:absolute;
color:#808080;

}


</style>
</head>

<body>
<br><br>
<div id="div0"><h2><i><b>JSPM</b>Hostel</i></h2></div>
<div class="container mt-4">
<div class="row">
<div class="col-sm-3">
</div>
<div class="col-sm-6">
<form action="loginDB.jsp" method="post">

<div class="text-center mb-3">Sign in to start your session</div>

<div class="form-group">  

<input type="text" class="form-control" name="username" id="uname" placeholder="Username">
 
</div>
 
<div class="form-group">

<input type="password" class="form-control" name="password" id="pass" placeholder="Password">

</div> 
<button type="submit" class="btn btn-primary">Log In</button>

</form>
</div>
</div>
</div>
<br><br><br>





</body>
</html>