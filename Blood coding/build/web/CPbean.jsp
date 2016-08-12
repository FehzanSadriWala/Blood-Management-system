<jsp:useBean id="cp" class="com.vbeans.ChangePassBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="cp"/>
<%
	String str=cp.validate();
	if(str.equals("success"))
	{
		session.setAttribute("uname",cp.getUname());
		response.sendRedirect("Login.jsp");
	}
	if(str.equals("changepassword"))
	{
		response.sendRedirect("ChangePassword.jsp");
	}
	if(str.equals("error"))
	{
		response.sendRedirect("Error.jsp");
	}
 %>
