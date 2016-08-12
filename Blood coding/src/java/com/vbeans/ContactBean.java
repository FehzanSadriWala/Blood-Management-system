package com.vbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ContactBean
{
    private String name;
    private String email;
    private String sub;
    private String msg;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSub() {
        return sub;
    }

    public void setSub(String sub) {
        this.sub = sub;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
        
    public String validate()
    {
        try
        {
            Connection c=com.dbconnection.LoadConnection.getConnection();
            PreparedStatement ps = c.prepareStatement("insert into contact values(?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, sub);
            ps.setString(4, msg);
            int x=ps.executeUpdate();
            if(x>0)
                return "success";
            else
                return "contact";
	}
	catch(Exception e)
	{ 
            return "error";
	}
    }
}
