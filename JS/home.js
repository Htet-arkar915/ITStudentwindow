
var msg=true;

function showmsg(){
	//alert("ok");
	if(msg){
		document.getElementById('msg').style.display='none';
		msg=false;
	}else{
		document.getElementById('msg').style.display='block';
		msg=true;
	}
}

function sendmsg(){
	
}

/*----------------------------------Popular------------------------------------------*/


/*------------------------------------------Login-----------------------------------------------------------------------------------*/

function studentLogin(){
	document.getElementById('send').innerHTML="<div class='borderLogin'><h3 class='feedbackheader'>Creator Login</h3><form action='studentloginform.jsp' method='post'> <table><tr><td><label for='email' class='lable'>Email&nbsp;</label></td><td><input type='email' class='hintSL' name='email' required /><br /></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' class='hintSL' name='password' required /><br /></td></tr></table><input type='reset' name='btnSCancel' class='btnSL' value='Cancel' onclick='showLogin()'/><input type='submit' name='btnSLogin' class='btnSL' value='Login' onclick='hideLogin()' /></form></div>";
}

function investorLogin(){
	document.getElementById("send").innerHTML="<div class='borderLogin'><h3 class='feedbackheader'>Investor Login</h3><form action='investorloginform.jsp' method='post'> <table><tr><td><label for='email' class='lable'>Email&nbsp;:</label></td><td><input type='email' class='hintSL' name='email' required /><br /></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' class='hintSL' name='password' required /><br /></td></tr></table><input type='submit' name='btnICancel' class='btnSL' value='Cancel'  onclick='showLogin()'/><input type='submit' name='btnILogin' class='btnSL' value='Login' onclick='hideLogin()' /></form></div>";
}
function memberLogin(){
	document.getElementById("send").innerHTML="<div class='borderLogin'><h3 class='feedbackheader'>Member Login</h3><form action='investorloginform.jsp' method='post'> <table><tr><td><label for='email' class='lable'>Email&nbsp;:</label></td><td><input type='email' class='hintSL' name='email' required /><br /></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' class='hintSL' name='password' required /><br /></td></tr></table><input type='submit' name='btnMCancel' class='btnSL' value='Cancel'  onclick='showLogin()'/><input type='submit' name='btnMLogin' class='btnSL' value='Login' onclick='hideLogin()' /></form></div>";
}


function hideLogin(){
	
}

function showLogin(){
	document.getElementById('send').innerHTML="";
	document.getElementById('loginfilter').style.display='none';
}
/*------------------------------------------Sign Up-----------------------------------------------------------------------------------*/
function studentSignUp(){
	document.getElementById("sign").innerHTML="<div class='borderstudent'><h3 class='feedbackheader'>Creator SignIn</h3><form action='studentform.jsp' method='post'><table><tr><td><label for='fname' class='lable'>First Name&nbsp;:</label></td><td><input type='text' class='hintS' name='fname' placeholder='Enter first name...' required/></td></tr><td><label for='lname' class='lable'>Last Name&nbsp;:</label></td><td><input type='text' class='hintS' name='lname' placeholder='Enter last name...' required/></td></tr><tr><td><label for='email' class='lable'>Email&nbsp;:</label></td><td><input type='email' class='hintS' name='email' placeholder='sample@gamil.com' required/></td></tr><tr><td><label for='confrimemail' class='lable'>Confrim Email&nbsp;:</label></td><td><input type='email' class='hintS' name='confirmeamil' placeholder='re-enter confirm email...' required/></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' class='hintS' name='password' placeholder='at least 8 or more character...' required/></td></tr><tr><td><label for='confrimpassword' class='lable'>Confrim Password&nbsp;:</label></td><td><input type='password' class='hintS' name='confirmpassword' placeholder='re-enter confirm password...' required/></td></tr><tr><td><label for='groupname' class='lable'>Group Name&nbsp;:</label></td><td><input type='text' class='hintS' name='groupname' placeholder='Enter group name...' required/></td></tr><td><label for='city' class='lable'>City&nbsp;:</label></td><td><input type='text' class='hintS' name='city' placeholder='Enter city name...' required/></td></tr><tr><td><label for='phone' class='lable'>Phone Number &nbsp;:</label></td><td><input type='phone' class='hintS' name='phone' placeholder='Enter phone number...' required/></td></tr><tr><td><label for='sphone' class='lable'>SecondaryPhone Number &nbsp;:</label></td><td><input type='phone' class='hintS' name='sphone' placeholder='Enter secondphone number...' required/></td></tr></table><input type='submit' name='btnSCancel' class='btnSL' value='Cancel' onclick='showSignUp()' /><input type='submit' name='btnSSign' class='btnSL' value='SignIn' onclick='hideSignUp()' /></form></div>";
	}
