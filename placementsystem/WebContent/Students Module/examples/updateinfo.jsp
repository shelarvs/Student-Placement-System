 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>
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
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
          Student Insights
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item  ">
            <a class="nav-link" href="./Studentinfo.jsp">
              <i class="material-icons">dashboard</i>
              <p>Student Information</p>
            </a>
          </li>
          <li class="nav-item active ">
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
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.jsp">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" ><b>Update Profile</b></a>
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
                
                </button>
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
                  <span class="notification">0</span>
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
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-8">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">Edit Profile</h4>
                  <p class="card-category">Complete your profile</p>
                </div>
                <div class="card-body">
                
                  <form action="updateinfo_action.jsp" method="get">
                  
                  
                  






<%@page import="java.sql.*,java.util.*"%>
<% 
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();


String stud_info_temp ="select email from student_temp";
ResultSet resultSet = statement.executeQuery(stud_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("Email");


String stud_info ="select * from student where Email='"+temp_mail+"'";
 resultSet = statement.executeQuery(stud_info);                                                                       

while(resultSet.next()){ %>

                  
                  
     
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Name</label>
                          <input type="text" class="form-control" name="Name" value=<%=resultSet.getString("Name") %> > 
                        </div>
                      </div>
                   
                
                  
						                       
                      <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Native Place</label>
                          <input type="text" class="form-control" name="Native" value=<%=resultSet.getString("Native_place") %>>
                        </div>
                      </div>
                      
                      
                     
						
						 <div class="col-md-6">
                                     
                        <div class="form-group">
                          <label class="bmd-label-floating">Mobile Number</label>
                          <input type="number" class="form-control" name="Mobile" value=<%=resultSet.getString("Mobile_no") %>>
                        </div>
                      
                    </div>
						
						 <div class="col-md-6">
						  <div class="form-group">
                          <label class="bmd-label-floating">Password</label>
                          <input type="password" class="form-control" name="pass" >
                        </div>
                        </div>
                        
                         <div class="col-md-6">
                          <div class="form-group">
                          <label class="bmd-label-floating">Confirm Password</label>
                          <input type="password" class="form-control" >
                        </div>
                        </div>
						
						
						
					  <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Live Backlogs</label>
                          <input type="number" class="form-control" name="Live" value=<%=resultSet.getString("Live_back") %>>
                        </div>
                      </div>
					  <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Dead Backlogs</label>
                          <input type="number" class="form-control" name="Dead" value=<%=resultSet.getString("Dead_back") %>>
                        </div>
                        </div>
                        
                        	  <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 1</label>
                          <input type="number" class="form-control" name="sem1" value=<%=resultSet.getString("eng_sem1") %>>
                        </div>
                        </div>
                        
                        	  <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 2</label>
                          <input type="number" class="form-control" name="sem2" value=<%=resultSet.getString("eng_sem2") %>>
                        </div>
                        </div>
                        
                          <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 3</label>
                          <input type="number" class="form-control" name="sem3" value=<%=resultSet.getString("eng_sem3") %>>
                        </div>
                        </div>
                        
                          <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 4</label>
                          <input type="number" class="form-control" name="sem4" value=<%=resultSet.getString("eng_sem4") %>>
                        </div>
                        </div>
                        
                          <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 5</label>
                          <input type="number" class="form-control" name="sem5" value=<%=resultSet.getString("eng_sem5") %>>
                        </div>
                        </div>
                        
                          <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">Marks-Semester 6</label>
                          <input type="number" class="form-control" name="sem6" value=<%=resultSet.getString("eng_sem6") %>>
                        </div>
                        </div>
                        
                           <div class="col-md-6">
                        <div class="form-group">
                          <label class="bmd-label-floating">SGPA</label>
                          <input type="number" class="form-control" name="SGPA" value=<%=resultSet.getString("SGPA") %>>
                        </div>
                        </div>
                        
                          <button type="submit" class="btn btn-primary pull-right">Update Profile</button>
                          
          			
                      <%}
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

 %>
                          
                       
                       </form>>
                       
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
</body>

</html>












