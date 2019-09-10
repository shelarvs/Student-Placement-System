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
    if (confirm("Company Removed Successfully")) {
    	window.location.href = "companyMan.jsp";
    } else {
    	window.location.href = "companyMan.jsp";
    }
    
</script>

 <%@page import="java.sql.*,java.util.*"%>
<% 
String data=request.getParameter("data");

try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String sql="delete from company where c_Name='"+data+"' ";

PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);


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