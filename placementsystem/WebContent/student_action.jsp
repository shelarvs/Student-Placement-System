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
String student_name=request.getParameter("full_name");
String student_roll=request.getParameter("roll_no");
String student_prn=request.getParameter("prn_no");
String student_eligibility=request.getParameter("eligibility_no");
String student_date_of_birth=request.getParameter("date_of_birth");

String student_gender=request.getParameter("gender");
String student_email_id=request.getParameter("email_id");
String student_shift=request.getParameter("shift");
String student_native_place=request.getParameter("native_place");
String student_password=request.getParameter("password");
String student_mobile_no=request.getParameter("contact_no");
String student_live=request.getParameter("live");
String student_dead=request.getParameter("dead");
String ssc_marks=request.getParameter("ssc_marklist");
String hsc_marks=request.getParameter("hsc_marklist");
String semester_1_marks=request.getParameter("semester_1_marklist");
String semester_2_marks=request.getParameter("semester_2_marklist");
String semester_3_marks=request.getParameter("semester_3_marklist");
String semester_4_marks=request.getParameter("semester_4_marklist");
String semester_5_marks=request.getParameter("semester_5_marklist");
String semester_6_marks=request.getParameter("semester_6_marklist");
String aadhar_card=request.getParameter("adharcard");
String photo=request.getParameter("photo");
String diploma=request.getParameter("diploma");
String IMG_diploma=request.getParameter("IMG_diploma");
String IMG_ssc=request.getParameter("IMG_ssc");
String IMG_hsc=request.getParameter("IMG_hsc");
String IMG_extra=request.getParameter("IMG_extra");
String IMG_aadhar=request.getParameter("IMG_aadhar");
String SGPA=request.getParameter("SGPA");
String year=request.getParameter("year");


try
{
	Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/StudentPlacementData", "root", "Viraj@9696");
Statement statement=con.createStatement();

String sql="insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
PreparedStatement executestate=(PreparedStatement) con.prepareStatement(sql);

executestate.setString(1,student_name);
executestate.setString(2,student_roll);
executestate.setString(3,student_prn);
executestate.setString(4,student_eligibility);
executestate.setString(5,student_date_of_birth);
executestate.setString(6,student_gender);
executestate.setString(7,student_email_id);
executestate.setString(8,student_shift);
executestate.setString(9,student_native_place);
executestate.setString(10,student_password);
executestate.setString(11,student_live);
executestate.setString(12,student_dead);
executestate.setString(13,ssc_marks);
executestate.setString(14,hsc_marks);
executestate.setString(15,diploma);
executestate.setString(16,semester_1_marks);
executestate.setString(17,semester_2_marks);
executestate.setString(18,semester_3_marks);
executestate.setString(19,semester_4_marks);
executestate.setString(20,semester_5_marks);
executestate.setString(21,semester_6_marks);
executestate.setString(22,IMG_ssc);
executestate.setString(23,IMG_hsc);
executestate.setString(24,IMG_diploma);
executestate.setString(25,IMG_extra);
executestate.setString(26,IMG_aadhar);
executestate.setString(27,photo);
executestate.setString(28,student_mobile_no);
executestate.setString(29,aadhar_card);
executestate.setString(30,SGPA);
executestate.setString(31,year);

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