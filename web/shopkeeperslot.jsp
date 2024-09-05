<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager"%>
<%
    
   String button = request.getParameter("btn");
            int RESULT=0;
            if(button!=null && button.equalsIgnoreCase("submit"))
            {  

  String name1=request.getParameter("name");
   String contact1=request.getParameter("contact");
   String address1=request.getParameter("address");
   String date1=request.getParameter("date");
    String time1=request.getParameter("time");
    String weight1=request.getParameter("weight");
    String capital1=request.getParameter("capital");
   String expectedtime1=request.getParameter("expectedtime");
  String cerealName1=request.getParameter("cerealName");
   String status1=request.getParameter("status");
 
    if(name1.equals("")||contact1.equals("")||address1.equals("")||date1.equals("")||time1.equals("")||weight1.equals("")||capital1.equals("")||expectedtime1.equals("") ||cerealName1.equals("")|| status1.equals(""))
            {  RESULT = 1; }
            else{
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
       PreparedStatement st=con.prepareStatement("insert into book_slot values(?,?,?,?,?,?,?,?,?,?)");
    
       st.setString(1,name1);
            st.setString(2,contact1);
            st.setString(3,address1);
            st.setString(4,date1);
         st.setString(5,time1);
         st.setString(6,weight1);
         st.setString(7,capital1);
         st.setString(8,expectedtime1);
         st.setString(9,cerealName1);
         st.setString(10,status1);
        
         
         st.executeUpdate();
      con.close();
      
response.sendRedirect("homeshopkeeper.jsp");
 }
           }
%>
      



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shop Keeper Slot</title>
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
                      <img src="Images/logout.png" alt=""style="width:80px;height:80px;">
                      </a>
            </div>

        <!-- Mid box for navbar -->
        <div class="mid">
            <ul class="navbar">
                <li><a href="homeshopkeeper.jsp" class="active">Home</a></li>
                 <li><a href="aboutus.jsp">About us</a></li>
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
            <td> Customer Name</td>
             <td> Customer Contact</td>
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
     
  
     <div class="container">
        <h2>Slot </h2>
         <form  action="" method="post">
       <div class="form-group">
           <input type="text" name="name" placeholder="customer name" required="">
            </div>
        
         <div class="form-group">
                <input type="text" name="contact" placeholder="Customer Contact "required="">
            </div>
        
         <div class="form-group">
        <textarea placeholder="Enter your current address" name="address" style="width:230px;height:50px"required=""></textarea>
         </div>
        
        
       
        
         <div class="form-group">
         <input type="date" name="date" placeholder="date" class="form-group"required="">
        </div> 
        
         <div class="form-group">
                <input type="text" name="time" placeholder="Time"required="">
            </div>
        
        
            <div class="form-group">
                <input type="text" name="weight" placeholder="Enter cereal weight"required="">
            </div>
           
            <div class="form-group">
                <input type="text" name="capital" placeholder="capital for cereal "required="">
            </div>
        
         <div class="form-group">
                <input type="text" name="expectedtime" placeholder="expected time "required="">
            </div>
        
         <div class="form-group">
                <input type="text" name="cerealName" placeholder="Cereal Name "required="">
            </div>
        
        <div class="form-group">
        <select  name="status" style="width:240px;height:30px">
                    <option>Pending</option>
                    <option>In progress</option>
                     <option>Completed</option>
                </select>
        </div>
        <br>
      
      
        <button class="btn" name="btn" value="submit">Submit</button>
        <button class="btn" type="reset" value="Clear" >Clear</button>
        
         
  </div>
            
       
        </form>
    
    
    
    
</body>

</html>

   
  
