<%-- 
    Document   : forgotPasswordAction
    Created on : 06-Feb-2024, 5:43:41 pm
    Author     : Adarsh Tiwari
--%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String mobileNumber=request.getParameter("mobileNumber");
    String securityQuestion=request.getParameter("securityQuestion");
    String answer=request.getParameter("answer");
    String newpassword=request.getParameter("newpassword");
    
    int check = 0;
    try
    {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from users where email = '"+email+"' and mobileNumber = '"+mobileNumber+"' and securityQuestion = '"+securityQuestion+"' and answer = '"+answer+"'");
        while(rs.next())
        {
            check = 1;
            st.executeUpdate("update users set password = '"+newpassword+"' where email = '"+email+"'");
            response.sendRedirect("forgotPassword.jsp?msg=done");
        }
        if(check == 0)
            response.sendRedirect("forgotPassword.jsp?msg=notdone");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
%>
