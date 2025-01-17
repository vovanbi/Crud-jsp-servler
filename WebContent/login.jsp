<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<title>LOGIN</title>

<!-- Meta-Tags -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="Existing Login Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">


<!-- Style --> <link rel="stylesheet" href="css/style1.css" type="text/css" media="all">

<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
<!-- //Fonts -->

</head>
<style>
@charset "ISO-8859-1";


	html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,dl,dt,dd,ol,nav ul,nav li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}
	article, aside, details, figcaption, figure,footer, header, hgroup, menu, nav, section {display: block;}
	ol,ul{list-style:none;padding:0;margin:0;}
	blockquote,q{quotes:none;}
	blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}
	table{border-collapse:collapse;border-spacing:0;}
	a{text-decoration:none;}
	.txt-rt{text-align:right;}
	.txt-lt{text-align:left;}
	.txt-center{text-align:center;}
	.float-rt{float:right;}
	.float-lt{float:left;}
	.clear{clear:both;}
	.pos-relative{position:relative;}
	.pos-absolute{position:absolute;}
	.vertical-base{vertical-align:baseline;}
	.vertical-top{vertical-align:top;}
	.underline{	padding-bottom:5px;	border-bottom:1px solid #eee;margin:0 0 20px 0;}
	nav.vertical ul li{display:block;}
	nav.horizontal ul li{display: inline-block;}
	img{max-width:100%;}

/*-- Reset Code --*/



/*-- Index-Page-Styling --*/

body {
	background: url("C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/b2.jpg");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: cover;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	color: #FFF;
	font-family: 'Quicksand', sans-serif;
	text-align: center;
}

body a {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
	text-decoration: none;
}

input[type="button"], input[type="submit"] {
	transition: 0.5s all;
	-webkit-transition: 0.5s all;
	-moz-transition: 0.5s all;
	-o-transition: 0.5s all;
	-ms-transition: 0.5s all;
}

h1 {
    font-size: 45px;
    font-weight: 300;
    color: #fff;
    letter-spacing: 7px;
    margin: 65px auto;
}

.w3layoutscontaineragileits {
    width: 30%;
    margin: 0 auto;
    background: rgba(0, 0, 0, 0.5);
    padding: 30px;
}

h2 {
    font-size: 35px;
    font-weight: 300;
    margin-bottom: 30px;
    color: #fff;
    text-transform: uppercase;
}

input[type="text"], input[type="password"], input[type="email"]{
	width: 84%;
	padding: 15px 10px 15px;
	font-size: 14px;
	background: transparent;
	border: 2px solid #537b35;
	outline: none;
	margin-bottom: 26px;
	color: #fff;
	font-family: 'Quicksand', sans-serif;
}
input[type="text"]{
	background: url("C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/user.png") no-repeat 382px 11px;
	background-size: 25px;
}
input[type="text"] {
	background: url("C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/user.png") no-repeat 382px 11px;
	background-size: 25px;
}

input[type="password"] {
	background: url("C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/password.png") no-repeat 382px 11px;
	background-size: 25px;
}

ul.agileinfotickwthree {
	list-style: none;
	display: inline-block;
	width: 100%;
	margin-bottom: 40px;
	text-align: left;
	padding-left: 10px;
}

ul.agileinfotickwthree li input[type="checkbox"] {
	display: none;
}

ul.agileinfotickwthree li input[type="checkbox"]+label {
	position: relative;
	padding-left: 50px;
	border: #F0F8FF;
	display: inline-block;
	font-size: 15px;
    color: #fff;
}
ul.agileinfotickwthree a {
    float: right;
    margin-right: 40px;
    color: #fff;
    font-size: 15px;
}
ul.agileinfotickwthree a:hover {
    color: #537b35;
}
ul.agileinfotickwthree li input[type="checkbox"]+label span:first-child {
	width: 15px;
	height: 15px;
	display: inline-block;
	border: 2px solid #537b35;
	position: absolute;
	top: -1px;
	left: 20px;
	bottom: 4px;
}

.content .w3layoutscontaineragileits .aitssendbuttonw3ls input{
	padding: 7px 25px;
	
	border: 2px solid #537b35;
	color: black;
    border-radius: 20px;
}
.content .w3layoutscontaineragileits .aitssendbuttonw3ls input:hover{
	color:537b35 ;
	font-size: 15px;
	transition: 0.4s;
	color:#537b35 ;
}


.content .w3layoutscontaineragileits .aitssendbuttonw3ls p a{
	color: blue;
}

/*--- Responsive Code ---*/
</style>
<body>
<div class="content">
<%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%>
	<h1>EXISTING LOGIN FORM</h1>

	<div class="w3layoutscontaineragileits">
	     <h2>Login </h2>
		      <form action="login" method="get">
            <input type="text" Name="username" placeholder="USERNAME" required="">
            <input type="password" Name="password" placeholder="PASSWORD" required="">
			        <ul class="agileinfotickwthree">
                &emsp;<input type="checkbox"><label>Remenber me</label>
              </ul>
              <div class="aitssendbuttonw3ls">
                <input type="submit" value="LOGIN">
                <p> To register new account <span>-></span> <a class="w3_play_icon1" href="Register.jsp"> Click Here</a></p>
                <div class="clear"></div>
              </div>
		</form>
	</div>
</div>
</body>
</html>