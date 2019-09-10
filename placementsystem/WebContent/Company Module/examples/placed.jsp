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
    if (confirm("Student Placed")) {
    	window.location.href = "tables.jsp";
    } else {
    	window.location.href = "tables.jsp";
    }
    
</script>

 <%@page import="java.sql.*,java.util.*"%>
<% 
String data=request.getParameter("data");

String name=null;
String packagedata=null;
String placed_mail=null;
String placed_name=null;
String placed_PRN=null;
String placed_Eli=null;
String placed_Mobile_no=null;
String placed_YEAR=null;
try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();


String eli_student ="select * from view_eli_student where Email='"+data+"'";
ResultSet resultSet = statement.executeQuery(eli_student); 

resultSet.next();

String temp_data=resultSet.getString("Email");




String stud_info ="select * from company_temp where email='"+temp_data+"'";
ResultSet resultSet2 = statement.executeQuery(stud_info); 

resultSet2.next();

String company_temp_mail=resultSet2.getString("Email");


String company_info ="select * from company where c_Email='"+company_temp_mail+"'";
ResultSet resultSet3 = statement.executeQuery(company_info); 

while(resultSet3.next())
{
	name = resultSet3.getString("c_Name");
	packagedata = resultSet3.getString("package");
}





String stud_info_data ="select * from student where Email='"+temp_data+"'";
ResultSet resultSet1 = statement.executeQuery(stud_info_data); 

while(resultSet1.next())
{
	placed_mail=resultSet1.getString("Email");
	placed_name=resultSet1.getString("Name");
	placed_PRN=resultSet1.getString("PRN");
	placed_Eli=resultSet1.getString("Eligibility_no");
	placed_Mobile_no=resultSet1.getString("Mobile_no");	
	placed_YEAR=resultSet1.getString("Year");
}



String insertPlaced="insert into placed values(?,?,?,?,?,?,?,?)";
PreparedStatement executedata=(PreparedStatement) con.prepareStatement(insertPlaced);

executedata.setString(1,placed_mail);
executedata.setString(2,placed_name);
executedata.setString(3,placed_PRN);
executedata.setString(4,placed_Eli);
executedata.setString(5,placed_Mobile_no);
executedata.setString(6,name);
executedata.setString(7,packagedata);
executedata.setString(8,placed_YEAR);

executedata.executeUpdate();



String sql="delete from view_eli_student where Email='"+data+"' ";

PreparedStatement executestate1=(PreparedStatement) con.prepareStatement(sql);

executestate1.executeUpdate();


String sql5="delete from notification where Email='"+data+"' ";

PreparedStatement executestate5=(PreparedStatement) con.prepareStatement(sql5);

executestate5.executeUpdate();



System.out.println("Data Inserted");
}
catch(SQLException a)
{
System.out.print(a);
a.printStackTrace();
}

catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}

%>


</body>
</html>