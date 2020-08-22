<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
    @charset "ISO-8859-1";
body{
    margin: 0;
    padding: 0;
    font-family: sans-serif;
    background-image: url('C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/b2.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center top;
  }
  .box{
    width: 550px;
    padding: 40px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    background: #191919;
    text-align: center;
    transition: 0.4s;
    opacity: 0.5;
  }
  .box  h1{
    color: white;
    text-transform: uppercase;
    font-weight: 500;
  }
  .box  label{
      color: yellowgreen;
      font-size: 15px;
  }
  .box  input[type = "text"],.box  input[type = "password"]{
    border:0;
    background: none;
    /* display: block; */
    margin: 10px auto;
    text-align: center;
    border: 2px solid #3498db;
    padding: 10px 15px;
    width: 200px;
    outline: none;
    color: white;
    border-radius: 24px;
    transition: 0.25s;
  }
  .box  input[type = "text"]:focus,.box input[type = "password"]:focus{
    width: 280px;
    border-color: #2ecc71;
  }
  .box .dangki{
  
    text-align: center;
    padding-left: 0px;
    margin: auto 10px;
    
  }
  .box .dangki input[type = "submit"],.box  .dangki input[type = "button"]{
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
  .box  .dangki input[type = "submit"]:hover,.box  .dangki input[type = "button"]:hover{
    border-color: #2ecc71;
    color: white;
    transition: 0.3s;
    font-size: 21px;
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
function resetForm() {
    document.getElementById("reset").reset();
}
</script>
</head>
<body>
    <form class="box" action="Registerservlet" method="post" name="frm"  onSubmit="return validateForm()"id="reset">
        <h1>Register</h1>
       <!-- <label>First Name  </label> -->
       <input type="text" name="firstname" value="" placeholder="First Name"><br>
       <!-- <label> Last Name </label> -->
       <input type="text" name="lastname" value=""placeholder="Last Name"><br>
     
       <!-- <label>UserName  </label> -->
       <input type="text" name="username" value="" placeholder="UserName"><br>
       <!-- <label>Password </label>&nbsp; -->
       <input type="password" name="password" value="" placeholder="Password"><br>
       <div class="dangki">
           <input type="submit" value="Register">
           <input type="button" value="Reset" onclick="resetForm()">
       </div>
       </form>
</body>
</html>