<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<body>

<div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo">
        <a href="#" class="simple-text logo-normal">
         
		  Staff Insights
        </a>
      </div>
      <div class="sidebar-wrapper">
        <ul class="nav">
           <li class="nav-item">
            <a class="nav-link" href="./notifications.jsp">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./user.jsp">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./tables.jsp">
              <i class="material-icons">content_paste</i>
              <p>Check Placement Status</p>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="./filter.jsp">
              <i class="material-icons">library_books</i>
              <p>Filter</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./companyMan.jsp">
              <i class="material-icons">album</i>
              <p>Company Management</p>
            </a>
          </li>
          <!--li class="nav-item ">
            <a class="nav-link" href="./map.jsp">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li-->
          
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="#pablo">Filter Students Data</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link" href="./notifications.jsp">
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
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
				
				<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="staff_logout.jsp">Logout</a>
                </div>
				
              </li>
            </ul>
          </div>
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="card">
            <div class="card-header card-header-primary">
              <h4 class="card-title">Eligible Candidates</h4>
             
            </div>
            <div class="card-body">
              <div id="typography">
			  
			  <div class="dropdown">
  

<br>
  <br>
</div>

<form action="notify.jsp" method="get">
<div class="container">
 
  

	<div class="table-responsive">
	 	<h2>Eligible Students</h2>
                    <table class="table">
                    
                    <%@page import="java.sql.*,java.util.*"%>
           

<%
String SGPA=request.getParameter("SGPA");
String live=request.getParameter("livebacklog");
String dead=request.getParameter("deadbacklog");
%>



                
                    
				
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
                        Shift
                        </th>
                      </thead>
                      <tbody>
                     <% try
                      {
                      	Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
                      Statement statement=con.createStatement();
                      ResultSet resultSet = null;

                      String sql="select * from student where live_back<'"+live+"' AND dead_back<'"+dead+"' AND SGPA>'"+SGPA+"'";
                      resultSet = statement.executeQuery(sql);
                      
                      String notify="insert into notification values(?)";
                      PreparedStatement executestate=(PreparedStatement) con.prepareStatement(notify);
                      
                      while(resultSet.next()){ %>  
                        <tr>
                        
                          
                           <td class="text-primary">
                           <%=resultSet.getString("PRN") %>
                          </td>
                          <td>
                            <%=resultSet.getString("Eligibility_no") %>
                          </td>
                          <td>
                           <%=resultSet.getString("Name") %>
                           
                          </td>
                          <td>
                           <textarea rows="1" cols="25" name="mailID" placeholder="Email"><%=resultSet.getString("Email")%></textarea>  
                          </td>
						  <td>
                            <%=resultSet.getString("Mobile_no") %>
                          </td>
                            <td>
                            <%=resultSet.getString("Shift") %>
                          </td>
                          
                            
                        </tr>
                       
                        </tr>
                                     <%
                }
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
                  
                  
                  <center>
<br><textarea rows="5" cols="50" name="notify_text" placeholder="Notification Message"></textarea>


 <br><button id="btnSubmit" class="btn btn-primary">Send Notification</button>
				</center>
                  </div>>
               </form>   
 
</div>

</body>



                
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




