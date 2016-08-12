package com.vbeans;

import java.sql.*;

public  class LoginBean
{
    private String uname;
    private String pass;

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String validate()
    {
     try
        {
            Connection c=com.dbconnection.LoadConnection.getConnection();
            PreparedStatement ps = c.prepareStatement("select * from login where Username=? and Password=?");
            ps.setString(1,uname);
            ps.setString(2,pass);
            ResultSet rs=ps.executeQuery();
            if(rs.next())
            {
                if(uname!=null && "admin".equals(uname.intern()) && "admin@1".equals(pass.intern()))
                    return "admin";
                else
                    return "success";   
            }
            else
            {
                return "login";
            }
        }
        catch(Exception e)
        { 
            return "error"; 
        }		
    }
}