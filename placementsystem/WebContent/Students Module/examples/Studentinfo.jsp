 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
        
       <%@page import="java.sql.*,java.util.*"%>
       
     
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Student Page
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">

  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
          Student Insights
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="./Studentinfo.jsp">
              <i class="material-icons">dashboard</i>
              <p>Student Information</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./updateinfo.jsp">
              <i class="material-icons">person</i>
              <p>Update Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./companyinfo.jsp">
              <i class="material-icons">content_paste</i>
              <p>Companies</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./companyoffer.jsp">
              <i class="material-icons">library_books</i>
              <p>Company Offer Letter</p>
            </a>
          </li>
          
          
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.jsp">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
       
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand"><b>Student Information</b></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <form class="navbar-form">
              <div class="input-group no-border">
             
                
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="#pablo">
                  <i class="material-icons">dashboard</i>
                  <p class="d-lg-none d-md-block">
                    Stats
                  </p>
                </a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">notifications</i>
                  
                  
                  <% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String notify ="select count(Email) from notification";
ResultSet resultSet1 = statement.executeQuery(notify);
resultSet1.next();
                  %>
                  
                  
                  
                  <span class="notification"><%=resultSet1.getString("count(Email)")%></span>
                  <p class="d-lg-none d-md-block">
                    Some Actions
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#">No Notifications</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                 
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="logout.jsp">Logout</a>
				  </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
     
             
            <div class="col-md-15">
              <div class="card card-profile">
                <div class="card-avatar">
                  <a href="#pablo">
          
                  </a>
                </div>
                
                
             <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Student Profile</h4>
     		      </div>
                <div class="card-body">
   
<% 


String stud_info_temp ="select email from student_temp";
ResultSet resultSet = statement.executeQuery(stud_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("Email");


String stud_info ="select * from student where Email='"+temp_mail+"'";
 resultSet = statement.executeQuery(stud_info);                                                                       

while(resultSet.next()){ %>
 	
     
                      <div class="col-md-12">
                        <div class="form-group">
                           <label class="bmd-label-floating">Email Id:</label>
                         <label name="" class="form-control">  <%=resultSet.getString("Email") %></label>
                        </div>
                      </div>
               
						                       
                      <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Name:</label>
                          <label name="" class="form-control">  <%=resultSet.getString("Name") %></label>
                        </div>
                      </div>
                      
                      
						 <div class="col-md-12">
                                     
                        <div class="form-group">
                                  
                        <label class="bmd-label-floating">DOB:</label>          
                          <label name="" class="form-control">  <%=resultSet.getString("DOB") %></label>
                        </div>
                      
                    </div>
						
						 <div class="col-md-12">
						  <div class="form-group">
                          <label class="bmd-label-floating">Gender:</label>
                     	 <label name="" class="form-control">  <%=resultSet.getString("Gender") %></label>
                        </div>
                        </div>
                        
                         <div class="col-md-12">
                          <div class="form-group">
                           <label class="bmd-label-floating">Shift:</label>
                          <label name="" class="form-control">  <%=resultSet.getString("Shift") %></label>
                        </div>
                        </div>
						
						
						
					  <div class="col-md-12">
                        <div class="form-group">
                         <label class="bmd-label-floating">Native Places:</label>
                     	  <label name="" class="form-control">  <%=resultSet.getString("Native_place") %></label>
                        </div>
                      </div>
                      
					  <div class="col-md-12">
                        <div class="form-group">
                           <label class="bmd-label-floating">Mobile No:</label>
                         <label name="" class="form-control"> +91- <%=resultSet.getString("Mobile_no") %></label>
                         
                        </div>
                        </div>
                        
                        	  <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">PRN:</label>
                        <label name="" class="form-control">  <%=resultSet.getString("PRN") %></label>
                 	     </div>
                        </div>
                        
                        	  <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Eligibility:</label>
                        <label name="" class="form-control"><%=resultSet.getString("Eligibility_no") %></label>
                        </div>
                        </div>
                        
                          <div class="col-md-12">
                        <div class="form-group">
                          <label class="bmd-label-floating">Live Backlogs:</label>
                      <label name="" class="form-control"><%=resultSet.getString("Live_back") %></label>
                        </div>
                        </div>
                        
                          <div class="col-md-12">
                        <div class="form-group">
						   <label class="bmd-label-floating">Dead Backlogs:</label>
                      <label name="" class="form-control"><%=resultSet.getString("Dead_back") %></label>
                        </div>
                        </div>
                        
                          <div class="col-md-12">
                        <div class="form-group">
                           <label class="bmd-label-floating">Marks-Semester 1:</label>
                      	  <label name="" class="form-control"><%=resultSet.getString("eng_sem1") %></label>
                        </div>
                        </div>
                        
                          <div class="col-md-12">
                        <div class="form-group">
                    	  <label class="bmd-label-floating">Marks-Semester 2:</label>
                 <label name="" class="form-control"><%=resultSet.getString("eng_sem2") %></label>
                        </div>
                        </div>
                        
                           <div class="col-md-12">
                        <div class="form-group">
                        <label class="bmd-label-floating">Marks-Semester 3:</label>
                      <label name="" class="form-control"><%=resultSet.getString("eng_sem3") %></label>
                      </div>
                        </div>
				
				
				      <div class="col-md-12">
                        <div class="form-group">
                             <label class="bmd-label-floating">Marks-Semester 4:</label>
                    <label name="" class="form-control"><%=resultSet.getString("eng_sem4") %></label>
                        </div>
                        </div>
				
				
				      <div class="col-md-12">
                        <div class="form-group">
                        <label class="bmd-label-floating">Marks-Semester 5:</label>
               			  <label name="" class="form-control"><%=resultSet.getString("eng_sem5") %></label>
                        </div>
                        </div>
				
				    <div class="col-md-12">
                        <div class="form-group">
                        <label class="bmd-label-floating">Marks-Semester 6:</label>
                		 <label name="" class="form-control"><%=resultSet.getString("eng_sem6") %></label>
                        </div>
                        </div>
                        
                          <div class="col-md-12">
                        <div class="form-group">
                        <label class="bmd-label-floating">SGPA:</label>
                    	  <label name="" class="form-control"><%=resultSet.getString("SGPA") %></label>
                        </div>
                        </div>
				
				
                      <%}
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

 %>
   
                  </div>
  					  </div>
					  </div>
					  <div class="container">
                  </div>
              </div>
            </div>
            
          </div>
          </div>
        </div>
      </div>
      
    </div>

  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js" type="text/javascript"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.min.js?v=2.1.0" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>
</body>

</html>