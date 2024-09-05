<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.ResultSet"%>
<%
    String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equalsIgnoreCase("delete"))
    {
    String contact1=request.getParameter("contact");
    if(contact1.equals("")){
    RESULT=1;
    }
    else{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
    PreparedStatement st = con.prepareStatement("select * from shopkeeper_account_mc where contact=?");
    st.setString(1,contact1);
    ResultSet rs=st.executeQuery();
    if(rs.next()){
        PreparedStatement st1= con.prepareStatement("delete from shopkeeper_account_mc where contact=?");
        st1.setString(1,contact1);
        st1.executeUpdate();
        response.sendRedirect("homeshopkeeper.jsp");
    }
    else{
        RESULT=2;
    }
    con.close();
    }
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>delete</title>
</head>
<link rel="stylesheet" href="css/style.css">

<style>
  
      /* CSS reset */
    body {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        color:black;
        margin: 0px;
        padding: 0px;
        background: url('Images/splash1.jpg');
        background-size:100% ;
        background-position: absolute ;
        /* adding img in bkg */
    }

    .left {
        display: inline-block;
        /* border: 3px solid red; */
        position: absolute;
        left: 45px;
        top: 20px;
    }
    .left div {
        line-height: 8px;
        font-size: 23px;
        text-align: center;
    }

    .left img {
        width: 80px;
        padding: 7px;
        filter: invert(100%);
    }

    .mid {
        display: block;
        width: 75%;
        margin: 30px auto;
       margin-left: 280px;
         
    }

    .right {
        position: absolute;
        right: 34px;
        top: 40px;
       
        /* border: 3px solid rgb(68, 38, 222); */
    }

    .navbar {
        
        display: inline-block;
       color: blue;
     
           
    }

    .navbar li {
        display: inline-block;
        font-size: 20px;
    }

    .navbar li a {
        color: black;
        text-decoration: none;
        padding: 8px 8px;
    }

    .navbar li a:hover,
    .navbar li a:active {
        text-decoration: underline;
        color: rgb(176, 176, 176);
    }

    .btn {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        margin: 0px 9px;
        color: aliceblue;
        background-color: rgb(0, 0, 0);
        padding: 4px 6px;
        border: 3px solid grey;
        border-radius: 5px;
        cursor: pointer;
    }
    
       .btn1 {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        margin: 0px 9px;
        /*background-color: grey;*/
        padding: 8px 8px;
        border: 3px solid black;
        border-radius: 10px;
        cursor: pointer;
    }


    .btn:hover {
        background-color: greenyellow;
    }

    .container {
       
        border: 3px solid black;
        margin: 100px 500px;
        padding: 28px 32px;
        width: 25%;
        border-radius: 28px;
        color: black;
        text-align: center;
    }

    .form-group input {
        text-align: center;
        display: block;
        width: 214px;
        padding: 6px;
        border: 3px solid rgb(6, 6, 6);
        margin: 5px auto;
        font-size: 15px;
        border-radius: 9px;
    }

    .container button {
        display: block;
        width: 230px;
        margin: 8px auto;
        padding: 6px;
        border-radius: 8px;
        font-size: 14px;
    }
    
         /* Style for Search Form */
.search-form {
  display: flex;
  flex-direction: column;
}

/* Style for Search Input */
.search-form input {
  padding: 12px;
  margin: 8px;
  border: none;
  border-radius: 5px;
  box-shadow: 0 1px 2px rgba(0, 0, 0, 0.1);
   position: absolute;
        right: 145px;
}

/* Style for Submit Button */
.search-form button {
  padding: 10px 20px;
  background-color: #3498db;
  border: none;
  border-radius: 5px;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
   position: absolute;
        right: 55px;
        top: 100px;
}

/* Style for Submit Button Hover */
.search-form button:hover {
  background-color: #2980b9;

             }
    
    
    
    
    
</style>

<body>
    <header class="header">
        <!-- Left box for logo -->
        <div class="left">
            <a href="authority.jsp">   <img src="Images/logo_1.png" alt=""style="width:150px;height:150px;"></a>
            <div>Fresh flour,every hour!</div>
        </div>
       
           <div class="right">
               <a href="shopkeeper.jsp">
                      <img src="Images/logout12.png" alt=""style="width:80px;height:80px;">
                      </a>
            </div>

        <!-- Mid box for navbar -->
        <div class="mid">
            <ul class="navbar">
                <li><a href="homeshopkeeper.jsp" class="active">Home</a></li>
                <li><a href="tel:0731">Contact us</a></li>
            </ul>
        </div>

         
   
 </header>
    <br>
    <br><!-- <br> -->
    <br><!-- comment -->
    <br>
    <br>
 <br>
 <br>
 
  <div class="container">
        <h2>Delete</h2>
     
              <form action="" method="post">
       
            
            <div class="form-group">
                <input type="text" name="contact" placeholder="Confirm contact Number" required="">
            </div>
        
     
         
            
             <button class="btn" name="btn" value="delete" >DELETE
       </button>
        
         <button class="btn" type="reset">CLEAR</button>
             
             
  </div>
        </form>
    
</body>

</html>
       