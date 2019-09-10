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
String name=request.getParameter("Name");
String native_place=request.getParameter("Native");
String mobile=request.getParameter("Mobile");
String password=request.getParameter("pass");
String live_back=request.getParameter("Live");
String dead_back=request.getParameter("Dead");
String sem1=request.getParameter("sem1");
String sem2=request.getParameter("sem2");
String sem3=request.getParameter("sem3");
String sem4=request.getParameter("sem4");
String sem5=request.getParameter("sem5");
String sem6=request.getParameter("sem5");
String SGPA=request.getParameter("SGPA");



try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String stud_info_temp ="select email from student_temp";
ResultSet resultSet = statement.executeQuery(stud_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("Email");


String sql="Update student set Name=?,Native_place=?,Mobile_no=?,Password=?,Live_back=?,Dead_back=?,eng_sem1=?,eng_sem2=?,eng_sem3=?,eng_sem4=?,eng_sem5=?,eng_sem6=?,SGPA=? where Email='"+temp_mail+"'";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,name);
executestate.setString(2,native_place);
executestate.setString(3,mobile);
executestate.setString(4,password);
executestate.setString(5,live_back);
executestate.setString(6,dead_back);
executestate.setString(7,sem1);
executestate.setString(8,sem2);
executestate.setString(9,sem3);
executestate.setString(10,sem4);
executestate.setString(11,sem5);
executestate.setString(12,sem6);
executestate.setString(13,SGPA);


int i = executestate.executeUpdate();


if(i > 0)
{
%>

<script>

    var txt;
    if (confirm("Data Updated Successfully")) {
    	window.location.href = "Studentinfo.jsp";
    } else {
    	window.location.href = "loginwin.jsp";
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