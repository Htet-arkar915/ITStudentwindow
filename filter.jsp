<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<html lang="en-US">
<head>
	<meta charset="UTF-8">
	<meta name="keywords" content="it student window, IT Student Window, IT STUDENT WINDOW, Invest in myanmar, finding fund"/>
	<link rel="Shortcut icon" href="logo.png" type="image/png"/>
	<link rel="stylesheet" href="CSS/home.css" />
	<title></title>
	
</head>
<body>
<div class="messagebox"> 
		<div class="messageimage" onclick="showmsg()" ><img src="Image/message.png" alt=" " width="35px" height="33px" /></div>
		
		<div class="message" id="msg">
			<div class="it">
				<img src="Image/logo.png" alt="logo" width="25px" height="25px" class="lmsg">
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

<!---------------------------------------------------------------logo OR title----------------------------------------------------------->
		<div class="head"> 
			<div class="logo"> <img src="Image/logo.png" alt="it students window" width="50px" height="50px"/></div>
			<div class="title"><h1><span class="change">IT STUDENTS</span> WINDOW</h1> </div>
							<div class="signin"> 
			
				<ul>
						<li onclick="document.getElementById('signupfilter').style.display='block'" ><img src="Image/signin.png" alt="gmg"  width="25px" height="25px" class="signinImg"><span class="signinspan">SignIn</li>
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
					
		          
								<li onclick="document.getElementById('loginfilter').style.display='block'"><img src="Image/signin.png" alt="gmg"  width="25px" height="25px" class="signinImg"><span class="signinspan">Login</span></li>
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
					<li><a href="home.html"><img src="Image/home.png" alt="Home" ></img></a></li>
					<li><a href="Html/Posts.jsp"><img src="Image/post.png" alt="Posts"></img></a></li>					
					<li><a href="Html/HowItWork.html" ><img src="Image/HowItWork.png" alt="How It Work" ></img></a></li>
					<li><a href="Html/Guide.html"><img src="Image/guide.png" alt="Guide"  ></img></a></li>
					<li><a href="Html/member.jsp"><img src="Image/members.png" alt="Members List"  ></img></a></li>
					<li><a href="Html/About.html"><img src="Image/aboutus.png" alt="About Us"  ></img> </a></li>
				</ul>
			
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
	</div>
	<div class="clear"></div>
	
	
