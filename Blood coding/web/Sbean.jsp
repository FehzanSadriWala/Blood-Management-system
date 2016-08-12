<%@page import="java.sql.*"%>
<jsp:useBean id="sb" class="com.vbeans.SearchBean" ></jsp:useBean>
<jsp:setProperty property="*" name="sb"/>
<%
	String bg1=request.getParameter("bg");
        String loc1=request.getParameter("loc");
        Connection c=com.dbconnection.LoadConnection.getConnection();
        PreparedStatement ps = c.prepareStatement("select * from details where BloodGroup=? and Location=?");
        ps.setString(1,bg1);
        ps.setString(2,loc1);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("Search1.jsp?a="+bg1+"&b="+loc1+"");
        }
        else
        {
            response.sendRedirect("Search.jsp");
        }       
 %>