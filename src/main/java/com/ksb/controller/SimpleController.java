package com.ksb.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ksb.model.SimpleModel;
import com.sun.xml.rpc.processor.modeler.j2ee.xml.string;
import com.sun.xml.ws.runtime.dev.Session;

import javax.script.*;
/**
 * Servlet implementation class SimpleController
 */
@WebServlet("/SimpleController")
public class SimpleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SimpleController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String loginErr="incorrect username or password";
		RequestDispatcher rd1=request.getRequestDispatcher("index.jsp");
		rd1.forward(request, response);
		String usr=request.getParameter("userName");
		String pass=request.getParameter("password");
		SimpleModel sm=new SimpleModel();
		boolean b=sm.checkUser(usr, pass);
		HttpSession session=request.getSession();
		session.setAttribute("user", usr);
		session.setAttribute("valid", b);
		if (b==true) {
			RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
					rd.forward(request, response);
		}else {
			out.println("<script>");  
			out.println("alert('deadbeef');");  
			out.println("</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
