<%@page import="java.sql.Connection,java.sql.PreparedStatement,java.sql.DriverManager,java.sql.ResultSet"%>
<%String button=request.getParameter("btn");
    int RESULT=0;
    if(button!=null && button.equalsIgnoreCase("Delete"))
    {
    String contact1=request.getParameter("contact");
    if(contact1.equals("")){
    RESULT=1;
    }
    else{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","Harshdeep14");
    PreparedStatement st = con.prepareStatement("select * from customer_account_mc where contact=?");
    st.setString(1,contact1);
    ResultSet rs=st.executeQuery();
    if(rs.next()){
        PreparedStatement st1= con.prepareStatement("delete from customer_account_mc where contact=?");
        st1.setString(1,contact1);
        st1.executeUpdate();
        response.sendRedirect("public.jsp");
    }
    else{
        RESULT=2;
    }
    con.close();
    }
    }
%>