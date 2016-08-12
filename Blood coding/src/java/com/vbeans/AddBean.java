package com.vbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AddBean
{
    private String oname;
    private String email;
    private String cno;

    public String getOname() {
        return oname;
    }

    public void setOname(String oname) {
        this.oname = oname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCno() {
        return cno;
    }

    public void setCno(String cno) {
        this.cno = cno;
    }
 
    public String validate()
    {
	try
	{
            Connection c=com.dbconnection.LoadConnection.getConnection();
            PreparedStatement ps = c.prepareStatement("insert into addorg values(?,?,?)");
            ps.setString(1, oname);
            ps.setString(2, email);
            ps.setString(3, cno);
            int x=ps.executeUpdate();
            if(x>0)
		return "success";
            else
		return "add";
	}
	catch(Exception e)
	{
            return "error";
	}
    }
}
