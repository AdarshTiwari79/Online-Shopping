<%-- 
    Document   : cancelOrderAction
    Created on : 09-Feb-2024, 6:24:13 pm
    Author     : Adarsh Tiwari
--%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String email=request.getParameter("email");
    String status="Cancel";
    try
    {
        Connection con=ConnectionProvider.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("update cart set status='"+status+"' where product_id='"+id+"' and email='"+email+"' and address is not NUll");
        response.sendRedirect("ordersReceived.jsp?msg=cancel");
    }
    catch(Exception e)
    {
        response.sendRedirect("ordersReceived.jsp?msg=wrong");
        System.out.println(e);
    }
%>
