package model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChangePin extends HttpServlet {
      @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	  PreparedStatement ps=null;
    	  HttpSession se = null;
    		 Statement st = null;
    	     ResultSet rs = null;
    	     Connection con=null;
    		String status="";
    		String Q1="SELECT * FROM CUSTOMER WHERE EMAIL=?";
    		String Q2="UPDATE CUSTOMER SET PWD=? WHERE EMAIL=?";
    		try
    		{
    			
    			String em=(String)se.getAttribute("email");
    			ps=con.prepareStatement(Q1);
    			ps.setString(1, em);
    			rs=ps.executeQuery();
    			if(rs.next()==true)
    			{
    				String pd=rs.getString("pwd");
    				if(pd.equals(req.getParameter("pwd")))
    				{
    					status="existed";
    				}
    			else
    			{
    				ps=con.prepareStatement(Q2);
    				ps.setString(1, req.getParameter("pwd"));
    				ps.setString(2, em);
    				int up=ps.executeUpdate();
    				if(up>0)
    				{
    					status="success";
    				}
    				else
    				{
    					status="failure";
    				}
    			}
    		}
    		}
    		catch(Exception e)
    		{
    			e.printStackTrace();
    		}
    		
    }
}
