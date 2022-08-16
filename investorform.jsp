<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
Statement st= con.createStatement();
String fname = request.getParameter("fname");
String lname = request.getParameter("lname");
String phone = request.getParameter("companyphone");
String companyname = request.getParameter("companyname");

String email = request.getParameter("email");
String confirmemail=request.getParameter("confirmemail");
String password = request.getParameter("password");
String comfirmpassword = request.getParameter("confirmpassword");
String industrytype = (String)request.getParameter("industrytype");
String investortype = (String)request.getParameter("invenstortype");
String state = (String)request.getParameter("state");
String city = (String)request.getParameter("location");
String companywebsite = (String)request.getParameter("website");
String yearfounded =(String) request.getParameter("foundedyear");
String facebook = request.getParameter("facebook");
String twitter = request.getParameter("twitter");
String linkedin = request.getParameter("linkedin");

String name = fname+" "+lname;

out.println(name+" "+phone+" "+companyname+" "+email+" "+confirmemail+" "+password+" "+comfirmpassword+" "+industrytype+" "+investortype+" "+state+" "+city+" "+companywebsite+" "+yearfounded+" "+facebook+" "+twitter+" "+linkedin);
if ( password.equals(comfirmpassword)){
      st.executeUpdate("insert into InvestorSignIn values(\'"+name+"\',\'"+companyname+"\',\'"+phone+"\',\'"+email+"\',\'"+password+"\',\'"+yearfounded+"\',\'"+industrytype+"\',\'"+investortype+"\',\'"+state+"\',\'"+city+"\',\'"+companywebsite+"\',\'"+facebook+"\',\'"+twitter+"\',\'"+linkedin+"\')");
}
else{
	out.println("Error");
}
st.close();
con.close();

%>
<jsp:forward page="home.html"></jsp:forward>
</body>
</html>