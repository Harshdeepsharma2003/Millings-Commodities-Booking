<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Public</title>
</head>
<link rel="stylesheet" href="css/style.css">
<style>
  
      /* CSS reset */
   body {
  font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
  color: black;
  margin: 0px;
  padding: 0px;
  background-color: #f5f5f5; /*  background color */
}
   .left {
  display: inline-block;
  position: absolute;
  left: 45px;
  top: 20px;
  margin-right: 20px; /*  margin */
}

.right {
  position: absolute;
  right: 34px;
  top: 40px;
  margin-left: 20px; /* margin */
}

.mid {
  display: block;
  width: 75%;
  margin: 30px auto;
  margin-left: 280px;
  padding: 20px; /*  padding */
}
    .navbar {
  display: inline-block;
  color: blue;
  padding: 10px; /* added padding */
}

.navbar li {
  display: inline-block;
  font-size: 18px; /* increased font size */
}

.navbar li a {
  color: black;
  text-decoration: none;
  padding: 8px 12px; /* increased padding */
}

.navbar li a:hover,
.navbar li a:active {
  text-decoration: underline;
  color: rgb(176, 176, 176);
  background-color: #f0f0f0; /* added hover background color */
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
    
   
    
             
     /* Styles for the dropdown menu */
body2 {
    font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropbtn {
    
    color: black;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: grey;
}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: greenyellow;
}

.centered {
    font-size: 25px;
    color: black; /* Text color */
    font-weight: bold; /* Make the text bold */
    padding: 2px; /* Small padding for better visibility */
    border-radius: 3px; /* Rounded corners */
}

    .card {
  background-color: #f7f7f7;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
.card {
  background-color: #F7D2C4;
  padding: 20px;
  border: 1px solid #ddd;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  margin: 20px; /* added margin */
}

.card img {
  width: 100%;
  height: 150px;
  object-fit: cover;
  border-radius: 10px 10px 0 0;
}

.card .centered {
  text-align: center;
  padding: 20px;
}

.card a {
  text-decoration: none;
  color: #337ab7;
}

.card a:hover {
  color: #23527c;
  text-decoration: underline; /* added underline on hover */
}

  

    /* Consistent color scheme */
    :root {
      --primary-color: #3498db;
      --secondary-color: #f1c40f;
    }
    /* Consistent color scheme */
    :root {
      --primary-color: #3498db;
      --secondary-color: #f1c40f;
    }

    .btn {
      background-color: var(--primary-color);
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      cursor: pointer;
    }

    .btn:hover {
      background-color: var(--secondary-color);
    }

    /* Typography */
    body {
      font-family: 'Open Sans', sans-serif;
      font-size: 16px;
      line-height: 1.5;
    }

    h1, h2, h3 {
      font-weight: bold;
      color: var(--primary-color);
    }

    /* Icons and graphics */
    .icon {
      width: 20px;
      height: 20px;
      margin-right: 10px;
    }

    /* Mobile responsiveness */
    @media (max-width: 768px) {
      .hero {
        height: 50vh;
      }
      .btn {
        padding: 5px 10px;
      }
    

    
    
</style>

<body>
    <header class="header">
        <!-- Left box for logo -->
        <div class="left">
            <img src="Images/logo_1.png" alt="" style="width:150px;height:150px;">
            <div>Fresh flour, every hour!</div>
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
                <div class="dropdown">
                    <button class="dropbtn">My Profile</button>
                    <div class="dropdown-content">
                        <a href="delete.jsp">Delete Account</a>
                        <a href="update.jsp">Update Account</a>
                     <a href="changepasspublic.jsp">Change Password </a>
                  
                    </div>
                </div>
                <li><a href="1stpage.jsp" class="active">Home</a></li>
                <li><a href="shops.jsp" class="active">Shops</a></li>
                <li><a href="showfeedbacks.jsp">Feedbacks</a></li>
                <li><a href="aboutus.jsp">About us</a></li>
                <li><a href="tel:0731">Contact us</a></li>
            </ul>
        </div>
    </header>

    <!-- Add some spacing between the header and the cards -->
    <br><br><br>

    <table width="100%" cellpadding="10" cellspacing="10">
        <tr>
            <td>
                <div class="card">
                    <img src="Images/ordercom.png" width="150px" height="130px">
                    <div class="centered">
                        <a href="bookslot.jsp">Book Slot</a>
                    </div>
                </div>
            </td>
            <td>
                <div class="card">
                    <img src="Images/clock.jpg" width="130px" height="100px">
                    <div class="centered">
                        <a href="checkstatus.jsp">Check Status</a>
                    </div>
                </div>
            </td>
            <td>
                <div class="card">
                    <img src="Images/order.png" alt="Avatar" style="width:230px;height:160px">
                    <div class="centered">
                        <a href="shops.jsp">Order Commodities</a>
                    </div>
                </div>
            </td>
            <td>
                <div class="card">
                    <img src="Images/feedback.jpg" width="180px" height="180px">
                    <div class="centered">
                        <a href="feedback.jsp">Fill Feedback</a>
                    </div>
                </div>
            </td>
            <td>
                <div class="card">
                    <img src="Images/complaint.jpg" width="180px" height="180px">
                    <div class="centered">
                        <a href="addcomplaint.jsp">Report Complaint</a>
                    </div>
                </div>
            </td>
        </tr>
    </table>

    <!-- Add some spacing at the bottom -->
    <br><br><br>
</body>

</html>