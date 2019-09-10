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
    if (confirm("You are Sucessfully Logged out")) {
    	window.location.href ="/placementsystem/loginwin.jsp";
    
    	
    } else {
    	window.location.href = "/placementsystem/loginwin.jsp";
    }
    
</script>

<%
                  
                  try{
                	  Class.forName("com.mysql.jdbc.Driver");
                	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
                	  Statement statement=con.createStatement();
                	  
                	  String sql1="truncate student_temp";
                		PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql1);
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