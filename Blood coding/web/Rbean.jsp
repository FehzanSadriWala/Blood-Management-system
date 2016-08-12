<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path=application.getRealPath("image");
    MultipartRequest m=new MultipartRequest(request,"C:/Users/jay/Desktop/puranawala/Blood/web/image");
    String fname=m.getParameter("fname");
    String lname=m.getParameter("lname");
    String name=m.getParameter("uname");
    String pass=m.getParameter("pass");
    String email=m.getParameter("email");
    String cno=m.getParameter("cno");
    String gen=m.getParameter("gen");
    String img=m.getOriginalFileName("img");

    Connection c=com.dbconnection.LoadConnection.getConnection();
    Statement st=c.createStatement();
    int x = st.executeUpdate("insert into login values('"+img+"','"+fname+"','"+lname+"','"+name+"','"+pass+"','"+email+"','"+cno+"','"+gen+"')");
    if(x>0)
    {
    //Creating a result for getting status that messsage is delivered or not!
    // Get recipient's email-ID, message & subject-line from index.html page
   // final String to = "manishakhandelwal2611@gmail.com";
    final String to = email;
    String fname1 = "First Name:\t"+(fname);
    String lname1 = "Last Name:\t"+(lname);
    String name1 = "Username:\t"+(name);
    String pass1 = "Password:\t"+(pass);
    String gen1 = "Gender:\t"+(gen);
    String subject = "Welcome\t"+name+"to RaktPlus";
    String messg = fname1+"\n"+lname1+"\n"+pass1+"\n"+gen1+"\n"+"Team RaktPlus";
            
    //Sender's email ID and password needs to be mentioned
    final String from = "raktplus@gmail.com";
    final String password = "raktplus123";
 
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    // Creating Properties object
    Properties props = new Properties();
 
    // Defining properties
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.port", "465");
 
    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() 
    {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, password);
        }
    });
 
    try
    {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject(subject);
        // Now set the actual message
        message.setText(messg);
        // Send message
        Transport.send(message);
        response.sendRedirect("Login.jsp");
        //result = "Your mail sent successfully....";
    } 
    catch (MessagingException mex) 
    {
        mex.printStackTrace();
        //result = "Error: unable to send mail....";
    }
    }
    else
    {
        response.sendRedirect("Register.jsp");
    }
%>
