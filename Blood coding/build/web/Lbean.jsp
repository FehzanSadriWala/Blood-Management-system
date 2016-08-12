<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<jsp:useBean id="lg" class="com.vbeans.LoginBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="lg"/>
<%
	String str=lg.validate();
	if(str.equals("success"))
	{
            session.setAttribute("uname",lg.getUname());
            String uname=request.getParameter("uname");
            Connection c=com.dbconnection.LoadConnection.getConnection();
            String s = "select * from login where Username='"+uname+"'";
            Statement ss = c.createStatement();
            ResultSet rs=ss.executeQuery(s);
            while(rs.next())
            {
                session.setAttribute("p",rs.getString("Pic"));
                session.setAttribute("f",rs.getString("FirstName"));
                session.setAttribute("l",rs.getString("LastName"));
                session.setAttribute("u",rs.getString("Username"));
                session.setAttribute("ps",rs.getString("Password"));
                session.setAttribute("e",rs.getString("Email"));
                session.setAttribute("c",rs.getString("ContactNo"));
                session.setAttribute("g",rs.getString("Gender"));
            }
		response.sendRedirect("AfterLogin.jsp");
	}
        if(str.equals("admin"))
        {
            session.setAttribute("uname",lg.getUname());
            response.sendRedirect("Admin.jsp");
        }
	if(str.equals("login"))
	{
		response.sendRedirect("Index.jsp");
	}
	if(str.equals("error"))
	{
		response.sendRedirect("Error.jsp");
	}
 %>
