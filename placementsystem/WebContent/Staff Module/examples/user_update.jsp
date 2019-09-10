<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<%@page import="java.sql.*,java.util.*"%>
           

<%
String staff_name=request.getParameter("name_data");
String mobile_no=request.getParameter("mobile");
String password=request.getParameter("pass");



try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String staff_info_temp ="select email from staff_temp";
ResultSet resultSet = statement.executeQuery(staff_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("email");


String sql="Update staff set staff_Name=?,staff_Contact_no=?,staff_Password=? where staff_Email='"+temp_mail+"'";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,staff_name);
executestate.setString(2,mobile_no);
executestate.setString(3,password);


int i = executestate.executeUpdate();


if(i > 0)
{
%>

<script>

    var txt;
    if (confirm("Data Updated Successfully")) {
    	window.location.href = "user.jsp";
    } else {
    	window.location.href = "user.jsp";
    }
    
</script>

<%
}
else
{
out.print("There is a problem in updating Record.");
} 



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