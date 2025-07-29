package com.digirecycle.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.digirecycle.dao.collectionLogDao;
import com.digirecycle.dao.userdao;
import com.digirecycle.getset.getsetUser;
import com.digirecycle.model.collectionLogs;
import com.digirecycle.model.user;

@Controller
public class User {

	ApplicationContext context = new ClassPathXmlApplicationContext("config.xml");
	userdao ud = context.getBean("userdao", userdao.class);
	collectionLogDao collectionLogDao = context.getBean("collection",collectionLogDao.class);

	@RequestMapping(value = "/saveuser", method = RequestMethod.POST)
	public String saveUser(HttpServletRequest req) {
		user u = new user();
		u.setName(req.getParameter("name"));
		u.setEmail(req.getParameter("email"));
		u.setContact(req.getParameter("contact"));
		System.out.println(req.getParameter("address"));
		u.setAddress(req.getParameter("address"));
		u.setPassword(req.getParameter("password"));

		ud.insert(u);
		return "redirect:/userlogin.jsp";
	}

	// User Login (GET)
	@RequestMapping(value = "/userlogin", method = RequestMethod.GET)
	public String showUserLoginPage() {
		return "userlogin"; // userlogin.jsp
	}

	// User Login (POST)
	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String processUserLogin(HttpServletRequest req) {

		String contact = req.getParameter("contact");
		
		String email = req.getParameter("email");

		String password = req.getParameter("password");

		user u = ud.getUserByContact(contact);
		if (u != null) {
			// login success
			HttpSession session = req.getSession();
			session.setAttribute("userEmail", email);
			getsetUser.setUserEmail(email);
			session.setAttribute("userName", u.getName());
			return "userdashboard"; // Redirect to user dashboard JSP
		} else {
			// login fail
			req.setAttribute("error", "Invalid email or password");
			return "userlogin";
		}
	}
	
	
	
	
	@RequestMapping("/submitcollectionform")
	public String showCollectionForm() {
	    return "submitcollectionform"; // JSP to submit plastic
	}

	@RequestMapping("/checkstatus")
	public String checkStatus(HttpServletRequest req) {
	    String email = (String) req.getSession().getAttribute("userEmail");
	    List<collectionLogs> logs = collectionLogDao.getByUserEmail(email);
	    req.setAttribute("collections", logs);
	    return "checkstatus"; // JSP to display status
	}
	
	
	
	@RequestMapping("/viewusers")
	public String viewAllUsers(HttpServletRequest req) {
	    List<user> list = ud.getAll(); // assuming `ud` is your userdao instance
	    req.setAttribute("users", list);

	    for (user u : list) {
	        System.out.println(u);
	    }
	    return "viewusers"; // refers to viewusers.jsp
	}

}
