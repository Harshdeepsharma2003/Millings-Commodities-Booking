<%@page import="java.io.IOException"%>
<%@page import="java.sql.Connection "%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
                        
                
<%
  String button = request.getParameter("btn");
            int RESULT=0;
            if(button!=null && button.equalsIgnoreCase("submit"))
            {   

   String id=request.getParameter("id");         
  String name1=request.getParameter("name");
   String contact1=request.getParameter("contact");
   String date1=request.getParameter("date");
   String currenttime1=request.getParameter("currenttime");
   String cerealtype1=request.getParameter("cerealtype");
   String address1=request.getParameter("address");
  
  if(name1.equals("")||name1.equals("")||contact1.equals("")||date1.equals("")||currenttime1.equals("")
            ||cerealtype1.equals("")||address1.equals(""))
            {  RESULT = 1; }
            else{
            Class.forName("com.mysql.jdbc.Driver");

       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
       PreparedStatement st=con.prepareStatement("insert into publicbookslot values(?,?,?,?,?,?,?)");
    
       st.setString(1,id);
       st.setString(1,name1);
            st.setString(2,contact1);
            st.setString(3,date1);
            st.setString(4,currenttime1);
         st.setString(5,cerealtype1);
         st.setString(6,address1);
          st.executeUpdate();
      con.close();
     
response.sendRedirect("public.jsp");
}
}

%>
      

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Public Book Slot</title>
</head>
<link rel="stylesheet" href="css/style.css">
<style>
    /* CSS reset */
    body {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        color:black;
        margin: 0px;
        padding: 0px;
        background: url('Images/clock.jpeg');
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
          <img src="Images/logo_1.png" alt=""style="width:150px;height:150px;">
            <div>Fresh flour,every hour!</div>
        </div>
       
       
        <div class="right">
    <a href="1stpagepublicsigninpage.jsp">
        <img src="Images/logout12.png" alt="" style="width:80px;height:80px;">
        <div style="font-size: 16px; margin-top: 10px; text-align: center;">Logout</div>
    </a>
</div>

    

        <!-- Mid box for navbar -->
        <div class="mid">
            <ul class="navbar">
                <li><a href="public.jsp" class="active">Home</a></li>
                  <li><a href="shops.jsp">Order Commodities</a></li>
                 
                  <li><a href="shops.jsp">Check Status</a></li>
            </ul>
        </div>

    </header>
    <div class="container">
        <h2>Public Book Slot</h2>
       <form  action="" method="post">
              
         <%@page import="javax.servlet.http.HttpSession"%>

<%/*
    // Retrieve the session
    HttpSession session1 = request.getSession(false); // false means don't create if it doesn't exist
    String name1 = "";
    String contact1 = "";
    String address1 = "";
    if (session1 != null) {
        // Retrieve the contact attribute
        name1 = (String) session1.getAttribute("name");
       contact1 = (String) session1.getAttribute("contact");
       address1 = (String) session1.getAttribute("address");
        
        if (name1==null&&contact1 == null&&address1==null) {
        name1="";   
        contact1 = "";
        address1="";
    }
    }*/
%>
  <%@page import="java.sql.PreparedStatement"%>
<%@page import ="javax.servlet.*"%>
<%@page import=" javax.servlet.http.*"%>
<%@page import=" java.io.*"%>
<%/*
public class RetrieveCookieServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies = request.getCookies(); // cookies array 
        String contact = "";

        if (cookies != null) {
            for (Cookie c : cookies) { // for each loop
                if ("contact".equals(c.getName())) {
                    contact = c.getValue();
                    break; // No need to continue once we've found the cookie
                }
            }
        }

        // Setting the contact attribute to be used in the JSP
        request.setAttribute("contact", contact);
        
        // Forwarding the request to the JSP page
        RequestDispatcher dispatcher = request.getRequestDispatcher("bookslot.jsp");
        dispatcher.forward(request, response);
    }
}*/
 %>

        
   <div class="form-group">
                <input type="text" name="name" placeholder="Enter your full name"
                       >
            </div>

            <div class="form-group">
                <input type="text" name="contact" placeholder="Enter contact">
            </div>
        
        
        <div class="form-group">
         <input type="date" name="date" placeholder="date" class="form-group"
              >
        </div> 
        
         <div class="form-group">
                <input type="text" name="currenttime" placeholder="Enter your current time">
         </div>
       
 <div class="form-group">
  <select name="cerealtype" style="width:240px;height:30px">
    <option>wheat</option>
    <option>milet(bajra)</option>
    <option>sorghum(jowar)</option>
    <option>dal(besan)</option>
  </select>
 </div>
        <br>
       
        <div class="form-group">
            <textarea placeholder="enter your address address " name="address" style="width:240px;height:50px"></textarea>
               </div>
         
        <button class="btn" name="btn" value="submit">SUBMIT</button>
             <button class="btn" type="reset">Clear</button>
  </div>
        </form>
    
        
    
    
    
</body>

</html>