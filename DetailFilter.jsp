<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.util.ArrayList"%>
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

<% 
	int sessionCount=9;
int n=1;
int temp=0;

ArrayList<String> str=null;
	for(int i=0;i<sessionCount;i++){
		String btn="btn"+n;
		btn=request.getParameter("btnDetail"+n);
		
		if(!btn.equals("null") || !btn.equals("")){
			temp=n;break;
		}
		n++;
	}
	
//	out.println(str.get(temp));
	
%>



<div class="wrap">
	<div class="messagebox"> 
		<div class="messageimage"><img src="Image/logo.png" alt="Message Box" width="40px" height="40px" /></div>
		<div class="message"></div>
	</div>
	<div class="wrapper">
	<div class="header" id="myheader"> 
<!---------------------------------------------------------------logo and title----------------------------------------------------------->
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
			
			<li onclick="Allfilter()" class="down"><span id="changeall" onclick="tempshow()"> Filter &and; </span></li>
			
		</ul>    
		<div class="clear"></div>		
	</div>
	
	
	<form action="filter.jsp" method="post" class="filterform" id="AllfilterP">
		<section>
			<article ><input type="checkbox" value="web" name="type"/>&nbsp;Web Technology</article>
			<article><input type="checkbox" value="application" name="type"/>&nbsp;Application</article>
			<article><input type="checkbox" value="hardware" name="type"/>&nbsp;Hardware</article>
			<article><input type="checkbox" value="game" name="type"/>&nbsp;Game</article>
			<article><input type="checkbox" value="other" name="type"/>&nbsp;Other</article>
		</section>
		<input type="submit" value="Filter" name="btnproject" class="filterbtn"/>
	
	</form>
	<form action="filter.jsp" method="post" class="filterform" id="AllfilterC">	
		<section class="filterScroll">
			<article ><input type="checkbox" value="yangon" name="city"/>&nbsp;Yangon</article>
			<article><input type="checkbox" value="mandalay" name="city"/>&nbsp;Mandalay</article>
			<article><input type="checkbox" value="meiktila" name="city"/>&nbsp;Meiktila</article>
			<article><input type="checkbox" value="naypyitaw" name="city"/>&nbsp;Myitgyina</article>
			<article><input type="checkbox" value="other" name="city"/>&nbsp;Other</article>
		</section>
		<input type="submit" value="Filter" name="btncity" class="filterbtn"/>
	</form>
    <form action="filter.jsp" method="post" class="filterform" id="AllfilterA">	
		<section class="filterScroll">
			<article ><input type="checkbox" value="5000000" name="city"/>&nbsp;5,000,000</article>
			<article><input type="checkbox" value="10000000" name="city"/>&nbsp;10,000,000</article>
			<article><input type="checkbox" value="15000000" name="city"/>&nbsp;15,000,000</article>
			<article><input type="checkbox" value="30000000" name="city"/>&nbsp;30,000,000</article>
			<article><input type="checkbox" value="above" name="city"/>&nbsp;above</article>
		</section>
		<input type="submit" value="Filter" name="btnamount" class="filterbtn"/>
	</form>
		
	<form action="filter.jsp" method="post" class="filterform" id="Allfilter">
		<section>
			<article><input type="checkbox" value="web" name="type"/>&nbsp;Web Technology</article>
			<article><input type="checkbox" value="application" name="type"/>&nbsp;Application</article>
			<article><input type="checkbox" value="hardware" name="type"/>&nbsp;Hardware</article>
			<article><input type="checkbox" value="hardware" name="type"/>&nbsp;Game</article>
			<article><input type="checkbox" value="typeother" name="type"/>&nbsp;Other</article>
		</section>
		<section class="filterScroll">
			<article ><input type="checkbox" value="yangon" name="city"/>&nbsp;Yangon</article>
			<article><input type="checkbox" value="mandalay" name="city"/>&nbsp;Mandalay</article>
			<article><input type="checkbox" value="meiktila" name="city"/>&nbsp;Meiktila</article>
			<article><input type="checkbox" value="naypyitaw" name="city"/>&nbsp;Myitgyina</article>
			<article><input type="checkbox" value="cityother" name="city"/>&nbsp;Other</article>
		</section>
		<section class="filterScroll">
			<article ><input type="checkbox" value="one" name="city"/>&nbsp;5,000,000</article>
			<article><input type="checkbox" value="two" name="city"/>&nbsp;10,000,000</article>
			<article><input type="checkbox" value="three" name="city"/>&nbsp;15,000,000</article>
			<article><input type="checkbox" value="four" name="city"/>&nbsp;30,000,000</article>
			<article><input type="checkbox" value="amountother" name="city"/>&nbsp;above</article>
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
	
	
	%>
			
			<div class="post"> 

		<div class="leftPost"> 
			<div class="firstPost">
				<div class="top">               			

					<div class="posttitle">IT STUDENTS WINDOW</div>
					 <div class="viewcountpost">
					 	  <img src="Image/viewcount1.png" alt="Twitter" width="20px" height="12px" class="" />
                  		 <span class="count">2</span>
                  	 </div>
					</div>
						
				<div class="middle">
						<span class="factmainpost">Group Name : </span><span class="factdetailpost">IT STUDETNS WINDOW</span><br/>
						<span class="factmainpost">Social Impact : </span><span class="factdetailpost"></span><br/>
						<span class="factmainpost">Competitors : </span><span class="factdetailpost">No competition</span><br/>
						<span class="factmainpost">Competiton Advantage : </span><span class="factdetailpost">3 stage</span><br/>
						<span class="factmainpost">Required Capital  Amount : </span><span class="factdetailpost">200,000</span><br/>
						<span class="factmainpost">Project Type : </span><span class="factdetailpost">Application</span><br/>	<br/>
					<input type="submit" value="Detail Info ->" name="btndetail"  class="topbtn" onclick="document.getElementById('detailpost').style.display='block'"/><br/>
				</div>
				
				
				<div class="clear"></div>
				
			</div>
