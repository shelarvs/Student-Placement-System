<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wait a while.....</title>
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
String staff_id=request.getParameter("staff_id");
String staff_name=request.getParameter("staff_name");
String staff_email=request.getParameter("staff_email");
String staff_contact_no=request.getParameter("staff_contact_no");
String staff_password=request.getParameter("staff_password");
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@0808");
Statement statement=con.createStatement();

String sql="insert into staff values(?,?,?,?,?)";

PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,staff_id);
executestate.setString(2,staff_name);
executestate.setString(3,staff_email);
executestate.setString(4,staff_password);
executestate.setString(5,staff_contact_no);

executestate.executeUpdate();

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