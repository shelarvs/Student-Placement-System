<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
   Student Placement System
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
          Company Insights
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          
          <li class="nav-item active ">
            <a class="nav-link" href="./tables.jsp">
              <i class="material-icons">content_paste</i>
              <p>Students Data</p>
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
            <a class="navbar-brand" href="#pablo">Student Details</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
             
              
              <li class="nav-item dropdown">
                <a class="nav-link" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
				
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="company_logout.jsp">Logout</a>
                </div>
				
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title ">Students Details</h4>
				  
                </div>
                <div class="card-body">
				<form class="navbar-form">
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Search...">
                <button type="submit" class="btn btn-white btn-round btn-just-icon">
                  <i class="material-icons">search</i>
                  <div class="ripple-container"></div>
                </button>
              </div>
            </form>
                  <div class="table-responsive">
                    <table class="table">
                      <thead class=" text-primary">
                       <th>
                         PRN
                        </th>
                        <th>
                         Eligibility no.
                        </th>
                        <th>
                          Name
                        </th>
                        <th>
                         Email
                        </th>
                        <th>
                        Mobile no.
                        </th>
    					
						<th>
                        SGPA
                        </th>
                      </thead>
                      <tbody>
                      <%@page import="java.sql.*,java.util.*"%>
<% 
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();


String stud_info_temp ="select Email from notification";
ResultSet resultSet = statement.executeQuery(stud_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("Email");

String stud_info ="select * from view_eli_student where Email='"+temp_mail+"'";
resultSet = statement.executeQuery(stud_info); 

while(resultSet.next()){ 
%>

                        <tr>
                          <td>
                           <%=resultSet.getString("PRN") %>
                          </td>
                          <td>
                           <%=resultSet.getString("Eligibility_no")%>
                          </td>
                          <td>
                           <%=resultSet.getString("Name")%>
                          </td>
                          <td>
                            <%=resultSet.getString("Email")%>
                          </td>
                          <td>
                           <%=resultSet.getString("Mobile_no")%>
                          </td>
                        
                          <td class="text-primary">
                          <%=resultSet.getString("SGPA")%>
                          </td>
                          
                          <td>
                            <form action="placed.jsp" method="get">  
                       <button name="data" type="submit" class="btn btn-primary"  value= "<%=resultSet.getString("Email") %>" >Selected</button>
                       </form>
                          </td>
                        </tr>
                       <%}
}
                      
                      catch(Exception e)
                      {
                      System.out.print(e);
                      e.printStackTrace();
                      }
                      
                       %>
 
                      </tbody>
                    </table>
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