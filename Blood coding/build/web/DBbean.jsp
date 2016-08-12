<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    String loc=request.getParameter("loc");
    String bg=request.getParameter("bg");
    String qun=request.getParameter("qun");
    Connection c=com.dbconnection.LoadConnection.getConnection();
    String s = "select * from details where Location='"+loc+"' and BloodGroup='"+bg+"'";
    Statement ss = c.createStatement();
    ResultSet rs=ss.executeQuery(s);
    while(rs.next())
    {
        String s0=rs.getString(2);
        int x=Integer.parseInt(s0);
        int y=Integer.parseInt(qun);
        int z=x-y;
        String q1=Integer.toString(z);
        PreparedStatement ps=c.prepareStatement("update details set quantity='"+q1+"' where BloodGroup='"+bg+"' and Location='"+loc+"'");
        int x1 = ps.executeUpdate();
        if(x1>0)
        {
            response.sendRedirect("Successa.jsp?a=del");
        }
        else
        {
            response.sendRedirect("DeleteBloodUnit.jsp");
        }
    }
 %>