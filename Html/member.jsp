<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="keywords" content="it student window, IT Student Window, IT STUDENT WINDOW, Invest in myanmar, finding fund"/>
	<link rel="Shortcut icon" href="logo.png" type="image/png"/>
	<link rel="stylesheet" href="../CSS/home.css" />
	<title></title>
	
</head>
<body>
<div class="messagebox"> 
		<div class="messageimage" onclick="showmsg()" ><img src="../Image/message.png" alt=" " width="35px" height="33px" /></div>
		
		<div class="message" id="msg">
			<div class="it">
				<img src="../Image/logo.png" alt="logo" width="25px" height="25px" class="lmsg">
				<span class="itsw">IT STUDENTS WINDOW</span>
			</div>
			<div class="msg">
				<div class="r"><span class="receiver">Hello! May I help you!</span></div>
				<div class="s"><span class="sender">Hello!</span></div>
				</div>
			
				
			<div class="sendmsg">
				<input type="text"  id="msg" name="message" placeholder="Ask you konw.?" class="hintmsg">
				<input type="submit" value="Send" class="msgbtn" id="sendmsg" onclick="sendmsg()">
			</div>
		</div>
		<div class="clear"></div>
	</div>
	
		<div class="wrapper">
		<div class="header" id="myheader"> 

<!---------------------------------------------------------------logo and title----------------------------------------------------------->
		<div class="head"> 
			<div class="logo"> <img src="../Image/logo.png" alt="it students window" width="50px" height="50px"/></div>
			<div class="title"><h1><span class="change">IT STUDENTS</span> WINDOW</h1> </div>
						<div class="signin"> 
				
					<ul>
						<li onclick="document.getElementById('signupfilter').style.display='block'" ><img src="../Image/signin.png" alt="gmg"  width="25px" height="25px" class="signinImg"><span class="signinspan">SignIn</li>
							<div class="loginfilter" id="signupfilter">
								<span onclick="document.getElementById('signupfilter').style.display='none'" class="close" title="Close Modal">&#10006;</span>
					
								<div class="signuptype" method="post">
									<input type="submit" value="Creator SignIn" onclick="studentSignUp()" id="studnetSignUp" class="login"/>
									<input type="submit" value="Investor SignIn" onclick="investorSignUp()" id="investorSignUp" class="login"/>
									<input type="submit" value="Member SignIn" onclick="memberSignUp()" id="memberSignUp" class="login"/>
								</div>
								<div id="sign"></div>
								<div id="sign"></div>
								<div id="sign"></div>
							</div>
					
		          
								<li onclick="document.getElementById('loginfilter').style.display='block'"><img src="../Image/signin.png" alt="gmg"  width="25px" height="25px" class="signinImg"><span class="signinspan">Login</span></li>
							    <div class="loginfilter" id="loginfilter" >
								<span onclick="document.getElementById('loginfilter').style.display='none'" class="close" title="Close Modal">&#10006;</span>
						
								<div class="logintype" method="post">
									<input type="submit" value="Creator Login" onclick="studentLogin()" id="studnetlogin" class="login"/>
									<input type="submit" value="Investor Login" onclick="investorLogin()" id="investorLogin" class="login"/>
									<input type="submit" value="Member Login" onclick="memberLogin()" id="memberLogin" class="login"/>
								</div>
								<div id="send"></div>
								<div id="send"></div>
								<div id="send"></div>
							</div>
						
							
			
						
						</ul>
						<div class="clear"></div>
					</div>
			<div class="clear"></div>
		</div>

<!------------------------------------------------------------------navigation bar -------------------------------------------------------->
		<div class="sub"> 
			<div class="nav"> 
				<ul>
					<li><a href="../home.html"><img src="../Image/home.png" alt="Home" ></img></a></li>
					<li><a href="Posts.jsp"><img src="../Image/post.png" alt="Posts" ></img></a></li>					
					<li><a href="HowItWork.html" ><img src="../Image/HowItWork.png" alt="How It Work" ></img></a></li>
					<li><a href="Guide.html"><img src="../Image/guide.png" alt="Guide" ></img></a></li>
					<li><a href="member.jsp"><img src="../Image/members.png" alt="Members List" ></img></a></li>
					<li><a href="About.html"><img src="../Image/aboutus.png" alt="About Us" ></img> </a></li>
				</ul>
			
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	
	
