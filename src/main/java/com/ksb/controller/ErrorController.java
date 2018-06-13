package com.ksb.controller;

import java.io.IOException;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ksb.model.SimpleModel;

@Controller
public class ErrorController {
	@SuppressWarnings("restriction")
	@RequestMapping("/login")
	public ModelAndView getDisp(HttpServletRequest request,HttpServletResponse response) throws ScriptException, ServletException, IOException{
		ModelAndView view=new ModelAndView();
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
			ScriptEngine engine = new ScriptEngineManager().getEngineByName("nashorn");
		    engine.eval("alert(\" invalid username or password\")");
		}
		return view;
	}
}
