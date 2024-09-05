<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<jsp:scriptlet>
    int COUNT1 = 0;
    int COUNT2 = 0;
    int COUNT3 = 0;
    int RESULT = 0;
</jsp:scriptlet>
<%
    try {
       
        String button = request.getParameter("btn");
        if (button != null && button.equals("CONFIRM")) {
            String contact1 = request.getParameter("contact");
            String password1 = request.getParameter("password");

            if (contact1.equals("") && password1.equals("")) {
                COUNT3 = 1;
            } else if (contact1.equals("")) {
                COUNT1 = 1;
            } else if (password1.equals("")) {
                COUNT2 = 1;
            } else {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "Harshdeep14");
                PreparedStatement st = con.prepareStatement("SELECT * FROM customer_account_mc WHERE contact = ? AND password = ?");

                st.setString(1, contact1);
                st.setString(2, password1);

                ResultSet rs = st.executeQuery();
                if (rs.next()) {
                   
           /*     // Create a session and set the contact attribute
                    HttpSession session1 = request.getSession();
                    session1.setAttribute("contact", contact1);*/
                    
                      Cookie ck=new Cookie("contact",contact1);
            ck.setMaxAge(10000);
            response.addCookie(ck);
            

   // Redirect to public.jsp
                    response.sendRedirect("public.jsp");
                } else {
                    RESULT = 1;
                }
                rs.close();
                st.close();
                con.close();
            }
        }
    } catch (Exception ex) {
        ex.printStackTrace();
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
</head>
<link rel="stylesheet" href="css/style.css">
<style>
  
      /* CSS reset */
    body {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        color:black;
        margin: 0px;
        padding: 0px;
        background: url('Images/login.jpg');
        background-size:50% ;
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
       <img src="Images/logo_1.png" alt=""style="width:120px;height:120px;">
            <div>Fresh flour,every hour!</div>
        </div>
       
       
    

        <!-- Mid box for navbar -->
        <div class="mid">
            <ul class="navbar">
                <li><a href="1stpage.jsp" class="active">Home</a></li>
              <li><a href="shops.jsp" class="active">Shops</a></li>
                  <li><a href="shops.jsp">Order Commodities</a></li>
                 <li><a href="1stpagepublicsigninpage.jsp">Book Slot</a></li>
                   
      </ul>
        </div>

         <div class="right">
     <a href="shopkeeper.jsp"><img src="Images/usertype_profile.png" alt="SHOPKEEPER"style="width:80px;height:80px;">
         <br>SHOPKEEPER</a></div>
        
    
  </form>
      
    </header>
    <div class="container">
        <h2>SIGN IN</h2>
       <form  action="" method="post">
           
            <div class="form-group">
                <input type="text" name="contact" placeholder="Enter your contact">
            </div>
           
           
            <div class="form-group">
                <input type="text" name="password" placeholder="enter your password ">
            </div>
        
   <%
            if (COUNT1 == 1) {
        %>
        <p style="color: red;">Please enter your contact number!</p>
        <%
            } else if (COUNT2 == 1) {
        %>
        <p style="color: red;">Please enter your password!</p>
        <%
            } else if (COUNT3 == 1) {
        %>
        <p style="color: red;">Please enter both contact number and password!</p>
        <%
            } else if (RESULT == 1) {
        %>
        <p style="color: red;">Invalid contact number or password!</p>
        <%
            }
        %>
        <input type="submit" name="btn" value="CONFIRM" class="btn" >
        <input type="reset" value="CLEAR" class="btn">        
        <br>
        <br>
<br>

        <a href="forgotpasscustomer.jsp">Forgot password?</a>
       
             
  </div>
            
       
        </form>
    </div>
    
    
    
</body>

</html>