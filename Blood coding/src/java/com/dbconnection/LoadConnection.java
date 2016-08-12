package com.dbconnection;

import java.sql.*;
import java.io.*;

public class LoadConnection
{
    private static Connection  con=null;
    public static Connection getConnection()throws Exception
    {
    if(con==null)
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/blood","root","root");
    }
    return con;
    }
}