<!-------------------------------------------------------Body--------------------------------------------------------------->
	<div class="body">
	
	<%
	
		Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
		Statement st= con.createStatement();
		ResultSet rs,rs1;
	
		try{
			rs = st.executeQuery("select Name,CompanyName,Email from InvestorSignIn");
			%>
			
		<div class="member">
			<!-------------------------------------------------------------------Member list of investor------------------------------------>
			<div class="titlemember">		
				
				<div class="titleinvest"><i>Investor</i></div>
				<div class="investorMember">
					<div class="scrolleft">
					
			
			<%
			while(rs.next()){
				%>
				<div class="investInfo">
							<ul>
								<li><img src="../Image/investor.png" alt="Name" width="26px" height="25px"  class="icon"/>&nbsp;</li>
								<li>	<label class="memberlable">Name:&nbsp;</label></li>
								<li><div class="memberdata"><%= rs.getString(1) %></div></li>
							</ul><br><br>
										
							<ul>
								<li><img src="../Image/company.png" alt="Company" width="26px" height="25px"  class="icon"/>&nbsp;</li>
								<li><label class="memberlable">Company:&nbsp;</label></li>
								<li><div class="memberdata"><%= rs.getString(2).toUpperCase() %></div></li>
							</ul><br><br>
												
							<ul>
								<li><img src="../Image/gmail.png" alt="Email" width="26px" height="25px"  class="icon"/>&nbsp;</li>
								<li>	<label class="memberlable">Email:&nbsp;</label></li>
								<li><div class="memberdata"><%= rs.getString(3) %></div></li>
							<ul>
						</div>
				<%
			}
			
			%>
			
					
					</div>	
				</div>
	
			</div>	
					
<!----------------------------------------------------------------------Member list of Student------------------------------------>
			<div class="titlein">	
				<div class="titlecreater"><i>Creator</i></div>
				
				<div class="studentMember">
					<div class="scrolleft">
				
			<%
			
			rs1 = st.executeQuery("select GroupName,City from CreatorSignIn");
			while(rs1.next()){
				%>
				<div class="memberInfo">
						 
							<ul>
								<li><img src="../Image/group.png" alt="Group" width="35px" height="40px"  class="icon"/>&nbsp;</li>
								<li>	<label class="memberlable">Group Name:&nbsp;</label></li>
								<li><div class="memberdata"><%= rs1.getString(1) %></div></li>
							</ul><br><br><br>
							<ul>
							 <li><img src="../Image/location.png" alt="Address" width="26px" height="25px"  class="icon"/>&nbsp;</li>
								<li>	<label class="memberlable">Address:&nbsp;</label></li>
								<li><div class="memberdata"><%= rs1.getString(2) %></div></li>
		
							</ul>
						</div>
	
				<%
			}
		}catch(Exception e){
			out.println(e);
		}finally{
			con.close();
		}
	%>
	
					
						
		
						
			</div>
	</div>
	</div>
		</div>

<!----------------------------------------------------------------footer------------------------------------------------------------------>
		<div class="footer"> 
			<hr>
				<center><p class="copyright"><small>copyright &copy; 2018; All right reserved.</small></p></center>
				<div class="foot">
					<ul>
						<li><a href="help.html">Help</a></li>
						<li><a href="termOfUse.html">Term of Use</a></li>
						<li><a href="privacyPolicy.html">Privacy Policy</a></li>
						<li onclick="" ><a href="feedback.html">Feedback</a></li>
					</ul>
					<div id="feed"></div>
				</div>
				
				<div class="contactFrame"> 
					<p class="contactFrame">Contact us:&nbsp;&nbsp;www.itstudentwindow.com<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9742;&nbsp;&nbsp;
					<a href="tel:09265427138"> 09265427138</a></p>
					<div class="contactImage"> 
						<a href="https://www.facebook.com/profile.php?id=100012164478367"> 
						<img src="../Image/facebook.jpg" alt="Facebook" width="20px" height="20px" /></a>
						<img src="../Image/twitter.jpg" alt="Twitter" width="20px" height="20px"/>
						<img src="../Image/linkedin.jpg" alt="LinkedIn" width="20px" height="20px"/>
						<img src="../Image/gmail.png" alt="Gmail" width="20px" height="20px" />
						
					</div>
					<div class="clear"></div>
				</div>
		</div>
</div>
</div>
	
<!---------------------------------------------------------------------------------------popular app-------------------------------------------------------->
	<div class="popularcover">
	<div class="popularapp"> 
	

			<div class="slideshow-container1">
				
					<div class="popularfive" id="five"> 
						Top 10 Popular App
					</div>	
			
			</div>
			
	
			<div class="popularfull">

				<div class="mySlides2 fadeMsg">
					<img src="../Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">IT STUDETNS WINDOW</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/wow.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">WOW TRAVEL</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/private.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">PRIVATE SCHOOL</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/babycare.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">BABY CARE</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">IT STUDENT WINDOW</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p>Slide 6</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="../Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p>Slide 7</p>
				</div>
									
			</div>
			
			

</div>
	
		
				
			<div class="Ads">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<p>IT STUDENTS WINDOW Ads</p>
			</div>
			
			<div class="ads">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<img src="../Image/logo.png" width="50px" height="50px" class="i">
				<p>IT STUDENTS WINDOW Ads</p>
			</div>
			
			
</div>
     <script type="text/javascript" src="../JS/slide.js"></script>
	<script type="text/javascript" src="./JS/background.js"></script>
	<script type="text/javascript" src="../JS/slidepop.js"></script>
	<script type="text/javascript" src="../JS/home.js"></script>

		</body>
	</html>