<!----------------------------------------->	
			
		<div class="clear"></div>
		</div>
		
		<div class="rightPost"> 
		
<%int count=1; %>
		<form class="group" action="DetailFilter.jsp" method="post">
					
<%
String btndetail="btnDetail"+count;
count++;
%>
				<div class="grouptitle1">
					<div class="posttitle1">IT STUDETNS WINDOW</div>
                   <div class="viewcount">
					 	<img src="Image/viewcount1.png" alt="View Count" width="17px" height="10px" />
                  		<span class="countright">1</span>
                  	</div>
			    </div>
			  
			    		<img src="Image/app1.jpg" alt="Circle Image" width="120px" height="120px" class="groupimg"/><br />
			    	
				
				<label for="Group Name" class="gplbl">Group Name:&nbsp;</label><span>MovingStars</span> <br />
				<input type="submit" value="Detail Info ->" name="<%= btndetail %>" onclick="document.getElementById('detailpost').style.display='block'"" class="groupdetail" />
			</form>
		
	
		
			
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
	<div class="popularapp"> 
		<div class="popular"> 
			<div class="popu"><img src="Image/logo.png" alt="First Popular" width="35px" height="35px" class="pop"/></div>
			<div class="popu"><img src="Image/logo.png" alt="Second Popular" width="35px" height="35px" class="pop"/></div>
			<div  class="popu"><img src="Image/logo.png" alt="Third Popular" width="35px" height="35px" class="pop"/></div>
			<div  class="popu"><img src="Image/logo.png" alt="Fouth Popular" width="35px" height="35px" class="pop"/></div>
			<div class="popu"><img src="Image/logo.png" alt="Fifth Popular" width="35px" height="35px" class="pop"/></div>
		</div>	
		<div class="clear"></div>
		<div class="popularfull"><img src="Image/logo.png" alt="Popular" width="150px" height="150px" class="pop"/> 
			<p>IT STUDENTS WINDOW</p>
		</div>
	</div>
	
	
	
</div>
<script type="text/javascript" src="JS/home.js"></script>

	</body>
</html>