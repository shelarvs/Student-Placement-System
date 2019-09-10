<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wait for Logine</title>
</head>
<body>


 <img src="assets/images/1.png" width="120px" height="170px" class="logo logo-scrolled" alt="">

<%@page import="java.sql.*,java.util.*"%>
<% 
String s_mail=request.getParameter("s_mail");
String s_pass=request.getParameter("s_pass");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();



String sql ="select * from student where Email='"+s_mail+"' AND Password='"+s_pass+"'";
ResultSet resultSet = statement.executeQuery(sql);

if(!resultSet.next()) {
	%> <script>
    var txt;
    if (confirm("User Not Registered!! Click OK to REGISTER")) {
    	window.location.href ="registrationwindow.jsp";
    
    	
    } else {
    	window.location.href = "loginwin.jsp";
    }
    
</script><%




} else {
	String sql1="insert into student_temp values(?)";
	PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql1);

	executestate.setString(1,s_mail);
	executestate.executeUpdate();
	%> <script>
	
	

    var txt;
    if (confirm("Login Successful")) {  	
    	window.location.href ="Students Module/examples/Studentinfo.jsp";
    } else {
    	window.location.href = "loginwin.jsp";
    }
    
</script><%
}


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>