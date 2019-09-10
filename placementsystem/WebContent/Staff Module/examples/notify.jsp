<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>

    var txt;
    if (confirm("Notifications Send Sucessfully")) {
    	window.location.href = "filter.jsp";
    } else {
    	window.location.href = "filter.jsp";
    }
    
</script>
<%@page import="java.sql.*,java.util.*"%>
           

<%
String mail_data=request.getParameter("mailID");
String notify=request.getParameter("notify_text");


try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String sql="insert into notification values(?,?)";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);




executestate.setString(1,mail_data);
executestate.setString(2,notify);


executestate.executeUpdate();


}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>


</body>
</html>