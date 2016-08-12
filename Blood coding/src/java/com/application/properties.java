package com.application;

import java.util.*;
import java.io.*;

public class properties
{
    public static void loadProperties(String s)
    {

       Properties p = new Properties();
        FileInputStream fi = null;
        try
        {
           fi = new FileInputStream(s);
           p.load(fi);

          Enumeration names = p.propertyNames();
          while( names.hasMoreElements() )
          {
            String key = (String)names.nextElement();
            System.setProperty( key,p.getProperty(key));
          }
	}catch(Exception e){System.out.println(e+"kkkkkkk"); }
    }
}