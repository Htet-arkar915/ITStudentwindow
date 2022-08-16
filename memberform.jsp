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
String confirmemail = request.getParameter("confirmemail");
String password = request.getParameter("password");
String confirmpassword = request.getParameter("confirmpassword");
//out.println(email+"  "+confirmemail +"   "+password+"     "+confirmpassword);
String name = fname+" "+lname;
out.println("ITStudentWindow");
if ( password.equals(confirmpassword) && email.equals(confirmemail)){
      st.executeUpdate("insert into MemberSignIn values(\'"+name+"\',\'"+email+"\',\'"+password+"\')");
      
}
else{
	
	out.println("error");
}
st.close();
con.close();

%>

<jsp:forward page="home.html"></jsp:forward>

</body>
</html>