function investorSignUp(){

document.getElementById("sign").innerHTML="<div class='borderInvestor'><h3 class='feedbackheader'>Investor SignIn</h3><form action='investorform.jsp' method='post'><table><tr><td><label for='fname' class='lable'>First Name&nbsp; :</label></td><td><input type='text' name='fname' class='hintI' placeholder='Enter first name... ' required/></td><td><label for='name' class='lable'>Last Name&nbsp; :</label></td><td><input type='text' name='lname' class='hintI' placeholder='Enter last name... ' required/></td></tr><tr><td><label for='companyphone' class='lable'>Company Phone</label></td><td><input type='phone' name='companyphone' class='hintI' placeholder='Enter company phone...' required/></td><td><label for='companyname' class='lable'>Company Name&nbsp;:</label></td><td><input type='text' name='companyname' class='hintI' placeholder='Enter Company name... ' required/></td></tr><tr><td><label for='email' class='lable'>Email Address&nbsp;:</label></td><td><input type='email' name='email' class='hintI' placeholder='Enter email address...' required/></td><td><label for='confirmemail' class='lable'>Confrim Email&nbsp;:</label></td><td><input type='email' name='confirmemail' class='hintI'  placeholder='re-enter email' required/></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' name='password' class=' hintI' placeholder='at leat 8 or more character' required /></td><td><label for='confirmpassword' class='lable'>Confrim Password&nbsp;:</label></td><td><input type='password' name='confirmpassword' class='hintI'  placeholder='re-enter password' required/></td></tr><tr><td><label for='industry' class='lable'>Industry Type&nbsp;:</label></td><td><select name='industrytype' class='op'><option value='design'>Design</option><option value='agricultuer'>Agriculture</option><option value='hardware'>Hardware</option><option value='software'>Software</option><option value='food'>Food Service</option><option value='entertainment'>Entertainment</option><option value='banking'>Banking</option><option value='government'>Government</option> <option value='internet'>Internet</option> <option value='media'>Media</option><option value='transporation'>Transporation</option><option value='other'>Other...</option></select></td><td><label for='investortype' class='lable'>Investor Type&nbsp;:</label></td><td><select name='invenstortype' class='op'> <option value='angel'>Angel</option><option value='bank'>Bank</option><option value='lender'>Lender</option><option value='investmentbanker'>Investment Banker</option></select></td></tr> <tr> <td><label for='state' class='lable'>State&nbsp;:</label></td><td><select name='state' class='op'><option value='yangon'>Yangon</option><option value='mandalay'>Mandalay</option><option value='sagaing'>Sagaing</option><option value='bago'>Bago</option><option value='magwae'>Magwae</option><option value='shan'>Shan</option><option value='chin'>Chin</option><option value='kayin'>Kayin</option><option value='kachin'>Kachin</option><option value='rakhine'>Rakhine</option><option value='ayeyarwaddy'>Ayeyarwaddy</option><option value='mon'>Mon</option><option value='tanintharyi'>Tanintharyi</option><option value='kayin'>Kayin</option></select></td><td><label for='location' class='lable'>Company Location&nbsp;:</label></td><td><input type='text' name='location' class='hintI' placeholder='Enter company location...' required/></td></tr><tr><td><label for='website' class='lable'>Company Website&nbsp;:</label></td><td><input type='text' name='website' class='hintI' placeholder='www.sample.com' required/></td ><td><label for='founded' class='lable'>Year Founded</label></td><td><select name='foundedyear' class='op'><option value='2018'>2018</option><option value='2017'>2017</option><option value='2016'>2016</option><option value='2015'>2015</option><option value='2014'>2014</option><option value='2013'>2013</option><option value='2012'>2012</option><option value='2011'>2011</option><option value='2010'>2010</option><option value='2009'>2009</option><option value='2008'>2008</option><option value='2007'>2007</option><option value='2006'>2006</option><option value='2005'>2005</option><option value='2004'>2004</option><option value='2003'>2003</option><option value='2002'>2002</option><option value='2001'>2001</option><option value='2000'>2000</option><option value='1999'>1999</option><option value='1998'>1998</option><option value='1997'>1997</option><option value='1996'>1996</option><option value='1995'>1995</option><option value='1994'>1994</option></select></td>     </tr><tr><td><label for='facebook' class='lable'>Facebook Usename&nbsp;:</label></td><td><input type='text' name='facebook' class='hintI' placeholder='Mg Mg (Sample)' required/></td><td><label for='twitter' class='lable'>Twitter Usename&nbsp;:</label></td><td><input type='text' name='twitter' class='hintI'/></td></tr><tr><td><label for='linkedin' class='lable'>LinkedIn Username&nbsp;:</label></td><td><input type='text' name='linkedin' class='hintI'/></td></tr></table><input type='submit' name='btnICancel' class='btnSLW' value='Cancel' onclick='showSignUp()' /><input type='submit' name='btnISign' class='btnSLl' value='SignIn' onclick='hideSignUp()'/> </form></div>";

} 
 function memberSignUp(){
		document.getElementById("sign").innerHTML="<div class='bordermember'><h3 class='feedbackheader'>Member SignIn</h3><form action='memberform.jsp' method='post'><table><tr><td><label for='fname' class='lable'>First Name&nbsp;:</label></td><td><input type='text' class='hintS' name='fname' placeholder='Enter first name...' required/></td></tr><tr><td><label for='lname' class='lable'>Last Name&nbsp;:</label></td><td><input type='text' class='hintS' name='lname' placeholder='Enter last name...' required/></td></tr><tr><td><label for='email' class='lable'>Email&nbsp;:</label></td><td><input type='email' class='hintS' name='email' placeholder='sample@gamil.com' required/></td></tr><tr><td><label for='confrimemail' class='lable'>Confrim Email&nbsp;:</label></td><td><input type='email' class='hintS' name='confirmemail' placeholder='re-enter confirm email...' required/></td></tr><tr><td><label for='password' class='lable'>Password&nbsp;:</label></td><td><input type='password' class='hintS' name='password' placeholder='at least 8 or more character...' required/></td></tr><tr><td><label for='confrimpassword' class='lable'>Confrim Password&nbsp;:</label></td><td><input type='password' class='hintS' name='confirmpassword' placeholder='re-enter confirm password...' required/></td></tr></table><input type='submit' name='btnSCancel' class='btnSL' value='Cancel' onclick='showSignUp()' /><input type='submit' name='btnSSign' class='btnSL' value='SignIn' onclick='hideSignUp()' /></form></div>";
}


