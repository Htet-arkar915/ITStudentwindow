<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/home.css" />
</head>
<body>

<%

Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ITStudentWindow","root","root");
Statement st= con.createStatement();

String projecttitle,groupname,marketsize,targetcustomer,location,
mission,objective,socialimpact,innovation,competitors,competitiveAdv,keyfeed,projectType;

int advCount,capital;
int count;

projecttitle=request.getParameter("projectTitle");
groupname=request.getParameter("groupName");
marketsize=request.getParameter("marketSize");
targetcustomer=request.getParameter("targetCustomer");
mission=request.getParameter("missionVision");
capital=Integer.parseInt(request.getParameter("requiredAmount"));
objective=request.getParameter("objective");
socialimpact=request.getParameter("socialImpact");
innovation=request.getParameter("innovation");
competitors=request.getParameter("competitors");
competitiveAdv=request.getParameter("competitiveAdvantage");
keyfeed=request.getParameter("keyFeed");
projectType=request.getParameter("projecttype");
location=request.getParameter("location");
advCount=1;

count=1;
st.executeUpdate("insert into Project values(\'"+projecttitle+"\',\'"+groupname+"\',\'"+marketsize+"\',\'"+targetcustomer+"\',\'"+mission+"\',"+capital+",\'"+objective+"\',\'"+socialimpact+"\',\'"+innovation+"\',\'"+competitors+"\',\'"+competitiveAdv+"\',\'"+keyfeed+"\',\'"+projectType+"\',"+advCount+","+count+",\'"+location+"\')");
//out.println("Inserted");
/* 
ArrayList<String> ProjectTitle=null,GroupName=null,SocialImpact=null,Competitors=null,ProjectType=null;
ArrayList<Integer> amount=null,competitiveAdvCount=null,ViewCount=null;

ProjectTitle=(ArrayList<String>)session.getAttribute("ProjectTitleSession");
GroupName=(ArrayList<String>)session.getAttribute("GroupNameSession");
SocialImpact=(ArrayList<String>)session.getAttribute("SocialImpactSession");
Competitors=(ArrayList<String>)session.getAttribute("CompetitorsSession");
ProjectType=(ArrayList<String>)session.getAttribute("ProjectTypeSession");
amount=(ArrayList<Integer>)session.getAttribute("amountSession");
competitiveAdvCount=(ArrayList<Integer>)session.getAttribute("competitiveAdvCountSession");
ViewCount=(ArrayList<Integer>)session.getAttribute("ViewCountSession");

if(ProjectTitle==null){
	out.println(ProjectTitle+" Null Project <br>");
	ProjectTitle=new ArrayList<String>();
	GroupName=new ArrayList<String>();
	SocialImpact=new ArrayList<String>();
	Competitors=new ArrayList<String>();
	ProjectType=new ArrayList<String>();
	amount=new ArrayList<Integer>();
	competitiveAdvCount=new ArrayList<Integer>();
	ViewCount=new ArrayList<Integer>();	
}

ProjectTitle=(ArrayList<String>)session.getAttribute("ProjectTitleSession");
GroupName=(ArrayList<String>)session.getAttribute("GroupNameSession");
SocialImpact=(ArrayList<String>)session.getAttribute("SocialImpactSession");
Competitors=(ArrayList<String>)session.getAttribute("CompetitorsSession");
ProjectType=(ArrayList<String>)session.getAttribute("ProjectTypeSession");
amount=(ArrayList<Integer>)session.getAttribute("amountSession");
competitiveAdvCount=(ArrayList<Integer>)session.getAttribute("competitiveAdvCountSession");
ViewCount=(ArrayList<Integer>)session.getAttribute("ViewCountSession");

//out.println(ProjectTitle+"After ProjectTitle<br>");
ProjectTitle.add(projecttitle);
GroupName.add(groupname);
SocialImpact.add(socialimpact);
Competitors.add(competitors);
ProjectType.add(projectType);
amount.add(capital);
competitiveAdvCount.add(advCount);
ViewCount.add(count);
//out.println(ViewCount+ " alkdhgp");

session.setAttribute("ProjectTitleSession",ProjectTitle);
session.setAttribute("GroupNameSession",GroupName);
session.setAttribute("SocialImpactSession",SocialImpact);
session.setAttribute("CompetitorsSession",Competitors);
session.setAttribute("ProjectTypeSession",ProjectType);
session.setAttribute("amountSession",amount);
session.setAttribute("competitiveAdvCountSession",competitiveAdvCount);
session.setAttribute("ViewCountSession",ViewCount);

//out.println(session.getAttribute("ViewCountSession")+" ViewCount");
 */
st.close();
con.close();

%>
<jsp:forward page="home.html"></jsp:forward>
<script type="text/javascript" src="JS/background.js"></script>
	<script type="text/javascript" src="JS/home.js"></script>

		
</body>
</html>