
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>


    <head>
        <meta charset="utf-8">
        <title>Student Placement System : Staff Registration</title>
        <link rel="stylesheet" href="css/style.css">
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="icon" type="image/png" href="favicon.ico">

        <!--Google Font link-->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">


        <link rel="stylesheet" href="assets/css/slick/slick.css"> 
        <link rel="stylesheet" href="assets/css/slick/slick-theme.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/iconfont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/bootsnav.css">

        <!-- xsslider slider css -->


        <!--<link rel="stylesheet" href="assets/css/xsslider.css">-->




        <!--For Plugins external css-->
        <!--<link rel="stylesheet" href="assets/css/plugins.css" />-->

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">
        <!--<link rel="stylesheet" href="assets/css/colors/maron.css">-->

        <!--Theme Responsive css-->
        <link rel="stylesheet" href="assets/css/responsive.css" />

        <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        
        
        
        <script>
function Validate() {
            var password = document.getElementById("1stPassword").value;
            var confirmPassword = document.getElementById("ConfirmPassword").value;
            if (password != confirmPassword) {
                alert("You first Passwords is not similar with 2nd password. Please enter same password in both");
                return false;
            }
            return true;
        }
        
        
        function check()
        {

            var pass1 = document.getElementById('mobile');


            var message = document.getElementById('message');

           var goodColor = "#0C6";
            var badColor = "#FF9B37";

            if(mobile.value.length!=10){

                mobile.style.backgroundColor = badColor;
                message.style.color = badColor;
                message.innerHTML = "required 10 digits Numbers!"
            }}


</script>
        
        
        
    </head>

    <body data-spy="scroll" data-target=".navbar-collapse">


        <!-- Preloader -->
        <div id="loading">
            <div id="loading-center">
                <div id="loading-center-absolute">
                    <div class="object" id="object_one"></div>
                    <div class="object" id="object_two"></div>
                    <div class="object" id="object_three"></div>
                    <div class="object" id="object_four"></div>
                </div>
            </div>
        </div><!--End off Preloader -->


        <div class="culmn">
          
             


                <div class="container"> 
                   
                    <!-- Start Header Navigation -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                            <i class="fa fa-bars"></i>
                        </button>
                        <a class="navbar-brand" href="index.html">
                            <strong>STUDENT PLACEMENT SYSTEM</strong>
                            <img src="assets/images/1.png" width="120px" height="170px" class="logo logo-scrolled" alt="">
                        </a>

                    </div>
                    <!-- End Header Navigation -->

                    <!-- navbar menu -->
                    <div class="collapse navbar-collapse" id="navbar-menu">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="index.html">Home</a></li>                    
                            <li><a href="index.html">About College</a></li>
                            <li><a href="loginwin.jsp">Login</a></li>
                            <li><a href="registrationwindow.jsp">Register</a></li>
                            <li><a href="index.html">About Software</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div> 

<br><br><br><br>
          
    
  <h1>Placement Officer Registration</h1>
    <form action="staff_action.jsp" method="get" >
    
   
       Staff ID <input type="text" name="staff_id" required><br>
       Name<input type="text" name="staff_name" placeholder="Enter name" required><br>
       Email<input type="email" name="staff_email" placeholder="Enter correect mail" required
       pattern=".+.com" size="30" required
           title="Please Enter Valid email address"/><br>
       Contact No<input type="number" id="phone" name="staff_contact_no" onkeypress="phoneno()" maxlength="10">
<br>
       Password:<input type="password" id="1stPassword" name="staff_password" />
       Confirm Password:<input type="password" id="ConfirmPassword" name="staff_confirm_password" required/><br>
       <button type="submit" id="btnSubmit" value="Submit" onclick="return Validate()" />SUBMIT</form>
   
       </form>

          

        </div>

        <!-- JS includes -->

        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/jquery.magnific-popup.js"></script>
        <script src="assets/js/jquery.easing.1.3.js"></script>
        <script src="assets/css/slick/slick.js"></script>
        <script src="assets/css/slick/slick.min.js"></script>
        <script src="assets/js/jquery.collapse.js"></script>
        <script src="assets/js/bootsnav.js"></script>



        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>

    </body>
</html>
