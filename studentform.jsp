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
String email = request.getParameter("email");
String comfirmemail = request.getParameter("confirmemail");
String password = request.getParameter("password");
String comfirmpassword = request.getParameter("confirmpassword");
String groupname = request.getParameter("groupname");
String city = request.getParameter("city");
String phone = request.getParameter("phone");
String secondaryphone = request.getParameter("sphone");
String name = fname+" "+lname;
if ( password.equals(comfirmpassword)){
      st.executeUpdate("insert into CreatorSignIn values(\'"+name+"\',\'"+email+"\',\'"+
password+"\',\'"+groupname+"\',\'"+city+"\',\'"+phone+"\',\'"+secondaryphone+"\')");
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