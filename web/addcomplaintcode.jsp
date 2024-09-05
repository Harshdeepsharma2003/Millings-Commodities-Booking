<%@page import="java.sql.Connection "%>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement"%>
                        
                
<%
 
   String complaintdate=request.getParameter("complaintdate");
   String complaintdescription=request.getParameter("complaintdescription");
  
 // position button 
 // id auto generated??
           
   Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
       
       PreparedStatement st=con.prepareStatement("insert into complaints_mc values(?,?)");
    
       st.setString(1,complaintdate);
            st.setString(2,complaintdescription);
          
         st.executeUpdate();
      con.close();
      
response.sendRedirect("public.jsp");

%>
      