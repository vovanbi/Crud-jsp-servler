<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NEW OR EDIT</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/css/NewEdit.css">
   
   <style>
   body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background-image: url('C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/bg-mobile-fallback.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center top;
  }
  .box{
    width: 500px;
    padding: 40px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background: #FFFFF0;

    text-align: center;
    transition: 0.4s;
    opacity: 0.79;
  }
  .box .box1 h1{
    color: black;
    text-transform: uppercase;
    font-weight: 500;
 
  }
  .box .box1 .tieude {
      text-align: center;
      height: 30px;
      padding-bottom: 70px;
  }
  .box .box1 h1 {
    text-decoration: none;
    color:#f44336;
  }
  .box .box1 h1:hover{
   
    color:red;
    font-size: 30px;
    transition: 0.2s;
  }
  .box .box1 label{
      color: yellowgreen;
      font-size: 15px;
  }
 
  .box .box1 input[type = "text"]{
    border:0;
    background: none;
    /* display: block; */
    margin: 10px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 200px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s;
  }

  .box .box1 input[type = "password"]{
    border:0;
    background: none;
    margin: 10px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 200px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s;
  }
  .box .box1 input[type = "email"]{
    border:0;
    background: none;
    margin: 10px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 10px;
    width: 200px;
    outline: none;
    color: black;
    border-radius: 24px;
    transition: 0.25s;
  }
  .box .box1 input[type = "text"]:focus,.box .box1 input[type = "email"]:focus,.box .box1 input[type = "password"]:focus{
    width: 280px;
    border-color: #2ecc71;
  }
  
  .box .box1 .form-check-label
  {
      text-align: center;
      color:#3498db ;
    
  }

  /* .box .submit{
      text-align: center;
      font-size: 20px;
      padding: 10px auto;
  } */
  .box .box1 .dangki{
  
    text-align: center;
    padding-left: 40px;
    margin: auto 10px;
    
  }
  .box .box1 .dangki input[type = "submit"],.box .box1 .dangki input[type = "button"]{
   background-color: rgb(127, 155, 34);
   text-align: center;
   font-size: 20px;
   padding: 20px auto;
   border: 2px solid #3498db;
   color:black;
   border-radius: 24px;
   transition: 0.25s;
   padding-left: 10px;
   
  }
  .box .box1 .dangki input[type = "submit"]:hover,.box .box1 .dangki input[type = "button"]:hover{
    border-color: #2ecc71;
    color: white;
    transition: 0.3s;
    font-size: 21px;
  }
  .box .tren {
   
    float: left;
    /* padding: auto 30px; */
    color: black;
    padding-bottom: 30px;
    
  }
  .box .tren a{
    text-decoration: none;
    color: black;
  }
 
  .box .tren .trentrai{
   float: left;
   
  }
  .box .tren .trentrai:hover{
    font-size: 18px;
    
   }
   .box .tren .trenphai div{
     float: left;
   }
  .box .tren .trenphai{
    padding: auto 50px;
    padding-left: 250px;
  }
  .box .tren .trenphai input :hover{
 
  }
 
  .box .tren .trenphai a input{
    background-color: rgb(127, 155, 34);
    text-align: center;
    font-size: 15px;
    padding: 20px auto;
    border: 2px solid #3498db;
    color:black;
    border-radius: 24px;
    transition: 0.25s;
  }
  .box .tren .trenphai a input:hover{
    border-color: #2ecc71;
    color: white;
    transition: 0.3s;
   
  }
  .box .icon{
    float: left;
    display: block;
    border-radius: 50%;
 
    padding-left: 20px;
  
  }
  .box .icon a{
    text-decoration: none;
    padding: auto 10px;
    color: black;
    padding-left: 5px;
  }
  .box .icon a:hover{
  font-size: 17px;
  }

   
   </style>
     <script>
function validateForm()
{
    if(document.frm.firstname.value=="")
    {
      alert("First name is  empty..");
      document.frm.firstname.focus();
      return false;
    }
    else if(document.frm.lastname.value=="") 
    {
      alert("Last name is  empty..");
      document.frm.lastname.focus();
      return false;
    }
    else if(document.frm.username.value=="")
    {
      alert("Username is  empty..");
      document.frm.username.focus();
      return false;
    }
    else if(document.frm.password.value=="")
    {
      alert("Password  is empty..");
      document.frm.password.focus();
      return false;
    }
}
</script>
</head>
<body>
    <div class="box">
        <div class="tren">
            <div class="trentrai"><a href=""><i class="fa fa-envelope-o" aria-hidden="true"></i></a></div>
            <div class="trenphai">First Name & Last Name  <a href="logout"><input type="button" value="Log out"></a> </div>
        </div>
			<c:if test="${user != null}">
			<form action="update" method="post" class="box1">
			</c:if>
			<c:if test="${user == null}">
			<form action="insert" method="post" class="box1" name="frm"  onSubmit="return validateForm()">
			</c:if>
        
           <div class="tieude">
			<h1>
			<c:if test="${user != null}">
			Edit User
			</c:if>
			<c:if test="${user == null}">
			Add New User
			</c:if>
			</h1>
       		 </div>
			<c:if test="${user != null}">
			<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
			</c:if>
		  <label>FirstName  </label>
		  <input type="text" name="firstname"  value="<c:out value='${user.firstname}'/>" /><br>
		  <label>LastName  </label>
		  <input type="text" name="lastname"  value="<c:out value='${user.lastname}' />" /><br>
		  <label>UserName   </label>
		  <input type="text" name="username" value="<c:out value='${user.username}'  />"/><br>
		  <label>PassWord  </label>
		  <input type="password" name="password" value="<c:out value='${user.password}'/>" /><br>
			<div class="dangki">
			    <input type="submit" value="Save">
			<!--  <input type="button" value="Reset"> -->   
			</div>
          </form>
        <div class="icon">
           <a href=""><i class="fa fa-facebook-square" aria-hidden="true"></i></a> 
           <a href=""> <i class="fa fa-twitter-square" aria-hidden="true"></i></a>
           <a href=""><i class="fa fa-chrome" aria-hidden="true"></i></a>
        </div>
    </div>
</body>
</html>
