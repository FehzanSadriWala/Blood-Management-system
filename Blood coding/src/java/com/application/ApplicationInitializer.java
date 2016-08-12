
package com.application;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;
import java.sql.*;

public class ApplicationInitializer extends HttpServlet
{	
    public void init(javax.servlet.ServletConfig sc)throws javax.servlet.ServletException
    {
        String path=sc.getServletContext().getRealPath("/WEB-INF/application.properties");
        properties.loadProperties(path);            
    }
}