<!--------------------------------------------------------------Body------------------------------------------------------------>
	<div class="body">

	
	
	
	<div class="filt">Filter By:</div>
	<div class="filterby">
		<ul>
			<li onclick="AllfilterP()" class="Projectdown" ><span id="changeallP" onclick="tempshowP()">Project Type &Delta;</span></li>
			
			<li onclick="AllfilterC()" class="Projectdown" ><span id="changeallC" onclick="tempshowC()">City &Delta;</span></li>
			
			<li onclick="AllfilterA()" class="Projectdown" ><span id="changeallA" onclick="tempshowA()">Invest Amount &Delta;</span></li>   
			
			<li onclick="Allfilter()" class="down"><span id="changeall" onclick="tempshow()"> Filter &OR; </span></li>
			
		</ul>    
		<div class="clear"></div>		
	</div>
	
	
	<form action="filter.jsp" method="post" class="filterform" id="AllfilterP">
		<section>
			<article ><input type="checkbox" value="Website" name="type"/>&nbsp;Web Technology</article>
			<article><input type="checkbox" value="Application" name="type"/>&nbsp;Application</article>
			<article><input type="checkbox" value="Hardware" name="type"/>&nbsp;Hardware</article>
			<article><input type="checkbox" value="Platform" name="type"/>&nbsp;Platform</article>
			<article><input type="checkbox" value="Game" name="type"/>&nbsp;Game</article>
			<article><input type="checkbox" value="Other" name="type"/>&nbsp;Other</article>
		</section>
		<input type="submit" value="Filter" name="btnproject" class="filterbtn"/>
	
	</form>
	<form action="filter.jsp" method="post" class="filterform" id="AllfilterC">	
		<section class="filterScroll">
			<article ><input type="checkbox" value="Yangon" name="city"/>&nbsp;Yangon</article>
			<article><input type="checkbox" value="MORalay" name="city"/>&nbsp;MORalay</article>
			<article><input type="checkbox" value="Meiktila" name="city"/>&nbsp;Meiktila</article>
			<article><input type="checkbox" value="Myitkyina" name="city"/>&nbsp;Myitgyina</article>
			<article><input type="checkbox" value="Taunggyi" name="city"/>&nbsp;Taunggyi</article>
			<article><input type="checkbox" value="Other" name="city"/>&nbsp;Other</article>
		</section>
		<input type="submit" value="Filter" name="btncity" class="filterbtn"/>
	</form>
    <form action="filter.jsp" method="post" class="filterform" id="AllfilterA">	
		<section class="filterScroll">
			<article ><input type="checkbox" value="Five" name="city"/>&nbsp;5,000,000</article>
			<article><input type="checkbox" value="Ten" name="city"/>&nbsp;10,000,000</article>
			<article><input type="checkbox" value="Fifteen" name="city"/>&nbsp;15,000,000</article>
			<article><input type="checkbox" value="Thirty" name="city"/>&nbsp;30,000,000</article>
			<article><input type="checkbox" value="Above" name="city"/>&nbsp;above</article>
		</section>
		<input type="submit" value="Filter" name="btnamount" class="filterbtn"/>
	</form>
		
	<form action="filter.jsp" method="post" class="filterform" id="Allfilter">
		<section>
			<article ><input type="checkbox" value="Website" name="type"/>&nbsp;Web Technology</article>
			<article><input type="checkbox" value="Application" name="type"/>&nbsp;Application</article>
			<article><input type="checkbox" value="Hardware" name="type"/>&nbsp;Hardware</article>
			<article><input type="checkbox" value="Platform" name="type"/>&nbsp;Platform</article>
			<article><input type="checkbox" value="Game" name="type"/>&nbsp;Game</article>
			<article><input type="checkbox" value="Other" name="type"/>&nbsp;Other</article>
		</section>
		<section class="filterScroll">
			<article ><input type="checkbox" value="Yangon" name="city"/>&nbsp;Yangon</article>
			<article><input type="checkbox" value="MORalay" name="city"/>&nbsp;MORalay</article>
			<article><input type="checkbox" value="Meiktila" name="city"/>&nbsp;Meiktila</article>
			<article><input type="checkbox" value="Myitkyina" name="city"/>&nbsp;Myitgyina</article>
			<article><input type="checkbox" value="Taunggyi" name="city"/>&nbsp;Taunggyi</article>
			<article><input type="checkbox" value="Other" name="city"/>&nbsp;Other</article>
		</section>
		<section class="filterScroll">
			<article ><input type="checkbox" value="Five" name="city"/>&nbsp;5,000,000</article>
			<article><input type="checkbox" value="Ten" name="city"/>&nbsp;10,000,000</article>
			<article><input type="checkbox" value="Fifteen" name="city"/>&nbsp;15,000,000</article>
			<article><input type="checkbox" value="Thirty" name="city"/>&nbsp;30,000,000</article>
			<article><input type="checkbox" value="Above" name="city"/>&nbsp;above</article>
		</section>
		<input type="submit" value="Filter" name="btnfilter" class="filterbtn"/>
	</form>
	<div class="clear"></div>
	
	
<div class ="overparent">
	<div class="overchild">
		<form action="DetailFilter.jsp" action="post" class="postNav">
			<button name="btnAll" class="btndetail">All</button>
			<button name="btnEducation" class="btndetail">Education</button>
			<button name="btnHealth" class="btndetail">Health</button>
			<button name="btnAgriculture" class="btndetail">Agriculture</button>
			<button name="btnFood" class="btndetail">Food</button>
			<button name="btnTravel" class="btndetail">Travel</button>
			<button name="btnAgency" class="btndetail">Agency</button>
			<button name="btnShopping" class="btndetail">Shopping</button>
			<button name="btnEntertainment" class="btndetail">Entertainment</button>
			<button name="btnMedia" class="btndetail">Media</button>
			<button name="btnMachinery" class="btndetail">Machinery</button>
			<button name="btnController" class="btndetail">Controller Device</button>
			<button name="btnNetworking" class="btndetail">Networking</button>
			<button name="btnOther" class="btndetail">Other</button>
		</form>
	</div>
</div>
	<div class="clear"></div>
	
