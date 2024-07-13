<%-- 
    Document   : create_tables
    Created on : 06-Feb-2024, 4:19:59 pm
    Author     : Adarsh Tiwari
--%>

<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
    try
    {
        Connection con = ConnectionProvider.getCon();
        Statement st = con.createStatement();
        String q1 = "create table users(name varchar(100), email varchar(100)primary key, mobileNumber bigint, securityQuestion varchar(200),answer varchar(200), password varchar(20),address varchar(300), city varchar(200), state varchar(200),country varchar(200));";
        String q2 = "create table product(id int, name varchar(400), category varchar(200), price int, active varchar(10));";
        String q3 = "create table cart(email varchar(100), product_id int, quantity int, price int, total int, address varchar(500), city varchar(200), state varchar(300), country varchar(200), mobileNumber bigint, orderDate varchar(200), deliveryDate varchar(300), paymentMethod varchar(100), transactionId varchar(200), status varchar(20));"; 
        String q4 = "create table message(id int AUTO_INCREMENT, email varchar(100), subject varchar(200), body varchar(1000),PRIMARY KEY(id))";
        System.out.println(q1);
        System.out.println(q2);
        System.out.println(q3);
        System.out.println(q4);
        st.execute(q1);
        st.execute(q2);
        st.execute(q3);
        st.execute(q4);
        System.out.print("Table Created");
        con.close();
    }
    catch(Exception e)
    {
        System.out.print(e);
    }
%>
