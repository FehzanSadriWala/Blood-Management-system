package com.vbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ChangePassBean
{
    private String uname;
    private String npass;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getNpass() {
        return npass;
    }

    public void setNpass(String npass) {
        this.npass = npass;
    }
    
    public String validate()
    {
        try
        {
            Connection c=com.dbconnection.LoadConnection.getConnection();
            PreparedStatement ps = c.prepareStatement("update login set Password=? where Username=?");
            ps.setString(1, npass);
            ps.setString(2, uname);
            int x=ps.executeUpdate();
            if(x>0)
                return "success";
            else
                return "ChangePassword";
	}
	catch(Exception e)
	{ 
            return "error";
	}
    }
}
