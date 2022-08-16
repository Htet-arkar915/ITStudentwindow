<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
Statement st= con.createStatement();
ResultSet rs;
String email = request.getParameter("email");
String password = request.getParameter("password");
rs = st.executeQuery("select Email,Password from InvestorSignIn");
while(rs.next()){
	if(email.equals(rs.getString(0)) && password.equals(rs.getString(1))){
		
				rs= st.executeQuery("select Name,CompanyName,InvestEmail from InvestorSignIn where (Email.equals(email) && Password.equals(password))");
				String name =rs.getString(0);
				String companyname = rs.getString(1);
				String investemail = rs.getString(2);
				String investamount ="500000";
				String projectname = "IT Student Window";
				String projectemail = "itstudentwindow2018@gamil.com";
				String groupname = "EIWAHWINN";
				
				st.executeUpdate("insert into InvestRecord values (\'"+name+"\',\'"+companyname+"\',\'"+investemail+"\',\'"+investamount+"\',\'"+projectname+"\',\'"+projectemail+"\',\'"+groupname+"\')");
				
				%><jsp:include page="home.html"></jsp:include>
				<%
	}
	else{
		
	}
}
st.close();
con.close();

%>