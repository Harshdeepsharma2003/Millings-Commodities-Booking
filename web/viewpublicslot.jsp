
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Public Slot</title>
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
   
             body1 {
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
}

.slider {
    width: 100%;
    max-width: 100%;
    overflow: hidden;
    position: relative;
    border: 2px solid #ddd;
    border-radius: 10px;
}

.slides {
    display: flex;
    width: 300%;
    animation: slide 10s infinite;
}

.slide {
    width: 100%;
    flex: 1;
}

.slide img {
    width: 100%;
    display: block;
    border-radius: 10px;
}

@keyframes slide {
    0% { transform: translateX(0%); }
    33.33% { transform: translateX(-100%); }
    66.66% { transform: translateX(-200%); }
    100% { transform: translateX(0%); }
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

        
          <br>
    <br>
    <br>
    <br>
    <br>
 <br>
 <br>
        
        
<%@page import="java.sql.Connection "%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%>                        
                
<%
    Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
 
  PreparedStatement st=con.prepareStatement("select * from publicbookslot");
  
  ResultSet rs=st.executeQuery();
  
  ArrayList list1=new ArrayList();
  ArrayList list2=new ArrayList();
  ArrayList list3=new ArrayList();
  ArrayList list4=new ArrayList();
  ArrayList list5=new ArrayList();
  ArrayList list6=new ArrayList();
  
  while(rs.next())
  {
    list1.add(rs.getString(1));
    list2.add(rs.getString(2));
    list3.add(rs.getString(3));
    list4.add(rs.getString(4));
    list5.add(rs.getString(5));
    list6.add(rs.getString(6));
    
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
            <td>Name</td>
             <td>Contact</td>
             <td>Date</td>
             <td>Current Time</td>
             <td>Cereal Type</td>
             <td>Address</td>
            
     </tr>
     <%
for (int i=0;i<list1.size();i++)         
{
%>
         
<tr align="center" bgcolor="white">

<td><%=list1.get(i)%></td>
        <td><%=list2.get(i)%></td>
       <td><%=list3.get(i)%></td>
     <td><%=list4.get(i)%></td>
     <td><%=list5.get(i)%></td>
     <td><%=list6.get(i)%></td>
     
      </tr>
        <%}
        %>
  
    </table>
        <br>
      <br>
       <br> 
     
   
    <!--    
        <body1>
            
              <div class="slider">
        <div class="slides">
            <div class="slide"><img src="Images/123.jpg" ></div>
            <div class="slide"><img src="Images/cer.jpg" ></div>
            <div class="slide"><img src="Images/images.jpg" ></div>
        </div>
    </div>
            
        </body1>-->
    
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Photo Gallery</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
}

.gallery {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 10px;
    padding: 20px;
}

.gallery-item {
    position: relative;
    overflow: hidden;
}

.gallery-item img {
    width: 100%;
    height: auto;
    display: block;
    transition: transform 0.3s ease;
}

.gallery-item:hover img {
    transform: scale(1.1);
}
</style>
  
</body>
</html>

   
  