function hideSignUp(){
	
}

function showSignUp(){
	document.getElementById('sign').innerHTML=""; 
	document.getElementById('signupfilter').style.display='none';
}
/*------------------------------------------------Project----------------------------------------------------------------------------------*/
/*------------------------------------------------Project----------------------------------------------------------------------------------*/


function hidePro(){
	document.getElementById('pro').style.display='none';
}

function showPro(){
	document.getElementById('pro').style.display='none';
}
/*----------------------------------------Comment--------------------------------------------------------------------------------------------*/
function comment(){
	alert("Comemnt");
	document.getElementById("commentTextbox").style.display='block';
}


function invest(){
	document.getElementById("invest").innerHTML="";
}

function investConfirm(){
	alert("Is confirm your invest project?")
}
/*-----------------------------------------------------------------------------------------------------------------------------------------------------------*/
function feedback(){
	document.getElementById('feed').innerHTML="<div class='border'><h3 class='feedbackheader'>Feedback</h3><h6 class='feedbacktext'>Please provide your feedback below:</h6><h6 class='feedbacktext'><i>How do your rate your overall experience?</i></h6><form action='feedbackform.jsp' method='post'><input type='radio' name='rate'/><label class='lable'>&nbsp;Bad</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='radio' name='rate'/><label class='lable'>&nbsp;Average</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='radio' name='rate'/><label class='lable'>&nbsp;Good </label><br /><table><tr><td><label for='comment' class='lable'>Comment&nbsp;:</label></td><td><input type='textarea' name='comment' placeholder='Your Comment' class='hint'/></td></tr><tr><td><label for='name' class='lable'>Your Name&nbsp;:</label></td><td><input type='text' name='name' placeholder='Enter your name' class='hint'/> </td></tr><tr><td><label for='email' class='lable'>Email&nbsp;:</label></td><td><input type='email' name='email' placeholder='sample@gamil.com' class='hint'/></td></tr></table><input type='submit' name='feedbackbtn' class='btn' value='SEND'/></form></div>";
}

