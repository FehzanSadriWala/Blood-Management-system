<jsp:useBean id="ct" class="com.vbeans.ContactBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="ct"/>
<%
	String str=ct.validate();
	if(str.equals("success"))
	{
		//session.setAttribute("uname",ct.getUname());
		response.sendRedirect("Success.jsp");
	}
	if(str.equals("contact"))
	{
		response.sendRedirect("Index.jsp");
	}
	if(str.equals("error"))
	{
		response.sendRedirect("Error.jsp");
	}
 %>
