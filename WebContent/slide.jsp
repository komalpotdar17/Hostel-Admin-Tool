<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1 style="margin-top:5px;"><a class="navbar-brand" href="index.jsp"><b><i> JSPM</b>Hostel</i><span class="dashboard_text"></span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="header">ACTION LINKS</li>
              <li class="treeview">
                <a href="dashboard.jsp">
                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                </a>
              </li>
			  <li class="treeview">
                <a href="#">
               <i class="fa-solid fa-link"></i>
                <span>Admission</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="Registration.jsp"><i class="fa-solid fa-user-plus" style="margin-right:3px;"></i> New Admission</a></li>
                  <li><a href="AddProject.jsp"><i class="fa-solid fa-list" style="margin-right:4px;"></i> Add Projects</a></li>
                  <li><a href="medium.jsp"><i class="fa-solid fa-graduation-cap" style="margin-right:3px;"></i></i> Add Medium </a></li>
                  <li><a href="college.jsp"><i class="fa-solid fa-graduation-cap" style="margin-right:3px;"></i> Add College </a></li>
                  <li><a href="addclass.jsp"><i class="fa-solid fa-graduation-cap" style="margin-right:3px;"></i> Add Class</a></li>
                  <li><a href="religion.jsp"><i class="fa-solid fa-graduation-cap" style="margin-right:3px;"></i>Add Religion</a></li>
                   <li><a href="year.jsp"><i class="fa-solid fa-graduation-cap" style="margin-right:3px;"></i>Add Year</a></li>
                  
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
             <i class="fa-solid fa-money-bill"></i>
                <span style="margin-left:3px;">Student Fees</span>
                  <i class="fa fa-angle-left pull-right"></i>
                
                </a>
                <ul class="treeview-menu">
                  <li><a href="addfees.jsp"><i class="fa-solid fa-user-plus" style="margin-right:5px;"></i>Add Fees</a></li>
                   <li><a href="studFeesDetails.jsp"><i class="fa-solid fa-file-lines" style="margin-right:5px;"></i> Student Fees Details</a></li>
                  <li><a href="moreReports.jsp"><i class="fa-solid fa-file-lines" style="margin-right:5px;"></i> More Reports</a></li>
                  
                </ul>
              </li>
              <li class="treeview">
              <li class="treeview">
                <a href="#">
              <i class="fa-solid fa-file"></i>
                <span style="margin-left:7px;">Student Reports</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="allStudentList.jsp"><i class="fa-solid fa-list" style="margin-right:4px;"></i> All Students List</a></li>
                  <li><a href="privateStudList.jsp"><i class="fa-solid fa-list" style="margin-right:4px;"></i></i> Private Student Lists</a></li>
                  <li><a href="#"><i class="fa-solid fa-list" style="margin-right:4px;"></i> Project Wise Student Report List</a></li>
                  <li><a href="cancelStudList.jsp"><i class="fa-solid fa-list" style="margin-right:4px;"></i></i> Cancelled Registration</a></li>
                <li><a href="classReports.jsp"><i class="fa-solid fa-list" style="margin-right:4px;"></i> Class Reports </a></li>
               
                </ul>
              </li>
			  <li>
                <a href="#">
               <i class="fa-solid fa-utensils"></i> <span style="margin-left:7px;">Mess Section</span>
                  <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                <li><a href="addMessStock.jsp"><i class="fa-solid fa-square-plus" style="margin-right:5px;"></i> Add Mess Stock </a></li>
               <li><a href="viewMessStock.jsp"><i class="fa-solid fa-list" style="margin-right:5px;"></i> View Mess Stock </a></li>
               <li><a href="assignMessStock.jsp"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Assign Mess stock</a></li>
               <li><a href="viewAssignMessStock.jsp"><i class="fa-solid fa-list" style="margin-right:5px;"></i> View Assigned Stock</a></li>
               
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa-solid fa-file-invoice"></i> <span style="margin-left:7px;" >Stock</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="addStationary.jsp"><i class="fa-solid fa-square-plus" style="margin-right:8px;"></i>Add Inward Stock </a></li>
                  <li><a href="DisplayStock.jsp"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Display Product Wise Inward Stock</a></li>
               <li><a href="allStockList.jsp"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Available Stock</a></li>
               <li><a href="#"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Stud.Stock Distribution</a></li>
               <li><a href="#"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Unit Stock Distribution</a></li>
               <li><a href="#"><i class="fa-solid fa-list" style="margin-right:5px;"></i>Product Distribution List</a></li>
               <li><a href="#"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Distribution List</a></li>
               <li><a href="#"><i class="fa-solid fa-list" style="margin-right:5px;"></i> Unit Stock List</a></li>
               
                  <li><a href="validation.html"><i class="fa-solid fa-list"></i> Student Stock List</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa-solid fa-briefcase-medical"></i> <span style="margin-left:7px;">Medical Section</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="healthcard.jsp"><i class="fa-solid fa-stethoscope" style="margin-right:4px;"></i> Health Card</a></li>
                       <li><a href="viewhealthcarddetails.jsp"><i class="fa-solid fa-stethoscope" style="margin-right:4px;"></i> Daily OPD List</a></li>
                            <li><a href="healthCardHistory.jsp"><i class="fa-solid fa-stethoscope" style="margin-right:4px;"></i> History Health Card</a></li>
                </ul>
              </li>
             <!--   <li class="treeview">
                <a href="#">
                <i class="fa fa-envelope"></i> <span>Mailbox </span>
                <i class="fa fa-angle-left pull-right"></i><small class="label pull-right label-info1">08</small><span class="label label-primary1 pull-right">02</span></a>
                <ul class="treeview-menu">
                  <li><a href="inbox.html"><i class="fa fa-angle-right"></i> Mail Inbox </a></li>
                  <li><a href="compose.html"><i class="fa fa-angle-right"></i> Compose Mail </a></li>
                </ul>
              </li>-->
          <!--  <li class="treeview">
                <a href="#">
                <i class="fa fa-folder"></i> <span>Examples</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href="login.html"><i class="fa fa-angle-right"></i> Login</a></li>
                  <li><a href="signup.html"><i class="fa fa-angle-right"></i> Register</a></li>
                  <li><a href="404.html"><i class="fa fa-angle-right"></i> 404 Error</a></li>
                  <li><a href="500.html"><i class="fa fa-angle-right"></i> 500 Error</a></li>
                  <li><a href="blank-page.html"><i class="fa fa-angle-right"></i> Blank Page</a></li>
                </ul>
              </li>
              <li class="header">LABELS</li>
              <li><a href="#"><i class="fa fa-angle-right text-red"></i> <span>Important</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-yellow"></i> <span>Warning</span></a></li>
              <li><a href="#"><i class="fa fa-angle-right text-aqua"></i> <span>Information</span></a></li>
            </ul>
            
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
		<!--left-fixed -navigation-->
	