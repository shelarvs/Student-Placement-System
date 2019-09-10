<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wait aWhile</title>
</head>
<body>
 <img src="assets/images/1.png" width="120px" height="170px" class="logo logo-scrolled" alt="">
<%@page import="java.sql.*,java.util.*"%>
<% 
String c_mail=request.getParameter("c_Email");
String c_pass=request.getParameter("c_Password");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String sql ="select * from company where c_Email='"+c_mail+"' AND c_Password='"+c_pass+"'";
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
	String sql1="insert into company_temp values(?)";
	PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql1);

	executestate.setString(1,c_mail);
	executestate.executeUpdate();
	%> <script>

    var txt;
    if (confirm("Login Successful")) {
    	window.location.href ="Company Module/examples/tables.jsp";
    } else {
    	window.location.href = "loginwin.jsp";
    }
    
</script><%
}

System.out.println("Login Sucessful");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

</body>
</html>