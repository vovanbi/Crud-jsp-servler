<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
       
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Users management</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.13.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- Third party plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <style>
        html {
    font-family: sans-serif;
    line-height: 1.15;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
  }
 
  body {
    margin: 0;
    font-family: "Merriweather", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: left;
    /* background-color: #fff; */
  }
  a{
      text-decoration:none;
      color:#FFE4B5;
  }
  .container1{
     height: 600px;
     background-image: url("C:/Users/Admin/eclipse-workspace/himhim/WebContent/assets/img/bg-masthead.jpg");
     color:white;
     opacity: 0.7;
     top: 0;

}
.container1 .tren{
    display: flex;
    margin-top: 10px;
    
   
}
.container1 .tren .trenphai{
  margin-top: 20px;
  color: white;
  opacity: 1.0;
  
}

  .container1 .trenphai ul{
      display: flex;
      padding: 10px 20px;
      margin-left: 550px;
      /* overflow: hidden; */
      /* position: fixed; */
     
  }
  .container1 .trenphai ul li{
      padding: 10px 20px;
      display: flex;
     
  }
  .container1 .tieudenho{
      text-align: center;
      justify-content: center;
      padding-top: 300px;
      opacity: 1,0;
      color: #FFE4B5;
      font-size: 30px;
  }
  .container1 .tieudenho .btn{
      background-color: red;
      padding: 10px 5px;
      border-radius: 20px;
      font-size: 20px;
      color: white;
  }
  .container1 .tieudenho .btn:hover{
      background-color:#FFE4B5 ;
      color: red;
  }
  header{
      height: 200px;
  }
  .chinh{
      height: 500px;
      background-color: #ffefd5;
  }

  .content{
    width: 800px;
    padding: 20px;
    position: absolute;
    top: 150%;
    left: 50%;
    transform: translate(-50%,-50%);
    /* background: #34495e; */
    background: #FFFFFF;
    text-align: center;
    opacity: 0.8;

  }
  
.content:focus{
    opacity: 1;
}
.content .tieude{
  padding: auto;
  text-align: center;
}
.content .tieude h3{

  text-transform: uppercase;
  font-weight: 700;
  font-size: 35px;
  margin-top: 70px;
  color: rgb(179, 81, 81);
  font-family: 'Times New Roman', Times, serif;


}
.content .tieude h3:hover{

color:rosybrown;
}
.content .tren {
 
  float: left;
  /* padding: auto 30px; */
  color:darkgoldenrod;
  padding-bottom: 80px;
  
}
.content .tren a{
  text-decoration: none;
  color:darkgoldenrod;
}

.content .tren .trentrai{
 float: left;
 
}
.content .tren .trentrai a:hover{
  font-size: 18px;
  color: black;
  
 }
.content .tren .trenphai{
  padding: auto 50px;
  padding-left: 530px;
}
.content .tren .trenphai input :hover{
  font-size: 18px;
}

