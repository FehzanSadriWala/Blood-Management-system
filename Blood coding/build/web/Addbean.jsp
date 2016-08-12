<jsp:useBean id="ad" class="com.vbeans.AddBean" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="ad"/>
<%
	String str=ad.validate();
	if(str.equals("success"))
	{
		//session.setAttribute("uname",rg.getUname());
		response.sendRedirect("Successa.jsp?a=addo");
	}
	if(str.equals("add"))
	{
		response.sendRedirect("AddBloodBank.jsp");
	}
	if(str.equals("error"))
	{
		response.sendRedirect("Error.jsp");
	}
 %>
