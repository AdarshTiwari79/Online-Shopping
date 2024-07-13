<%-- 
    Document   : logout
    Created on : 07-Feb-2024, 4:28:07 pm
    Author     : Adarsh Tiwari
--%>

<%
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
