
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Feedbacks</title>
</head>
<link rel="stylesheet" href="css/style.css">
<style>
    /* CSS reset */
    body {
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        color:black;
        margin: 0px;
        padding: 0px;
     background-color: #f5f5f5; /* added background color */
 background: url('Images/fb.jpeg');
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
    
     .right1 {
        position: absolute;
        right: 34px;
        top: 80px;
       
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
        color: red;
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
       
        

        <!-- Mid box for navbar -->
        <div class="mid">
            <ul class="navbar">
                 <li><a href="shops.jsp" class="active">Shops</a></li>
                  <li><a href="shops.jsp">Order Commodities</a></li>
                 <li><a href="1stpagepublicsigninpage.jsp">Book Slot</a></li>
                 <li><a href="tel:919301887856">Contact us</a></li>
                   <li><a href="aboutus.jsp">About us</a></li>
            </ul>
        </div>

<%@page import="java.sql.Connection "%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%>                        
                
<%
    Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
 
  PreparedStatement st=con.prepareStatement("select * from feedbacks_mc");
  
  ResultSet rs=st.executeQuery();
  
  ArrayList list1=new ArrayList();
  ArrayList list2=new ArrayList();
  
  
  while(rs.next())
  {
    list1.add(rs.getString(1));
    list2.add(rs.getString(2));
    }
    
    %>
     <br>
    <br>
   <br>
    <br>
    <br>
   
    
    <table width="100%">
        <style>
table, th, td {
  border:1px solid black;
}
</style>
        <tr align="center" >
            <td>Feedback Description</td>
             <td>Contact Number</td>
             
     </tr>
     <%
for (int i=0;i<list1.size();i++)         
{
%>
         
<tr align="center" bgcolor="white">

<td><%=list1.get(i)%></td>
        <td><%=list2.get(i)%></td>
     
      </tr>
        <%}
        %>
        
        
    </table>
        <br>
      <br>
       <br> 
     