package com.vbeans;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SeekerBean
{
    private String bg;
    private String loc;
    private int cop;
    private int qun;
    private int tc;
    private String pname;
    private String gen;
    private String rcnm;
    private String rcno;
    private String email;
    private String rdt;

    public String getBg() {
        return bg;
    }

    public void setBg(String bg) {
        this.bg = bg;
    }

    public String getLoc() {
        return loc;
    }

    public void setLoc(String loc) {
        this.loc = loc;
    }

    public int getCop() {
        return cop;
    }

    public void setCop(int cop) {
        this.cop = cop;
    }

    public int getQun() {
        return qun;
    }

    public void setQun(int qun) {
        this.qun = qun;
    }

    public int getTc() {
        return tc;
    }

    public void setTc(int tc) {
        this.tc = tc;
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public String getGen() {
        return gen;
    }

    public void setGen(String gen) {
        this.gen = gen;
    }

    public String getRcnm() {
        return rcnm;
    }

    public void setRcnm(String rcnm) {
        this.rcnm = rcnm;
    }

    public String getRcno() {
        return rcno;
    }

    public void setRcno(String rcno) {
        this.rcno = rcno;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getRdt() {
        return rdt;
    }

    public void setRdt(String rdt) {
        this.rdt = rdt;
    }
    
    public String validate()
    {
        try
        {
            Connection c=com.dbconnection.LoadConnection.getConnection();
            PreparedStatement ps = c.prepareStatement("insert into accidental values(?,?,?,?,?,?,?,?,?,?,?)");
            ps.setString(1, bg);
            ps.setString(2, loc);
            ps.setInt(3, cop);
            ps.setInt(4, qun);
            ps.setInt(5, tc);
            ps.setString(6, pname);
            ps.setString(7, gen);
            ps.setString(8, rcnm);
            ps.setString(9, rcno);
            ps.setString(10, email);
            ps.setString(11, rdt);
            
            int x=ps.executeUpdate();
            if(x>0)
                return "success";
            else
                return "seeker1";
	}
	catch(Exception e)
	{ 
            return "error";
	}
    }
}