function hide(){
	document.getElementById('feed').innerHTML="";
}
/*------------------------------------------------------------------------------------------------------------------------------------------------------------

function topdetailpo
function detailpost(){
	document.getElementById('detail').innerHTML="";
}st(){
	alert("Most Popular Detail INfo");
}
--------------------------------------------Filter By----------------------------------------------*/


/*----------------------------------------------------All Filter---------------------------------------------------------*/

var flag=true,flagC=true,flagA=true,flagP=true;

function Allfilter(){
	if(flag==true){
		showfilter();
		flag=false;
	}else{
		hidefilter();
		flag=true;
	}
}

function showfilter(){
	tempshow();
	document.getElementById('Allfilter').style.display="block";

}

function hidefilter(){
	temphide();
	document.getElementById('Allfilter').style.display="none";
}

function tempshow(){
	document.getElementById('changeall').innerHTML="Filter &or;";
}

function temphide(){
	document.getElementById('changeall').innerHTML="Filter &and;";
}
/*-------------------------------------------------------Ending All Filter------------------------------------------------------------*/




/*----------------------------------------------------All Filter Project---------------------------------------------------------*/

function AllfilterP(){
	if(flagP==true){
		showfilterP();
		flagP=false;
	}else{
		hidefilterP();
		flagP=true;
	}
}

function showfilterP(){
	tempshowP();
	document.getElementById('AllfilterP').style.display="block";

}

function hidefilterP(){
	temphideP();
	document.getElementById('AllfilterP').style.display="none";
}

function tempshowP(){
	document.getElementById('changeallP').innerHTML="Project Type &nabla;";
}

function temphideP(){
	document.getElementById('changeallP').innerHTML="Project Type &nabla;";
}
/*-------------------------------------------------------Ending All Filter Project------------------------------------------------------------*/





/*----------------------------------------------------All Filter city---------------------------------------------------------*/

function AllfilterC(){
	
	if(flagC==true){
		showfilterC();
		flagC=false;
	}else{
		hidefilterC();
		flagC=true;
	}
}

function showfilterC(){
	tempshowC();
	document.getElementById('AllfilterC').style.display="block";

}

function hidefilterC(){
	temphideC();
	document.getElementById('AllfilterC').style.display="none";
}

function tempshowC(){
	document.getElementById('changeallC').innerHTML="City &nabla;";
}

function temphideC(){
	document.getElementById('changeallC').innerHTML="City &nabla;";
}
/*-------------------------------------------------------Ending All Filter city------------------------------------------------------------*/





/*----------------------------------------------------All Filter amount---------------------------------------------------------*/
function AllfilterA(){
	if(flagA==true){
		showfilterA();
		flagA=false;
	}else{
		hidefilterA();
		flagA=true;
	}
}

function showfilterA(){
	tempshowA();
	document.getElementById('AllfilterA').style.display="block";

}

function hidefilterA(){
	temphideA();
	document.getElementById('AllfilterA').style.display="none";
}

function tempshowA(){
	document.getElementById('changeallA').innerHTML="Invest Amount &nabla;";
}

function temphideA(){
	document.getElementById('changeallA').innerHTML="Invest Amount &nabla;";
}
/*-------------------------------------------------------Ending All Filter amount------------------------------------------------------------*/
function showNav(){
	//alert("OK");
	document.getElementById('nav').style.border='1px solid white';
}

/*-----------------------------------------------Key feed----------------------------------------------*/



