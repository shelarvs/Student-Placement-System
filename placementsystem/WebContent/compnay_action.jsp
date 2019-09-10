<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wait a While</title>
</head>
<body>
 <img src="assets/images/1.png" width="120px" height="170px" class="logo logo-scrolled" alt="">

<script>

    var txt;
    if (confirm("Registration Successful")) {
    	window.location.href = "loginwin.jsp";
    } else {
    	window.location.href = "loginwin.jsp";
    }
    
</script>


<%@page import="java.sql.*,java.util.*"%>
<% 
String company_name=request.getParameter("company_name");
String company_email=request.getParameter("company_email");
String company_contact_no=request.getParameter("company_contact_no");
String company_password=request.getParameter("company_password");
String company_type=request.getParameter("company_type");
String company_establish_year=request.getParameter("company_establish_year");
String company_address=request.getParameter("company_address");
String company_technology=request.getParameter("company_technology");
String comapny_name_of_ceor=request.getParameter("comapny_name_of_ceo");
String company_information=request.getParameter("company_information");
String company_package_offered=request.getParameter("company_package_offered");
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String sql="insert into company values(?,?,?,?,?,?,?,?,?,?,?)";

PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,company_name);
executestate.setString(2,company_email);
executestate.setString(3,company_type);
executestate.setString(4,company_establish_year);
executestate.setString(5,company_address);
executestate.setString(6,company_technology);
executestate.setString(7,comapny_name_of_ceor);
executestate.setString(8,company_information);
executestate.setString(9,company_password);
executestate.setString(10,company_package_offered);
executestate.setString(11,company_contact_no);

executestate.executeUpdate();


String sql1="insert into notifyStaff values(?)";

PreparedStatement executestate1=(PreparedStatement) con.prepareStatement(sql1);

executestate1.setString(1,company_email);
executestate1.executeUpdate();

System.out.println("Data Inserted");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>



</body>
</html>