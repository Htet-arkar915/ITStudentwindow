<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/home.css" />
</head>
<body>
<jsp:include page="Html/header.html"></jsp:include>	
<%

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
try{
	PreparedStatement pstm=null;
	pstm=con.prepareStatement("select * from view");
	ResultSet rs=null;
	rs=pstm.executeQuery();
	%>
	
	
		<div class="leftPost"> 
			<div class="firstPost">
				<div class="top">               			
					<div class="circleimage"> <img src="../Image/logo.png" alt="Circle Image" width="35px" height="35px"/></div>
					<div class="posttitle">IT STUDNETS WINDOW</div>
				</div>
					
				<div class="middle">
							<div class="f"><span>Group Name : </span><span>IT STUDENTS WINDOW</span><br/></div>
							<div class="f"><span>Social Impact : </span><span> Can contact with investor and student </span></div> 
							<div class="f"><span>Competitors : </span><span>No competition</span></div>
							<div class="f"><span>Competitive Advantage : </span><span>3 stage</span></div>
							<div class="f"><span>Required Capital  Amount : </span><span>200,000</span></div>	
					<input type="submit" value="Detail Info ->" name="popular"  class="topbtn" onclick="document.getElementById('detailpost').style.display='block'"/><br/>
				</div>
				
				
				<div class="clear"></div>
				<div class="bottom">
					<ul >
						<li class="like">Like</li>
						<li class="slash">/</li>
						<li class="comment">Comment</li>
						<li class="slash">/</li>
						<li class="invest">Invest</li>
					</ul>
				</div>
			</div>
			
		<div class="clear"></div>
		</div>
		
	
	
	
		<div class="rightPost"> 
		<%
	while(rs.next()){
		
		%>
		
		
		
			<div class="group">
				<div class="grouptitle1">
					<div class="posttitle1"><%=rs.getString("ProjectTitle") %></div>
                     <img src="../Image/viewcount.png" alt="Twitter" width="25px" height="15px"  />
                    <span class="count">13</span>
			        </div>
				<img src="<%=rs.getString("Logo")%>" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
				<label for="Group Name">Group Name:&nbsp;</label><span><%=rs.getString("GroupName") %></span> <br />
				<input type="submit" value="Detail Info ->" name="btnDetail" onclick="document.getElementById('detailpost').style.display='block'" class="groupdetail" />
			</div>
			
			
			
		<%
	}
	
}catch(Exception e){
	out.println(e);
}
%></div>
<div class="clear"></div>
<jsp:include page="Html/footer.html"></jsp:include>		
	<script type="text/javascript" src="JS/background.js"></script>
	<script type="text/javascript" src="JS/home.js"></script>

		
</body>
</html>