<!----------------------------------------------------Ending Body------------------------------------------------>
	<%
	Class.forName("com.mysql.jdbc.Driver");
	java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
	
	String btnfilter=null,btnproject=null,btnamount=null,btncity=null;
	
	btnfilter=request.getParameter("btnfilter");
	btnproject=request.getParameter("btnproject");
	btncity=request.getParameter("btncity");
	btnamount=request.getParameter("btnamount");
	
	String[] projectArr,amountArr,cityArr,projectAllArr,cityAllArr,amountAllArr;
	
	Statement st=con.createStatement();
	ResultSet rs=null,rs1=null;

	String condition="";
	try{

	if(btnfilter!=null){
		condition="";
		
		projectAllArr=request.getParameterValues("projectAll");
		cityAllArr=request.getParameterValues("cityAll");
		amountAllArr=request.getParameterValues("amountAll");
		
		for(int i=0;i< projectAllArr.length;i++){
			condition+="ProjectType = \'"+projectAllArr[i]+"\' OR";
			
		}	
		
		for(int i=0;i< cityAllArr.length;i++){
			condition+="City = \'"+cityAllArr[i]+"\' OR";
		}	
		
		for(int i=0;i< amountAllArr.length;i++){
			condition+="InvestAmount = \'"+amountAllArr[i]+"\' OR";
		}	
		
		rs=st.executeQuery("select ProjectTitle,GroupName,CapitalAmount,SocialImpact,Competitors,ProjectType,CompetitiveAdvCount,MAX(ViewCount) from Project where "+condition.subSequence(0, condition.length()-4));
	
	}else if(btnproject!=null){
		condition="";
		projectArr=request.getParameterValues("type");

		for(int i=0;i< projectArr.length;i++){
			condition+="ProjectType = \'"+projectArr[i]+"\' OR ";
		}	
		
		rs=st.executeQuery("select ProjectTitle,GroupName,CapitalAmount,SocialImpact,Competitors,ProjectType,CompetitiveAdvCount,MAX(ViewCount) from Project where "+condition.subSequence(0, condition.length()-4));
	
	}else if(btnamount!=null){
		condition="";
		
		amountArr=request.getParameterValues("amount");
	
		for(int i=0;i<amountArr.length;i++){
			condition+="InvestAmount=\'"+amountArr[i]+"\' OR";
		}
		
		
		rs=st.executeQuery("select ProjectTitle,GroupName,CapitalAmount,SocialImpact,Competitors,ProjectType,CompetitiveAdvCount,MAX(ViewCount) from Project where "+condition.subSequence(0, condition.length()-4));
	
		
	}else if(btncity!=null){
		condition="";
		
		cityArr=request.getParameterValues("city");
		
		for(int i=0;i<cityArr.length;i++){
			condition+="City=\'"+cityArr[i]+"\' OR";
		}
		//out.println("Condition "+condition);
		rs=st.executeQuery("select ProjectTitle,GroupName,CapitalAmount,SocialImpact,Competitors,ProjectType,CompetitiveAdvCount,MAX(ViewCount) from Project where "+condition.subSequence(0, condition.length()-4));
		
	}
	
	//-------------------------------------------------------------------------
	
		
		//st.executeUpdate("delete from view");
		
	String title,name,social,type,competitor;
int amount,competitiveCount,view;

	while(rs.next()){
		title=rs.getString(1);
		name=rs.getString(2);
		amount=rs.getInt(3);
		social=rs.getString(4);
		competitor=rs.getString(5);
		type=rs.getString(6);
		competitiveCount=rs.getInt(7);
		view=rs.getInt(8);
		
		%>
		
		
		
		
		
		<div class="post"> 

		<div class="leftPost"> 
			<div class="firstPost">
				<div class="top">               			

					<div class="posttitle"><%= title %></div>
					 <div class="viewcountpost">
					 	  <img src="Image/viewcount1.png" alt="Twitter" width="20px" height="12px" class="" />
                  		 <span class="count"><%= view %></span>
                  	 </div>
					</div>
						
				<div class="middle">
						<span class="factmainpost">Group Name : </span><span class="factdetailpost"><%= name %></span><br/>
						<span class="factmainpost">Social Impact : </span><span class="factdetailpost"><%=social %></span><br/>
						<span class="factmainpost">Competitors : </span><span class="factdetailpost"><%=competitor %></span><br/>
						<span class="factmainpost">Competitive Advantage : </span><span class="factdetailpost"><%=competitiveCount %>stage</span><br/>
						<span class="factmainpost">Required Capital  Amount : </span><span class="factdetailpost"><%=amount %></span><br/>
						<span class="factmainpost">Project Type : </span><span class="factdetailpost"><%=amount %> </span><br/>	<br/>
					<input type="submit" value="Detail Info ->" name="btndetail"  class="topbtn" onclick="document.getElementById('detailpost').style.display='block'"/><br/>
				</div>
				
						<div class="detailpostfilter" id="detailpost">
			
	
				<div class='postframe'>
					<div id='invest'></div>
					<div class='postform'>
						<div class='topPost'>
		
							<div class='postTitle'><%=title %></div>

						</div>
						<div class='clear'></div>
						
						<div class='middlepost'>
						<table>
							<tr>
								 <td class="factdetail">Group Name :</td>
								 <td class="fact1detail"><%= name %></td> 
							</tr>
							<tr>
								<td class="factdetail">Social Impact : </td>
								<td class="fact1detail"><%=social %></td>
							</tr>
							<tr>
								<td class="factdetail">Competitors : </td>
								<td class="fact1detail"><%=competitor %></td>
							</tr>
							<tr>
								<td class="factdetail">Competitive Advantage : </td>
								<td class="fact1detail"><%=competitiveCount %> stages</td>
							</tr>
							<tr>
								<td class="factdetail">Required Capital Amount : </td>
								<td class="fact1detail">$<%=amount %></td>
							</tr>
						</table>
						</div>
						
						<div class='bottomPost'>
							<ul>
							    <li class="like"><a href="">Like </a> </li>
								<li class='commentPost' onclick="document.getElementById('commentTextbox').style.display='block'">Comment</li>
								<li class='investPost' onclick='invest()'><a href='Contact.html'>Invest</a></li>
							</ul>
						</div>
					</div>
							
					<div class='scrollbar'>
						<div class='commentBox'>
							<div class='commentPeople'>
								<div class='commentLogo'><img src='Image/logo.png' alt='Circle Image' width='35px' height='35px'/></div>
								<div class='commentName'>Aye Myat Myat Soe</div>
							</div>
							<div class='commenttext'>That is good.</div>
						</div>
						
					</div>
					
					<div class='commentTextbox' id='commentTextbox' >
					<textarea name='commenttext' class='textbox' placeholder="Write a comment..." >

					</textarea>
					<span onclick="document.getElementById('signupfilter').style.display='none'" class="close" title="Close Modal">&#10006;</span>
						<input type='submit' value='Send' name='sendcom' class='sendcomment' />
					</div>
					<div class='clear'></div>
					<input type="submit" onclick="document.getElementById('detailpost').style.display='none'" value="Close" class="hidebtn"/>
				
				</div>
				
				
			</div>
				<div class="clear"></div>
				
			</div>
			<%
			} //end while
			%>
<!----------------------------------------->	
			
		<div class="clear"></div>
		</div>
		
		
		
	<div class="rightPost"> 
		<%
		int n=1;
		String strclass="";
		rs1=st.executeQuery("select ProjectTitle,GroupName,CapitalAmount,SocialImpact,Competitors,ProjectType,CompetitiveAdvCount,ViewCount from Project where "+condition.subSequence(0, condition.length()-4));
		
		
		while(rs1.next()){
			title=rs1.getString(1);
			name=rs1.getString(2);
			amount=rs1.getInt(3);
			social=rs1.getString(4);
			competitor=rs1.getString(5);
			type=rs1.getString(6);
			competitiveCount=rs1.getInt(7);
			view=rs1.getInt(8);
			
			strclass="detailpost"+n;
			n++;
		 %>
	<div class="group">
				<div class="grouptitle1">
					<div class="posttitle1"><%= title %></div>
                   <div class="viewcount">
					 	<img src="Image/viewcount1.png" alt="View Count" width="17px" height="10px" />
                  		<span class="countright"><%=view %></span>
                  	</div>
			    </div>
			   <%if(type.equals("Application")){%>
			    		<img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			    <%}else if(type.equals("Website")){ %>  
			    <img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			    
			    <%}else if(type.equals("Hardware")){ %>  
			    <img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			   
			    <%}else if(type.equals("Game")){ %>  
			    <img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			   
				<%}else if(type.equals("Other")){ %>  
			    <img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			    <%}else{ %>
				    <img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
				    <%} %>
			    	<label for="Group Name" class="gplbl">Group Name:&nbsp;</label><span><%=name %></span> <br />
				<input type="submit" value="Detail Info ->" name="" onclick="document.getElementById('<%=strclass %>').style.display='block'"" class="groupdetail" />
			</div>
		
		
		
		
		
		<div class="detailpostfilter" id="<%=strclass%>">
			
	
				<div class='postframe'>
					<div id='invest'></div>
					<div class='postform'>
						<div class='topPost'>
		
							<div class='postTitle'><%=title %></div>

						</div>
						<div class='clear'></div>
						
						<div class='middlepost'>
						<table>
							<tr>
								 <td class="factdetail">Group Name :</td>
								 <td class="fact1detail"><%= name %></td> 
							</tr>
							<tr>
								<td class="factdetail">Social Impact : </td>
								<td class="fact1detail"><%=social %></td>
							</tr>
							<tr>
								<td class="factdetail">Competitors : </td>
								<td class="fact1detail"><%=competitor %></td>
							</tr>
							<tr>
								<td class="factdetail">Competitive Advantage : </td>
								<td class="fact1detail"><%=competitiveCount %> stages</td>
							</tr>
							<tr>
								<td class="factdetail">Required Capital Amount : </td>
								<td class="fact1detail">$<%=amount %></td>
							</tr>
						</table>
						</div>
						
						<div class='bottomPost'>
							<ul>
							    <li class="like"><a href="">Like </a> </li>
								<li class='commentPost' onclick="document.getElementById('commentTextbox').style.display='block'">Comment</li>
								<li class='investPost' onclick='invest()'><a href='Contact.html'>Invest</a></li>
							</ul>
						</div>
					</div>
							
					<div class='scrollbar'>
						<div class='commentBox'>
							<div class='commentPeople'>
								<div class='commentLogo'><img src='Image/logo.png' alt='Circle Image' width='35px' height='35px'/></div>
								<div class='commentName'>Aye Myat Myat Soe</div>
							</div>
							<div class='commenttext'>That is good.</div>
						</div>
						
					</div>
					
					<div class='commentTextbox' id='commentTextbox' >
					<textarea name='commenttext' class='textbox' placeholder="Write a comment..." >

					</textarea>
					<span onclick="document.getElementById('signupfilter').style.display='none'" class="close" title="Close Modal">&#10006;</span>
						<input type='submit' value='Send' name='sendcom' class='sendcomment' />
					</div>
					<div class='clear'></div>
					<input type="submit" onclick="document.getElementById('<%=strclass %>').style.display='none'" value="Close" class="hidebtn"/>
				
				</div>
				
				
			</div>				
				
		
	<% }//end while
		
		
		%>
	<div class="clear"></div>

	</div>
			
	
<div class="clear"></div>
<%}catch(Exception e){
	out.println(condition.substring(0, condition.length()-4));
}
		
	con.close(); %>

	</div>		
		
	<div class="clear"></div>
	<!----------------------------------------------------------------footer------------------------------------------------------------------>
		<div class="footer"> 
			<hr>
				<center><p class="copyright"><small>copyright &copy; 2018; All right reserved.</small></p></center>
				<div class="foot">
					<ul>
						<li><a href="help.html">Help</a></li>
						<li><a href="termOfUse.html">Term of Use</a></li>
						<li><a href="privacyPolicy.html">Privacy Policy</a></li>
						<li><a href="feedback.html">Feedback</a></li>
					</ul>
					<div id="feed"></div>
				</div>
				
				<div class="contactFrame"> 
					<p class="contactFrame">Contact us:&nbsp;&nbsp;www.itstudentwindow.com<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#9742;&nbsp;&nbsp;
					<a href="tel:09265427138"> 09265427138</a></p>
					<div class="contactImage"> 
						<a href="https://www.facebook.com/profile.php?id=100012164478367"> 
						<img src="Image/facebook.jpg" alt="Facebook" width="20px" height="20px" /></a>
						<img src="Image/twitter.jpg" alt="Twitter" width="20px" height="20px"/>
						<img src="Image/linkedin.jpg" alt="LinkedIn" width="20px" height="20px"/>
						<img src="Image/gmail.png" alt="Gmail" width="20px" height="20px" />
						
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
					<img src="Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">IT STUDETNS WINDOW</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/wow.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">WOW TRAVEL</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/private.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">PRIVATE SCHOOL</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/babycare.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">BABY CARE</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p class="slidetxt">IT STUDENT WINDOW</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p>Slide 6</p>
				</div>
				
				<div class="mySlides2 fadeMsg">
					<img src="Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
					<p>Slide 7</p>
				</div>
									
			</div>
			
			

</div>
	
		
				
			<div class="Ads">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<p>IT STUDENTS WINDOW Ads</p>
			</div>
			
			<div class="ads">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<img src="Image/logo.png" width="50px" height="50px" class="i">
				<p>IT STUDENTS WINDOW Ads</p>
			</div>
			
			
</div>
     <script type="text/javascript" src="JS/slide.js"></script>
	<script type="text/javascript" src="JS/background.js"></script>
	<script type="text/javascript" src="JS/slidepop.js"></script>
	<script type="text/javascript" src="JS/home.js"></script>

		</body>
	</html>