.content .tren .trenphai a input{
  background-color: rgb(238, 243, 223);
  text-align: center;
  font-size: 15px;
  padding: 20px auto;
  border: 2px solid #3498db;
  color:darkgoldenrod;
  border-radius: 24px;
  transition: 0.25s;
}
.content .tren .trenphai a input:hover{
  border-color: #2ecc71;
  color: black;
  transition: 0.3s;

}
.content .add {
    margin-bottom: 10px;
    float: right;
   
}
.content .add a{
   text-decoration: none;
   color: white;
}
.content .add a input{
font-size: 15px;  
border: 1px solid darkgoldenrod;
background-color: rgb(127, 155, 34); 
color: white;
border-radius: 20%;
}
.content .add :hover{
  border-color: #2ecc71;

  transition: 0.3s;
  

  color: sienna;
}
.content .table-data table{
    width: 100%;
    /* padding-bottom: 20px; */
    
}
.content .table-data table,td,th{
  border-collapse: collapse;
  border: 2px solid rgb(218, 141, 19);
   text-align: center; 

  
}
.content .table-data table tr td .between-small{
 display: flex;
 padding: auto 20px;
 padding-left: 20px;

}
.content .table-data table tr td .between-small .dk{
  float: right;
  padding-left: 70px;

}
.content .table-data table tr td .between-small .dk input{
   font-size: 15px;
   border-radius: 20%;
   border: 1px solid darkgoldenrod;
   background-color:rgb(22, 109, 41) ;
   color: white;
   padding-left: 10px;
}
.content .table-data table tr td .between-small .dk input:hover{
  font-size: 14px;
  color: sienna;
}
.content .icon{
  padding-top:20px;
  float: left;
  display: block;
  border-radius: 50%;
  /* color: rgb(225, 222, 243); */
  padding-left: 20px;

}
.content .icon a{
  text-decoration: none;
  padding: auto 10px;
  color:darkgoldenrod;
  padding-left: 5px;
}
.content .icon a:hover{
font-size: 17px;
color: black;
}
a{
    text-decoration: none;
}
.page-setion{
    text-align: center;
}
.contact {
    text-align: center;
    height: 400px;
}
.contact .tren{
padding-top: 20px;
}
.contact .giua{
padding-top: 10px;
}
.contact .duoi{
padding-top: 20px;
display: flex;
text-align: center;
}
.contact .duoi .duoiphai{
   margin-left: 400px;
}
.contact .duoi .duoitrai{
    margin-left: 300px;
}
 footer{
     top:20;
    margin-bottom: 0;
    padding:10px 10px;
    background-color:gray;
    text-align:center;
}
        </style>
    </head>
    <body>
        <!-- Navigation-->
    
            <div class="container1">
                <div class="tren"> 
                <div class="trenphai">
                    <ul >
                        <li><a class="nav-link js-scroll-trigger" href="#about">Home</a></li>
                        <li><a class="nav-link js-scroll-trigger" href="#contact">Information</a></li>
                      <!--  <li><a class="nav-link js-scroll-trigger" href="#portfolio">Portfolio</a></li> --> 
                        <li><a class="nav-link js-scroll-trigger" href="#contact">Contact</a></li>
                        <li><a class="nav-link js-scroll-trigger" href="logout">Logout</a></li>
                    </ul>
                </div>
                
            </div>
            <div class="tieudenho">
                <p class="text">Welcome to the users management website</p>
                <a class="btn" href="#about">Find Out More</a>
            </div>
            </div>
            <div class="chinh">
            <div class="content" id="about">
                        <div class="tieude">  <h3><a href="="<%=request.getContextPath()%>/list">List of</a></h3></div>
     
        <div class="add">
          <a href="<%=request.getContextPath()%>/new"><input type="button" value="Add new" ></a> 
        </div>
       
        <div class="table-data">
            <table>
                <tr>
                  <th>ID</th>
                  <th>FIRSTNAME</th>
                  <th>LASTNAME</th>
                  <th>USERNAME</th>
                  <th>PASSWORD</th>
                  <th>ACTION</th>
                </tr>
            <c:forEach var="user" items="${listUser}">

                <tr>
                    <td><c:out value="${user.id}" /></td>
                    <td><c:out value="${user.firstname}" /></td>
                    <td><c:out value="${user.lastname}" /></td>
                    <td><c:out value="${user.username}" /></td>
                    <td><c:out value="${user.password}" /></td>
               <td>
                <div class="between-small">                 
                   <div class="dk">
                        <a href="<%=request.getContextPath()%>/edit?id=<c:out value='${user.id}' />">Edit</a>
                        <a href="<%=request.getContextPath()%>/delete?id=<c:out value='${user.id}' />">Delete</a>  
                    </div>
                </div>
                                           
               </td>
                </tr>
            </c:forEach>
              </table>
                       </div>
                      </div>
                    </div>
             

        <div class="contact" id="contact">
            <div class="tren"><h1>Let's Get In Touch!</h1></div>
            <div class="giua"><h3>Give us a call or send us an email and we will get back to you as soon as possible!</h3></div>
            <div class="duoi">
                <div class="duoitrai"><i class="fas fa-phone fa-3x mb-3 text-muted"></i>
                    <div>+84 978885502</div></div>
                <div class="duoiphai">
                    <i class="fas fa-envelope fa-3x mb-3 text-muted"></i>
                        
                        <a class="d-block" href="https://mail.google.com/mail/u/0/#inbox">vbii.ued@gmail.com</a>
                </div>
            </div>
            
        </div>
        
       <footer class="bg">
                <p>UED © 2020 - HIM HIM- VOVANBI</p>
            </footer>
    </body>
</html>
