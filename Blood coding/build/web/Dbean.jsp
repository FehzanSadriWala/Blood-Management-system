<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*"%>
<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path=application.getRealPath("image");
    MultipartRequest m=new MultipartRequest(request,"C:/Users/jay/Desktop/puranawala/Blood/web/image");
    String name=m.getParameter("name");
    String email=m.getParameter("email");
    String age = m.getParameter("age");
    String wt = m.getParameter("wt");
    String add = m.getParameter("add");
    String cno = m.getParameter("cno");
    String gen = m.getParameter("gen");
    String bg = m.getParameter("bg");
    String qun = m.getParameter("qun");
    String loc = m.getParameter("loc");
    String ddt = m.getParameter("ddt");
    String edt = m.getParameter("edt");
    String img=m.getOriginalFileName("img");

    Connection c=com.dbconnection.LoadConnection.getConnection();
    Statement st=c.createStatement();
    int x = st.executeUpdate("insert into donor values('"+name+"','"+email+"','"+age+"','"+wt+"','"+add+"','"+cno+"','"+gen+"','"+bg+"','"+qun+"','"+loc+"','"+ddt+"','"+edt+"','"+img+"')");
    if(x>0)
    {
    //Creating a result for getting status that messsage is delivered or not!
    // Get recipient's email-ID, message & subject-line from index.html page
   // final String to = "manishakhandelwal2611@gmail.com";
    final String to = email;
    String name1 = "Name:\t"+(name);
    String age1 = "Age:\t"+(age);
    String wt1 = "Weight:\t"+(wt);
    String add1 = "Address:\t"+(add);
    String cno1 = "Contact No.\t"+(cno);
    String gen1 = "Gender:\t"+(gen);
    String bg1 = "Blood Group:\t"+(bg);
    String qun1 = "Quantity:\t"+(qun);
    String loc1 = "Location:\t"+(loc);
    String ddt1 = "Donation Date:\t"+(ddt);
    String edt1 = "Expiry Date:\t"+(edt);
    String subject = "Your Details";
    String messg = name1+"\n"+age1+"\n"+wt1+"\n"+add1+"\n"+cno1+"\n"+gen1+"\n"+bg1+"\n"+qun1+"\n"+loc1+"\n"+ddt1+"\n"+edt1+"\n"+
            "Blood Donors are required to carry their identification proof as well as a Non Objection Certificate approved by a "
            + "Certified Authority to the hospital at the time of blood dispatch."+"\n"+ "Team RaktPlus";
    //Sender's email ID and password needs to be mentioned
    final String from = "raktplus@gmail.com";
    final String pass = "raktplus123";
 
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
            return new PasswordAuthentication(from, pass);
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
        response.sendRedirect("DonorSuccess.jsp");
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
        response.sendRedirect("Donor.jsp");
    }
%>