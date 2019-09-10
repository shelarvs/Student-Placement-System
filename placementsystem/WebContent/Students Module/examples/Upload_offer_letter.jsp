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
           
<script>

    var txt;
    if (confirm("Registration Successful")) {
    	window.location.href = "companyoffer.jsp";
    } else {
    	window.location.href = "companyoffer.jsp";
    }
    
</script>

<%

String offer=request.getParameter("offer_letter");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();



String stud_info_temp ="select email from student_temp";
ResultSet resultSet = statement.executeQuery(stud_info_temp);
resultSet.next();

String temp_mail=resultSet.getString("Email");

String sql="Update student set IMG_Offer_Letter=? where Email='"+temp_mail+"'";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,offer);

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