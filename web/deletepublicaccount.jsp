<%@page import="java.sql.Connection "%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet,java.util.ArrayList"%> 

<% 
   String contact=request.getParameter("contact");
   
    Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
 
  PreparedStatement st=con.prepareStatement("delete from  customer_account_mc where contact=?");
  
st.setString(1,contact);
st.executeUpdate();
response.sendRedirect("viewusers.jsp");

%>