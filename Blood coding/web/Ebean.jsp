<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path=application.getRealPath("image");
    MultipartRequest m=new MultipartRequest(request,"C:/Users/rinu/Desktop/puranawala/Blood/web/image");
    String img=m.getOriginalFileName("img");
    String fname=m.getParameter("fname");
    String lname=m.getParameter("lname");
    String uname=m.getParameter("uname");
    String pass=m.getParameter("pass");
    String email=m.getParameter("email");
    String cno=m.getParameter("cno");
    String gen=m.getParameter("gen");

    Connection c=com.dbconnection.LoadConnection.getConnection();
    PreparedStatement ps=c.prepareStatement("update login set Pic='"+img+"',FirstName='"+fname+"',Lastname='"+lname+"',Password='"+pass+"',Email='"+email+"',ContactNo='"+cno+"',Gender='"+gen+"' where Username='"+uname+"'");
    int x = ps.executeUpdate();
    if(x>0)
    {
    final String to = email;
    String fname1 = "First Name:\t"+(fname);
    String lname1 = "Last Name:\t"+(lname);
    String name = "Username:\t"+(uname);
    String pass1 = "Password:\t"+(pass);
    String email1 = "Email Id:\t"+(email);
    String cno1 = "Contact No.:\t"+(cno);
    String gen1 = "Gender:\t"+(gen);
    String subject = "Edit Profile of\t"+name;
    String messg = fname1+"\n"+lname1+"\n"+name+"\n"+email1+"\n"+pass1+"\n"+cno1+"\n"+gen1+"\n";
            
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
    } 
    catch (MessagingException mex) 
    {
        mex.printStackTrace();
    }
    }
    else
    {
        response.sendRedirect("EditProfile.jsp");
    }
%>
