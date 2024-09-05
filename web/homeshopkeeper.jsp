<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopkeeper Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<style>
    
body {
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    color: black;
    margin: 0;
    padding: 0;
    background-color: lightsalmon;
    background-size: cover;
    background-position: center;
}

.header {
    background-color: #f7f7f7;
    padding: 20px;
    border-bottom: 1px solid #ddd;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.left {
    display: inline-block;
    position: absolute;
    left: 45px;
    top: 20px;
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
    padding: 8px;
}

.navbar li a:hover,
.navbar li a:active {
    text-decoration: underline;
    color: rgb(176, 176, 176);
}

.btn {
    font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
    margin: 0 9px;
    color: aliceblue;
    background-color: rgb(0, 0, 0);
    padding: 4px 6px;
    border: 3px solid grey;
    border-radius: 5px;
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

.card {
    background-color: #f7f7f7;
    padding: 20px;
    border: 1px solid #ddd;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    margin: 20px;
}

.card img {
    max-width: 100px;
    height: 100px;
    margin-bottom: 10px;
    object-fit: contain;
}

.card .centered {
    padding: 10px 0;
    font-size: 18px;
    color: #333;
}

.card a {
    text-decoration: none;
    color: #337ab7;
}

.card a:hover {
    color: #23527c;
    text-decoration: underline;
}

/* Responsive design */
@media (max-width: 768px) {
    .card {
        margin: 10px auto;
        width: 80%;
    }
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
    
</style>

<body>
    <header class="header">
        <!-- Left box for logo -->
        <div class="left">
            <a href="authority.jsp">  
                <img src="Images/logo_1.png" alt="Logo" style="width:150px;height:150px;">
            </a>
        </div>
        
        <!-- Mid box for navbar -->
        
             <div class="mid">
            <ul class="navbar">
                <div class="dropdown">
                    <button class="dropbtn">My Profile</button>
                    <div class="dropdown-content">
                        <a href="deleteshopkeeperaccount.jsp">Delete Account</a>
                        <a href="updateshopkeeperaccount.jsp">Update Account</a>
                         <a href="changepassshopkeeper.jsp">Change Password</a>
                   
                    </div>
                </div>
                <li><a href="1stpage.jsp" class="active">Home</a></li>
                <li><a href="shops.jsp" class="active">Shops</a></li>
                <li><a href="aboutus.jsp">About us</a></li>
                <li><a href="tel:0731">Contact us</a></li>
            </ul>
        </div>

        <!-- Right class for buttons -->
        <div class="right">
            <a href="shopkeeper.jsp">
                <img src="Images/logout12.png" alt="Logout" style="width:80px;height:80px;">
            </a>
        </div>
    </header>
    
    <!-- Add some spacing between the header and the cards -->
    <br><br><br>

    <!-- Main content -->
    <section class="main-content">
        <table width="100%" class="tabtheme">
            <tr>
                <td>
                    <div class="card">
                        <img src="Images/ordercom.png" alt="View Public Slot">
                        <div class="centered">
                            <a href="viewpublicslot.jsp">View Public Slot</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="card">
                        <img src="Images/update.jpg" alt="Update Slot Status">
                        <div class="centered">
                            <a href="shopkeeperslot.jsp">Update Slot Status</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="card">
                        <img src="Images/feedback.jpg" alt="View Public Feedback">
                        <div class="centered">
                            <a href="showfeedbacks.jsp">View Public Feedback</a>
                        </div>
                    </div>
                </td>
                <td>
                    <div class="card">
                        <img src="Images/complaint.jpg" alt="View Public Complaints">
                        <div class="centered">
                            <a href="showcomplaints.jsp">View Public Complaints</a>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </section>
</body>
</html>

