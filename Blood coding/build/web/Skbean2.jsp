<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:useBean id="nac" class="com.vbeans.Seeker2Bean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="nac"/>
<%
	String str=nac.validate();
	if(str.equals("success"))
	{
		session.setAttribute("name",nac.getRcnm());
                
    //Creating a result for getting status that messsage is delivered or not!
    //String result;
    // Get recipient's email-ID, message & subject-line from index.html page
   // final String to = "manishakhandelwal2611@gmail.com";
    final String to = (String)request.getParameter("email");
    String bg = "Blood Group:\t"+(String)request.getParameter("bg");
    String loc = "Location:\t"+(String)request.getParameter("loc");
    String cop = "Cost Per Unit:\t"+(String)request.getParameter("cop");
    String qun = "Quantity:\t"+(String)request.getParameter("qun");
    String tc = "Total Cost:\t"+(String)request.getParameter("tc");
    String pname = "Patient Name:\t"+(String)request.getParameter("pname");
    String gen = "Gender:\t"+(String)request.getParameter("gen");
    String rcnm = "Receiver's Name:\t"+(String)request.getParameter("rcnm");
    String rcno = "Receiver's Contact No.:\t"+(String)request.getParameter("rcno");
    String rdt = "Receiving Date:\t"+(String)request.getParameter("rdt");
    String rpnm = "Replacer Name:\t"+(String)request.getParameter("rpnm");
    String rpdt = "Replacement Date:\t"+(String)request.getParameter("rpdt");
    String subject = "Your Details";
    String messg = bg+"\n"+loc+"\n"+cop+"\n"+qun+"\n"+tc+"\n"+pname+"\n"+gen+"\n"+rcnm+"\n"+rcno+"\n"+rdt+"\n"+rpnm+"\n"+rpdt+"\n\n\n\n"+
            "Blood Seekers are required to carry their identification proof to the hospital at the time of blood dispatch."+"\n"+
            "The receipient must ensure that the blood batches are received on the same date on which online registration has been done."
            +"\n"+ "Team RaktPlus";
            
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
        response.sendRedirect("Seeker22.jsp");
        //result = "Your mail sent successfully....";
    } 
    catch (MessagingException mex) 
    {
        mex.printStackTrace();
        //result = "Error: unable to send mail....";
    }
	}
	if(str.equals("Seeker2"))
	{
		response.sendRedirect("Seeker2.jsp");
	}
	if(str.equals("error"))
	{
		response.sendRedirect("Error.jsp");
	}
 %>