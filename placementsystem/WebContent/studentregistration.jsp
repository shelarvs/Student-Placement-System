
   
   
   
   
   
   
   

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
        pageEncoding="ISO-8859-1"%>


    <head>
        <meta charset="utf-8">
        <title>Student Placement System : Student Registration</title>
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
        
        <script type="text/javascript">
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
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
        
        
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

          
          
    <br><br><br><br><br>
 <h1>Student Registration Form</h1>
    <form action="student_action.jsp" method="get">
    			Full Name<input type="text" name="full_name" required/>
                Roll No<input type="number" name="roll_no" required placeholder="Enter must be number"  />
    	     	PRN NO<input type="text" name="prn_no" required/>
    			Eligibility No<input type="number" name="eligibility_no" placeholder="Enter must be number" />
    				Date of Birth<input type="date" name="date_of_birth"required />
    				<label>	Gender</label><br>
    					<input type="radio" name="gender" value="Male"/>Male<br><input type="radio" name="gender" value="Female" required/>Female<br><br>
    				
    				Email<input type="email" name="email_id" 
    				   pattern=".+.com" size="30" required
           title="Please Enter Valid email address"/>
    					Contact No<input type="number" id="phone" name="contact_no" onkeypress="phoneno()" maxlength="10">
    				<label>Shift</label><br><input type="radio" name="shift" value="First" />First shift<br>
    				<input type="radio" name="shift" value="Second"  required/>Second shift<br><br>
    				Native Place<input type="text" name="native_place" required/>
    				
    				
    				
Password:<input type="password" id="1stPassword" name="password" />
Confirm Password:<input type="password" id="ConfirmPassword" name="confirm_password" required />
					<label>Live Backlog:</label>
					<select name="live" required>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
</select>
  
  <label>Dead Backlog</label>
    	<select name="dead">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
</select>
  
    	
    					<br><br>
 
    			<label>Documents:</label><br>	    		
    		
     	  	SSC Marks<input type="text" name="ssc_marklist">
    		HSC Mark(if applicable)<input type="text" name="hsc_marklist">
    		DIPLOMA Mark(if applicable)<input type="text" name="diploma">
    		Semester 1 Marks<input type="text" name="semester_1_marklist">
    		Semester 2 Marks<input type="text" name="semester_2_marklist">
    		Semester 3 Marks<input type="text" name="semester_3_marklist">
    		Semester 4 Marks<input type="text" name="semester_4_marklist">
    		Semester 5 Marks<input type="text" name="semester_5_marklist">
    		Semester 6 Marks<input type="text" name="semester_6_marklist">
  			
  			SGPA<input type="text" name="SGPA">
    			Batch Year<input type="text" name="year" placeholder="e.g : - 2017-18"/>
              
    		
    		Aadhar Number<input type="text" name="adharcard">
    		
    			<label>Documents:</label><br>
    						SSC Marklist<br> <input type="file" name="IMG_ssc" accept="image/*"><br>
    						<br>HSC Marklist (if applicable)<br><input type="file" name="IMG_hsc" accept="image/*"><br>
    						<br>DIPLOMA Marklist (if applicable)<br><input type="file" name="MG_diploma" accept="image/*"><br>
    					<br>Aadhar card<br><input type="file" name="IMG_aadhar" accept="image/*"><br>
    					<br>	Photo<br><input type="file" name="photo" accept="image/*"><br>
    			            <br>Extra Cirricular<br><input type="file" name="IMG_extra" accept="image/*"><br><br><br>
    			
    			<button id="btnSubmit" onclick="return Validate()">SUBMIT</button></form>

          

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
   
